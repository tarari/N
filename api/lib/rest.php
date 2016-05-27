<?php

	namespace Api\Lib;

	use Api\Lib\Request;
	
	class Rest {
		
		function __construct(){
			$request = new Request();
			if (isset($_SERVER['PATH_INFO'])) {
			    $request->url_elements = explode('/', trim($_SERVER['PATH_INFO'], '/'));
			}
			$request->method = strtoupper($_SERVER['REQUEST_METHOD']);
			switch ($request->method) {
			    case 'GET':
			        $request->parameters = $_GET;
			    break;
			    case 'POST':
			        $request->parameters = $_POST;
			    break;
			    case 'PUT':
			        parse_str(file_get_contents('php://input'), $request->parameters);
			    break;
			    case 'DELETE':
			        parse_str(file_get_contents('php://input'), $request->parameters);
			    break;
			    
			}
			
			/**
			 * Route the request.
			 */
			if (!empty($request->url_elements)) {
			    $controller_name = $request->url_elements[0];
			    $file=LIB.DS.'controllers'.DS.$controller_name.'.php';
			    //var_dump($file);
			   
			    if (is_readable($file)) {
			    	
			    	$name='\Api\Lib\Controllers\\'.$controller_name;
			    	//var_dump($name);
			        $controller = new $name;
			        $action_name = strtolower($request->method);
			        $response_str = call_user_func_array(array($controller, $action_name), array($request));
			    }
			    else {
			        header('HTTP/1.1 404 Not Found');
			        $response_str = 'Unknown request: ' . $request->url_elements[0];
			    }
			}
			else {
			    $response_str = 'Unknown request';
			}
			/**
			 * Send the response to the client.
			 */
			$response_obj = \Api\Lib\Response::create($response_str, $_SERVER['HTTP_ACCEPT']);
			echo $response_obj->render();
		}

	}