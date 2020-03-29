<?php


namespace App\Services;


use App\Helpers\AuthHelper;

class AuthService
{

    static function isLoggedIn($login, $pwd)
    {
        global $db;

        $db->where('username', $login);
        $db->where('password', $pwd);

        $user = $db->getOne('user');

        $authToken = [];
        if ($user) {
            $authToken['uid'] = $user['id'];
            $authToken['role'] = $user['role'];
            $authToken['token'] = AuthHelper::generateToken($user);

            return $authToken;
        }

        return false;
    }


    static function checkEmail($email) {
        global $db;

        $db->where('email', $email);
        $user = $db->getOne('user');

        $authToken = [];
        if ($user) {
            $authToken['uid'] = $user['id'];
            $authToken['role'] = $user['role'];
            $authToken['token'] = AuthHelper::generateToken($user);

            return $authToken;
        }

        return false;
    }
}
