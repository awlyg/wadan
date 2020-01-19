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
use App\Services\ProjectService;

class SaleController extends BaseController
{

    // list all users with specific role
    public function Index($request)
    {
        return $this->JSONResponse(CommonService::getAll('bid'));
    }

    // soft delete a bid
    public function deleteBid($request) {

        $bidID = (int) $request->data['id'];

        // todo change the method to delete
        if($request->method !== 'GET' || empty($bidID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($bidID, 'Bid');

        if($deleted) {
            return $this->JSONResponse(['id' => $bidID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

    public function addUpdateBid($request) {
        if($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = CommonService::addUpdate('bid', $data);

        $result = isset($id) ? ['bid' => $id] : NULL;
        return $this->JSONResponse($result);
    }
}