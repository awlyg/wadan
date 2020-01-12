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

    // list all projects
    public function Index($request)
    {
        $type = (int) $request->data['type'];
        $typeID = (int) $request->data['type_id'];

        if (empty($typeID) || empty($type)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(NoteService::getNotes($typeID, $type));
    }

}
