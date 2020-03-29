<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 06/08/2019
 * Time: 01:26
 */
namespace App\Core;

class Request {

    public $url;
    public $uri;
    public $method;
    public $data;
    private $acceptedMethods;

    function __construct()
    {
        $this->uri  =  $_SERVER['REQUEST_URI'];
        $this->url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $this->method = $_SERVER['REQUEST_METHOD'];
        $this->acceptedMethods = ['GET', 'POST', 'PUT', 'PUSH', 'DELETE'];
        $this->data = $this->getRequestData();

    }


    function getRoute()
    {
        $route = explode('?', $this->uri);
        return $route[0];
    }

    static function getJsonRequest($assoc = false) {
        return json_decode(file_get_contents('php://input'), $assoc);
    }

    // this function is used to get the request data
    private function getRequestData() {
        if($this->method === 'GET') {
            $params = [];
            $urlParse = parse_url($this->url);

            if(isset($urlParse['query'])) {
                parse_str(parse_url($this->url)['query'], $params);
            }
            return $params;
        } else if(in_array($this->method, $this->acceptedMethods)) {
            return self::getJsonRequest();
        }
    }

}
