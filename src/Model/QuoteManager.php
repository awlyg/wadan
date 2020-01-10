<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 03/09/2019
 * Time: 00:30
 */
namespace App\Model;

class QuoteManager
{

    public function getQuote($id){
        global $db;

        $db->where('id', $id);
        $quote = $db->getOne('quotes');

        return $quote;
    }
}