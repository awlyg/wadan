<?php
namespace App\Core;

use App\Core;

class BaseController
{

    static function render($filename, $params = [])
    {
        ob_start();
        if (!empty($filename))
        {

            $lang = self::getLanguageData();
            $days = self::getLanguageDays();
            $data = $params;
            $direction = (\App\Core::getCurrentLanguage() == 'ar') ? 'rtl' : 'ltr';
            $request = new Request();

            if(file_exists(DIR_BASE . 'pages/' . $filename . '.html.php')){
                require_once DIR_BASE . 'pages/' . $filename . '.html.php';
                $content = ob_get_clean();
                ob_end_flush();
            }
            else {
                $home = BASE_PATH;
                header("location: $home");
            }

            // require the default layout
            require_once DIR_BASE . 'pages/layout/template.html.php';
        }
    }



    static public function getLanguageData()
    {
        global $lang;
        if(\App\Core::getCurrentLanguage() == 'ar'){
            require DIR_BASE . 'languages/ar.php';
        }
        else{
            require DIR_BASE . 'languages/en.php';
        }

        return $lang;

    }


    public function JSONResponse($data){

        header('Content-type: application/json');
        header('Access-Control-Allow-Origin: *');

        $status = !isset($data) ? '500_ERROR' : (empty($data) ? '500_EMPTY' : '200_OK');
        return json_encode(['status' => $status, 'data' => $data]);
    }
}
