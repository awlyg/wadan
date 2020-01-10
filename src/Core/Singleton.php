<?php
namespace App\Core;

class Singleton {
    private static $instance;

    static function getInstance() {
        if(is_null(self::$instance)){
            $className = get_called_class();
            self::$instance = new $className;
        }

        return self::$instance;
    }
}
