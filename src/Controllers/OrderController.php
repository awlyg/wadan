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

    // soft delete an order
    public function deleteSupplier($request)
    {

        $supplierID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($supplierID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($supplierID, 'supplier');

        if ($deleted) {
            return $this->JSONResponse(['id' => $supplierID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }


    // list all suppliers with specific role
    public function getAllItems($request)
    {

        $data = [];
        $orderID = (int)$request->data['id'];
        $received = $request->data['received'];

        if($orderID && !empty($orderID)) {
            $data['order_id'] = $orderID;
        }
        if ($received && !empty($received)) {
             $data['received'] = $received;
        }

        return $this->JSONResponse(CommonService::getAll('purchase_item', $data));
    }

    // list all suppliers with specific role
    public function getAllTracks($request)
    {
        $trackID = (int)$request->data['id'];

        return $this->JSONResponse(CommonService::getAll('payment_tracking', ['order_id' => $trackID]));
    }

    public function addUpdateItem($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }

        // get the project from the request
        $data = Request::getJsonRequest(true);
        if ($data['id'] && $data['received'] === 1) {
            $data['received_date'] = date("Y-m-d H:i:s");
            $data['status'] = 'Check In';
        } elseif($data['id'] && $data['received'] === 0) {
            $data['received_date'] = null;
            $data['status'] = 'initial';
        }

        $id = CommonService::addUpdate('purchase_item', $data);

        $result = isset($id) ? ['pid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    public function addUpdateTrack($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = CommonService::addUpdate('payment_tracking', $data);

        $result = isset($id) ? ['tid' => $id] : NULL;
        return $this->JSONResponse($result);
    }
}
