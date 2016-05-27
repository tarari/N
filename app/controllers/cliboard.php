<?php
namespace N\App\Controllers;
	use N\Sys\Controller;
	use N\Sys\Session;
	use N\App\Models\mDashboard;
	use N\App\Views\vDashboard;


class Cliboard extends Controller{
		protected $model;
		protected $view;
		
		function __construct($params,$array=null){
			parent::__construct($params);
			$this->model=new mDashboard();
			$this->view= new vDashboard();
			
		}
	function home(){
			
	}