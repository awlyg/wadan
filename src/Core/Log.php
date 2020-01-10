<?php

namespace App\Core;
class Log
{

    public static function write($exception, $message)
    {

        $open = fopen(DIR_BASE . 'storage/log.txt', 'a+');
        if (fwrite($open, $message . ': ' . $exception->getTraceAsString() . PHP_EOL)) {
            fclose($open);
            die('an error was ocurred!');
        }
    }

}
