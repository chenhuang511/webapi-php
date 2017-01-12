<?php

class Module
{

    public static function Sidebar($langarr)
    {
        $sidebar[] = array("name" => "Trang chủ", "icon" => "zmdi zmdi-home", "key" => "loginsystem", "controller" => "/index/index");
        $sidebar[] = array("name" => "Customer", "icon" => "zmdi zmdi-phone", "key" => "customer", "controller" => "/customer/index");
        return $sidebar;
    }

    public static function is_accept_permission($key)
    {
        $uinfo = $_SESSION['uinfo'];
        $permissionlist = $uinfo['listpermission'];
        if (count($permissionlist) <= 0) $permissionlist = array();
        $tmp = explode(",", $key);
        if (count($tmp) > 0) {
            $rs = array_intersect($tmp, $permissionlist);
            if (count($rs) > 0) return 1;
            else return 0;
        } else {
            if (in_array($key, $permissionlist)) return 1;
            else return 0;
        }
    }
}

?>