<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 25/08/2019
 * Time: 01:21
 */

namespace App;
use App\Controllers\APIController;
use App\Core\BaseController;
use App\Core\Request;
use App\Controllers\DefaultController;
use App\Helpers\AuthHelper;

class  Core {

    private $specialType;

    function __construct(){}

    //return the route English name (AR ----> EN)
    public static function mapingRoute($route, $rlang = null){

        global $routes_map;

        $key = array_search(urldecode($route), $routes_map);
        if($key) {
            if($rlang){
                $_SESSION['lang'] = 'ar';
            }
            return $key;
        }
        else {
            if($rlang && $route != '/'){
                $_SESSION['lang'] = 'en';
            }
            elseif($route == '/'){
                $_SESSION['lang'] = 'ar';
            }
            return $route;
        }
    }

    //return the Arabic route name (EN -> AR)
    public static function mapingRouteReverse($routes_name){
        global $routes_map;

        if($routes_name == ""){
            return "";
        }

        return $routes_map[$routes_name];
    }


    //used to check if routes exists !
    private function routeExists(Request $request, $routes){
        $route = self::mapingRoute($request->getRoute(), true);
        $bool = array_key_exists($route, $routes);
        if($bool){
            return true;
        }


        return false;
    }

    //handle routes
    public function HandleRequest($request){


        //to handle the language switcher
        // $this->handleLanguage($request);


        $routes_list = $this->getRoutesList();

        if(!$this->routeExists($request, $routes_list)){
            $controller = new DefaultController();
            return $controller->NotFound();
        }

        $route  = self::mapingRoute($request->getRoute());

        $route_info = $routes_list[$route];
        $className = 'App\\Controllers\\' . $route_info['controller'];

        $controller = new $className;

        // handle authentification
        if(isset($route_info['protect']) && $route_info['protect']) {
            $token = AuthHelper::getBearerToken();
            if ($request->method !== 'OPTIONS' && (!$token || !AuthHelper::validateToken($token))) {
                header("HTTP/1.1 401 Unauthorized");
                exit;
            } else if($request->method === 'OPTIONS') {
                header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
                exit(0);
            }
        }

        if($route_info['with_data'] == "true") {
            echo $controller->{$route_info['action']}($request);
        }
        else {
            echo $controller->{$route_info['action']}();
        }

    }

    #return the routes list
    private function getRoutesList(){
        $json = file_get_contents(DIR_BASE . "config/routes.json");
        $routes_list = json_decode($json, true);

        return $routes_list;
    }

    #return the current site language
    static function getCurrentLanguage()
    {
        $current_lang = $_SESSION['lang'];
        if ($current_lang == 'ar') {
            return 'ar';
        }
        elseif ($current_lang == 'en'){
            return 'en';
        }
    }

}
