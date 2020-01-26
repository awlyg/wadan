<?php
/**
 * Created by PhpStorm.
 * Task: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;

use App\Core\Request;
use App\Services\CommonService;

class TaskController extends BaseController
{

    // list all tasks with specific role
    public function Index($request)
    {
        return $this->JSONResponse(CommonService::getAll('task'));
    }

    // list all tasks with specific role
    public function getTaskById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(CommonService::getItemById($id, 'task'));
    }

    public function addUpdateTask($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = CommonService::addUpdate('task', $data);

        $result = isset($id) ? ['tid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

}
