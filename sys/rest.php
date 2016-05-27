<?php

namespace N\Sys;


class Rest {

        protected $method;
        protected $service;
        protected $request;
        protected $model;

        public function __construct($method,$service,$request){
            $this->request=$request;
            $this->method=$method;
            $this->service=$service;

        }

        protected function _response($data, $status = 200) {
            //Coder::show($data);
            header('HTTP/1.1 ' . $status .' '. $this->_requestStatus($status));
            header('Content-Type: application/json');
            echo  json_encode($data);
        }
        protected function _requestStatus($code) {
        $status = array(
            200 => 'OK',
            404 => 'Not Found',
            405 => 'Method Not Allowed',
            500 => 'Internal Server Error',
        );
        return ($status[$code])?$status[$code]:$status[500];
      }


     }