<?php
  namespace Api;
  	
     ini_set('display_errors','on');
    define('DS',DIRECTORY_SEPARATOR);
	define('ROOT',realpath(dirname(__FILE__)).DS);
	//to access filesystem
	define('LIB',ROOT.'lib'.DS);
    require_once __DIR__ . '/lib/autoload.php';

	$loader = new \Api\Lib\Autoload;
	
	$loader->register();
	$loader->addNamespace('Api\Lib', 'lib');
	$loader->addNamespace('Api\Lib\Controllers', 'controllers');
	
   
   


    $app=new \Api\Lib\Rest();
    
