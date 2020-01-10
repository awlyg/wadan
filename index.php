<?php

session_start();
//ini_set('error_reporting', 0) # when prod mode

use App\Core\Request;
use App\Utils\CachePage;
use ReallySimpleJWT\Token;


require_once 'bootstrap/autoload.php';
require 'vendor/autoload.php';




// $tk = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNTc4MzQzNjM2LCJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE1NzgzNDAwMzZ9.0WOQnco0Ra0GTPrJUgNe3JLPUwrhpDLsMHGdMROKHiw";
// $result = Token::validate($tk, $secret);

// var_dump($result);


// Return the token
//$jwt->getToken();

//var_dump($token);
require_once 'config/config.php';

if(!isset($_SESSION['lang'])) {
    $_SESSION['lang'] = 'ar';
}

$core = new App\Core(); # the Core Class
$request = new Request(); # the user request

/*
// check if page already cached !
(new CachePage($request))->loadCached();
*/

//ob_start(); # I has a cache problem

$core->HandleRequest($request);

/*
// create cache if not exist !
(new CachePage($request))->CreateCache();
*/
