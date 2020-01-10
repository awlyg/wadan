<?php

namespace App\Core;

class Mahdra extends Singleton
{
    private static $instance = null;

    public function __construct()
    {
        echo BASE_PATH;
    }

    public function getDb()
    {
        global  $db;
        return $db;
    }

}

