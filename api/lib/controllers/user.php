<?php
	namespace Api\Lib\Controllers;

	class User {
		protected $gdb=null;
		function __construct(){
				
				$this->gdb=\Api\Lib\SPDO::singleton();
		}
		function get(){
			if ($_SERVER['REQUEST_METHOD']!='GET'){
				return array('error'=>'Request not valid');
			}else{

				$sql="SELECT * from users";
				$stmt=$this->gdb->prepare($sql);
				$stmt->execute();
				$rows=$stmt->fetchAll();
				return $rows;
			}

			
			
		}
		function post(){
			if ($_SERVER['REQUEST_METHOD']!='POST'){
				return array('error'=>'Request not valid');
			}

		}
		function delete(){
			if ($_SERVER['REQUEST_METHOD']!='DELETE'){
				return array('error'=>'Request not valid');
			}

		}
		function put(){
			if ($_SERVER['REQUEST_METHOD']!='PUT'){
				return array('error'=>'Request not valid');
			}

		}
	}
