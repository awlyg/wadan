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
    // list all users with specific role
    public function getAllDeals($request)
    {
        return $this->JSONResponse(CommonService::getAll('deal'));
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

    // soft delete a bid
    public function deleteDeal($request) {

        $dealID = (int) $request->data['id'];

        // todo change the method to delete
        if($request->method !== 'GET' || empty($dealID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($dealID, 'Deal');

        if($deleted) {
            return $this->JSONResponse(['id' => $dealID]);
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

    public function addUpdateDeal($request) {
        if($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = CommonService::addUpdate('deal', $data);

        $result = isset($id) ? ['did' => $id] : NULL;
        return $this->JSONResponse($result);
    }


    function getBidById($request) {
        $bidID = (int) $request->data['id'];

        if($request->method !== 'GET' || empty($bidID)) {
            return $this->JSONResponse(NULL);
        }

        $bid = CommonService::getItemById($bidID, 'bid');
        if ($bid) {
            return $this->JSONResponse($bid);
        }

        return $this->JSONResponse(NULL);
    }
}
