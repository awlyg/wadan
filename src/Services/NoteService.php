<?php


namespace App\Services;


use App\Core\DataValidator;
use App\Core\Log;

class NoteService
{

    // get all project notes
    public static function getNotes($typeID, $type)
    {
        if (!$typeID || !is_numeric($typeID)) {
            return false;
        }

        $notes = null;
        global $db;

        $db->where('type_id', $typeID);
        $db->where('type', $type);

        try {
            $notes = $db->get('note');
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $notes;
    }

    // update a existing note

    static function updateNote($note, $noteID)
    {
        global $db;
        $id = NULL;

        if (self::isValidNote($note)) {
            $project = self::castNote($note);
            try {
                $db->where('id', $noteID);
                $id = $db->update('note', $note);
            } catch (\Exception $exception) {
                Log::write($exception, $db->getLastError());
            }
        }

        return $id;
    }

    // check if the Note modal send by the front is valid
    private static function isValidNote($note)
    {
        $Model = [
            'text' => '',
            'lastModified' => '',
            'endDate' => '',
            'status' => '',
            'manager' => '',
            'code' => '',
            'poValue' => '',
            'expenses' => '',
            'link' => ''
        ];
        return DataValidator::payloadValidator($Model, $note);

    }

    private static function castNote($note)
    {
        return $note;
    }

}
