<?php


namespace App\Services;


use App\Core\DataValidator;
use App\Core\Log;

class UserService
{

    // get all project notes
    public static function getAllUsers($role)
    {
        if (!$role) {
            return false;
        }

        $users = null;
        global $db;
        $db->where('deleted_at', NULL, 'IS');
        $db->where('role', '%' . $role . '%', 'LIKE');

        try {
            $users = $db->get('user');
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $users;
    }


    public static function getUserById($id)
    {
        global $db;
        $db->where('id', $id);

        $user = null;
        try {
            $user = $db->getOne('user');
            unset($user['password']);
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $user;
    }

}
