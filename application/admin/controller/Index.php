<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Session;
use think\facade\Request;
class Index extends Controller
{
    public function index()
    {
        if (!Session::has('user')) {
            $this->redirect('Login/index');
        }
        return $this->fetch();
    }

    public function systemInfo(){
        return $this->fetch();
    }


}
