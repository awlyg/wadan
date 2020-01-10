<?php
/**
 * Created by PhpStorm.
 * User: amine
 * Date: 12/09/2019
 * Time: 12:58
 */

namespace App\Utils;


class CachePage
{
    private $cahePath;

    public function __construct($request)
    {
        $this->cahePath = 'cached-files/' . md5($request->getRoute()) . '.html';
    }

    //check if file already cached !
    private function isCached() {
        if(file_exists($this->cahePath)){
            return true;
        }

        return false;
    }

    //to load cached files
    public function loadCached() {
        if($this->isCached()){
            die(readfile($this->cahePath));
        }
    }

    public function CreateCache()
    {
        if(!$this->isCached()){
            $cached = fopen($this->cahePath, 'w');
            fwrite($cached, ob_get_contents());
            fclose($cached);
            ob_end_flush();
        }
        else {
            return false;
        }
    }


}


