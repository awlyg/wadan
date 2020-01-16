<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 30/08/2019
 * Time: 18:30
 **/

namespace App\Controllers;

use App\Core\BaseController;

use App\Services\CommonService;

class SaleController extends BaseController
{

    // list all users with specific role
    public function Index($request)
    {
        return $this->JSONResponse(CommonService::getAll('bid'));
    }

}
