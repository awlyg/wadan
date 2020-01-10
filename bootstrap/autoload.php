<?php

spl_autoload_register(function ($class) {

// project-specific namespace prefix
$prefix = 'App';

// base directory for the namespace prefix
$base_dir = DIR_BASE . '/src/';
// does the class use the namespace prefix?
$len = strlen($prefix);


// get the relative class name
$relative_class = substr($class, $len);

// replace the namespace prefix with the base directory, replace namespace
// separators with directory separators in the relative class name, append
// with .php

$file = $base_dir . str_replace('\\', '/', $relative_class) . '.php';

// if the file exists, require it
if (file_exists($file)) {
require $file;
}
});