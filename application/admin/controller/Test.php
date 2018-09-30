<?php
namespace app\admin\controller;
/**
 * 爬虫测试
 */
class Test
{
    public function getData(){
        $url = 'http://www.baidu.com/';
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1 );
        $result = curl_exec($ch);
        var_dump($result);
        return $result;
    }

}






 ?>
