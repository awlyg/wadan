<?php

define('ROOT_DIR', '/');
define( 'DIR_BASE', dirname(dirname(__FILE__)) . '/' );

$prtcl = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https://' : 'http://';
$base_path = $prtcl . $_SERVER['SERVER_NAME'] . '/';
define("BASE_PATH", $base_path);

require_once DIR_BASE . 'config/routes-ar.php';
require_once DIR_BASE . 'external/MysqliDb.php';

//change here !
$db = new MysqliDb ('localhost', 'root', NULL, 'erp');
