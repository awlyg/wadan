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

    // list all users with specific role
    public function getAllVisits($request)
    {
        return $this->JSONResponse(CommonService::getAll('visit'));
    }


    // soft delete a bid
    public function deleteBid($request)
    {

        $bidID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($bidID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($bidID, 'bid');

        if ($deleted) {
            return $this->JSONResponse(['id' => $bidID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

    // soft delete a bid
    public function deleteVisit($request)
    {

        $visitID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($visitID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($visitID, 'visit');

        if ($deleted) {
            return $this->JSONResponse(['id' => $visitID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

    // soft delete a bid
    public function deleteDeal($request)
    {

        $dealID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($dealID)) {
            return $this->JSONResponse(NULL);
        }
        //ff

        $deleted = CommonService::deleteItem($dealID, 'deal');

        if ($deleted) {
            return $this->JSONResponse(['id' => $dealID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

    public function addUpdateBid($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = CommonService::addUpdate('bid', $data);

        $result = isset($id) ? ['bid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    public function addUpdateDeal($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = CommonService::addUpdate('deal', $data);

        $result = isset($id) ? ['did' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    public function addUpdateVisit($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);
        $id = CommonService::addUpdate('visit', $data);

        $result = isset($id) ? ['vid' => $id] : NULL;
        return $this->JSONResponse($result);
    }


    function getBidById($request)
    {
        $bidID = (int)$request->data['id'];

        if ($request->method !== 'GET' || empty($bidID)) {
            return $this->JSONResponse(NULL);
        }

        $bid = CommonService::getItemById($bidID, 'bid');
        if ($bid) {
            return $this->JSONResponse($bid);
        }

        return $this->JSONResponse(NULL);
    }


    function getDealById($request)
    {
        $dealID = (int)$request->data['id'];

        if ($request->method !== 'GET' || empty($dealID)) {
            return $this->JSONResponse(NULL);
        }

        $deal = CommonService::getItemById($dealID, 'deal');
        if ($deal) {
            return $this->JSONResponse($deal);
        }

        return $this->JSONResponse(NULL);
    }

    function getVisitById($request)
    {
        $visitID = (int)$request->data['id'];

        if ($request->method !== 'GET' || empty($visitID)) {
            return $this->JSONResponse(NULL);
        }

        $visit = CommonService::getItemById($visitID, 'visit');
        if ($visit) {
            return $this->JSONResponse($visit);
        }

        return $this->JSONResponse(NULL);
    }


}
