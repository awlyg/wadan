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
use App\Services\AuthService;
use App\Services\NoteService;
use App\Services\ProjectService;

class NoteController extends BaseController
{
    public $c_language;

    function __construct()
    {}

    // list all notes
    public function Index($request)
    {
        $type = (int) $request->data['type'];
        $typeID = (int) $request->data['type_id'];

        if (empty($typeID) || empty($type)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(NoteService::getNotes($typeID, $type));
    }

    // add new note
    public function addNote($request) {
        if($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }

        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = NoteService::addNote($data);

        $result = isset($id) ? ['nid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    // update existing note
    public function updateNote($request) {

        if($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $noteID = $data['id'];
        unset($data['id']);

        $id = NoteService::updateNote($data, $noteID);

        $result = isset($id) ? ['nid' => $id] : NULL;

        return $this->JSONResponse($result);
    }
    // soft delete a note
    public function deleteNote($request) {

        $noteID = (int) $request->data['id'];

        // todo change the method to delete
        if($request->method !== 'GET' || empty($noteID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = NoteService::deleteNote($noteID);

        if($deleted) {
            return $this->JSONResponse(['id' => $noteID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }
}
