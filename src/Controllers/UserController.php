<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;

use App\Services\UserService;

class UserController extends BaseController
{

    // list all users with specific role
    public function Index($request)
    {
        $userRole = (int)$request->data['role'];

        if (empty($userRole)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(UserService::getAllUsers($userRole));
    }

    // list all users with specific role
    public function getUserById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(UserService::getUserById($id));
    }

}
