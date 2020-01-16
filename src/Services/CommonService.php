<?php

namespace App\Services;


use App\Core\Log;

class CommonService {

    // this function list projects
    static function getAll($tableName)
    {
        $data = [];
        global $db;
        try {
            $db->where('deleted_at', NULL, 'IS');
            $data = $db->get($tableName);
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $data;
    }

}
