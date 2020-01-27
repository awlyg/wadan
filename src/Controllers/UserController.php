<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;

use App\Core\Request;
use App\Services\CommonService;
use App\Services\UserService;

class UserController extends BaseController
{

    // list all users with specific role
    public function Index($request)
    {
        $userRole = $request->data['role'];

        if (!$userRole || $userRole === 'all') {
            $allUsers = CommonService::getAll('user');
            // for security
            foreach ($allUsers as &$user) {
                unset($user['password']);
            }

            return $this->JSONResponse($allUsers);
        } else {
            $allUsers = UserService::getAllUsers($userRole);
            // for security
            foreach ($allUsers as &$user) {
                unset($user['password']);
            }

            return $this->JSONResponse($allUsers);
        }

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

    public function addUpdateUser($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $roles = [];
        // get roles
        foreach ($data['role'] as $key => $value) {
            if($value) {
                $roles [] = $key;
            }
        }
        $data['role'] = implode($roles, ',');

        $id = CommonService::addUpdate('user', $data);

        $result = isset($id) ? ['uid' => $id] : NULL;
        return $this->JSONResponse($result);
    }


    // soft delete a bid
    public function deleteUser($request)
    {

        $uid = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($uid)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($uid, 'user');

        if ($deleted) {
            return $this->JSONResponse(['id' => $uid]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

}
