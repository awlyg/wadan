<?php

namespace App\Services;


use App\Core\Log;

class CommonService
{

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

    // to delete an item,
    static function deleteItem($id, $tableName)
    {
        global $db;
        $db->where('id', $id);
        $data = ['deleted_at' => date('Y-m-d H:i:s')];

        if (!self::itemAlreadyDeleted($id, $tableName)) {
            try {
                $db->where('id', $id);
                $deleted = $db->update($tableName, $data);
                if ($deleted)
                    return true;
            } catch (\Exception $exception) {
                Log::write($exception, $db->getLastError());
            }
        } else {
            // already deleted
            return false;
        }
    }

    static function itemAlreadyDeleted($id, $tableName)
    {
        global $db;

        $db->where('id', $id);

        $project = $db->getOne($tableName);

        if (isset($project['deleted_at'])) {
            return true;
        }

        return false;
    }


    // add a new invoice
    static function addUpdate($tableName, $data)
    {
        global $db;
        $id = $data['id'];

        try {
            if (!$id) {
                $id = $db->insert($tableName, $data);
            } else {
                $db->where('id', $id);
                $id = $db->update($tableName, $data);
            }
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }
        return $id;
    }

    public static function getItemById($itemID, $tableName)
    {
        global $db;
        $db->where('id', $itemID);
        try {
            $item = $db->getOne($tableName);
            return $item;

        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
            return false;
        }
    }
}
