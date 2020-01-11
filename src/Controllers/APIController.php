<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;
use App\Core\Mahdra;
use App\Core\Request;
use App\Services\AuthService;
use App\Services\ProjectService;
use hijri;

class APIController extends BaseController
{
    public $c_language;

    function __construct()
    {
        $this->c_language = \App\Core::getCurrentLanguage();
    }

    // list all projects
    public function Index($request)
    {
        $status = $request->data['status'];
        return $this->JSONResponse(ProjectService::getAllProjects($status));
    }

    // add new project
    public function addProject($request) {
        if($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = ProjectService::addProject($data);

        $result = isset($id) ? ['pid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    // soft delete a project
    public function deleteProject($request) {

        $projectID = (int) $request->data['id'];

        // todo change the method to delete
        if($request->method !== 'GET' || empty($projectID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = ProjectService::deleteProject($projectID);

        if($deleted) {
            return $this->JSONResponse(['id' => $projectID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

    // get project using the id

    function getProjectById($request) {
        $projectID = (int) $request->data['id'];

        if($request->method !== 'GET' || empty($projectID)) {
            return $this->JSONResponse(NULL);
        }

        $project = ProjectService::getProjectById($projectID);
        if ($project) {
            return $this->JSONResponse($project);
        }

        return $this->JSONResponse(NULL);
    }

    function Login($request) {

        // Access-Control headers are received during OPTIONS requests
        if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
            exit(0);
        }

        $data = Request::getJsonRequest(true);
        $username = $data['username'];
        $pwd = $data['password'];

        $user = AuthService::isLoggedIn($username, $pwd);

        if ($user) {
            return $this->JSONResponse($user);
        }

        return $this->JSONResponse(NULL);
    }
}
