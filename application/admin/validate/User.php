<?php
namespace app\admin\validate;
use think\Validate;
/**
 *会员登录验证器
 */
class User extends  Validate
{
    protected $rule = [
        'account' => 'require',
        'password' => 'require',
        'verify' => 'require|captcha'
    ];

    protected $message = [
        'account.require' => '账号不能为空',
        'password.require' => '密码不能为空',
        'verify.require' => '验证码不能为空',
        'verify.captcha' => '验证码不正确'
    ];

}




 ?>
