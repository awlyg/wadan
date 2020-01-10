<?php

session_start();
//ini_set('error_reporting', 0) # when prod mode

use App\Core\Request;
use App\Utils\CachePage;
use ReallySimpleJWT\Token;
use App\Helpers\AuthHelper;

require 'vendor/autoload.php';
require_once 'bootstrap/autoload.php';

require_once 'config/config.php';

/*
if(!isset($_SESSION['lang'])) {
    $_SESSION['lang'] = 'ar';
}
*/

$core = new App\Core(); # the Core Class
$request = new Request(); # the user request

$core->HandleRequest($request);
