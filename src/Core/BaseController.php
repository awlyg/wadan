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
            $request = new Request();

            $data = $params;
            if(file_exists(DIR_BASE . 'pages/' . $filename . '.html.php')){
                require_once DIR_BASE . 'pages/' . $filename . '.html.php';
                $content = ob_get_clean();

                if (ob_get_length()){
                    ob_end_flush();
                }
            }
            ob_start();

            // require the default layout
            require_once DIR_BASE . 'pages/layout/pdf/template.html.php';

            $rendering = ob_get_clean();
            ob_end_flush();

            return $rendering;
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

        $status = !isset($data) ? '500_ERROR' : (empty($data) ? '500_EMPTY' : '200_OK');
        return json_encode(['status' => $status, 'data' => $data]);
    }
}
