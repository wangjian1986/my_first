<?php
namespace app\admin\controller;
use think\Controller;
use think\facade\Request;
use think\facade\Session;
use app\admin\model\User as UserModel;
/**
 *
 */
class Login extends Controller
{
    public function index()
    {
        //登录数据验证
        if (Request::isPost()) {
            $account = Request::param('account');
            $pwd = Request::param('password');
            $verify = Request::param('verify');
            $data = [
                'account' => $account,
                'password' => $pwd,
                'verify' => $verify
            ];
            // $result = $this->validate($data, 'app\admin\validate\User');
            // if (true !== $result) {
            //     return ['code' => 0, 'msg' => $result];
            // }
            $user = new UserModel();
            $query = $user->where(['account' => $account, 'password' => md5($pwd)])->find();

            if ($query) {
                Session::set('user', $query);                   //登录信息存session
                $user->where('id', $query['id'])->setInc('login_count');        //登录次数累加

                return ['code' => 1, 'msg' => '登录成功'];
            }else{
                return ['code' => 0, 'msg' => "账号或者密码不正确"];
            }
        }
        return $this->fetch();
    }

    //退出登录
    public function loginOut()
    {
        Session::clear();
        $this->redirect('Index/index');
    }
}


 ?>
