<?php


namespace App\Services;


class AuthService
{

    static function checkCredentials($login, $pwd)
    {
        global $db;

        $db->where('username', $login);
        $db->where('password', $pwd);

        $x = $db->getOne('user');

        var_dump($x);
    }

}
