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

class OrderController extends BaseController
{

    // list all suppliers with specific role
    public function SupplierIndex($request)
    {
        return $this->JSONResponse(CommonService::getAll('supplier'));
    }

    // list all suppliers with specific role
    public function getSupplierById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(CommonService::getItemById($id, 'supplier'));
    }

    public function addUpdateSupplier($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = CommonService::addUpdate('supplier', $data);

        $result = isset($id) ? ['sid' => $id] : NULL;
        return $this->JSONResponse($result);
    }


    // list all suppliers with specific role
    public function orderIndex($request)
    {
        return $this->JSONResponse(CommonService::getAll('purchase_order'));
    }

    // list all suppliers with specific role
    public function getOrderById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(CommonService::getItemById($id, 'purchase_order'));
    }

    public function addUpdateOrder($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = CommonService::addUpdate('purchase_order', $data);

        $result = isset($id) ? ['oid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    // soft delete an order
    public function deleteOrder($request)
    {

        $orderID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($orderID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($orderID, 'purchase_order');

        if ($deleted) {
            return $this->JSONResponse(['id' => $orderID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }
    
}
