<?php
/**
 * Created by PhpStorm.
 * Voucher: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;

use App\Core\Request;
use App\Services\CommonService;

class VoucherController extends BaseController
{

    // list all vouchers with specific role
    public function Index($request)
    {
        return $this->JSONResponse(CommonService::getAll('voucher'));
    }

    // list all vouchers with specific role
    public function getVoucherById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(CommonService::getItemById($id, 'voucher'));
    }

    // list all vouchers with specific role
    public function getBeneficiaryById($request)
    {
        $id = (int)$request->data['id'];

        if (empty($id)) {
            return $this->JSONResponse(NULL);
        }

        return $this->JSONResponse(CommonService::getItemById($id, 'beneficiary'));
    }

    public function addUpdateVoucher($request)
    {
        if ($request->method !== 'POST') {
            return $this->JSONResponse(NULL);
        }
        // get the project from the request
        $data = Request::getJsonRequest(true);

        $id = CommonService::addUpdate('voucher', $data);

        $result = isset($id) ? ['vid' => $id] : NULL;
        return $this->JSONResponse($result);
    }

    // soft delete an voucher
    public function deleteVoucher($request)
    {

        $voucherID = (int)$request->data['id'];

        // todo change the method to delete
        if ($request->method !== 'GET' || empty($voucherID)) {
            return $this->JSONResponse(NULL);
        }

        $deleted = CommonService::deleteItem($voucherID, 'voucher');

        if ($deleted) {
            return $this->JSONResponse(['id' => $voucherID]);
        } else {
            return $this->JSONResponse(NULL);
        }
    }

}
