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

    // add a new note
    static function addNote($note)
    {
        global $db;
        $id = NULL;

        if (self::isValidNote($note)) {

            $note = self::castNote($note);
            try {
                $id = $db->insert('note', $note);
            } catch (\Exception $exception) {
                Log::write($exception, $db->getLastError());
            }
        }

        return $id;
    }


    // update a existing note
    static function updateNote($note, $noteID)
    {
        global $db;
        $id = NULL;

        if (self::isValidNote($note)) {
            $note = self::castNote($note);
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
            'writer' => '',
            'type' => '',
            'typeID' => '',
            'text' => '',
            'lastUpdate' => '',
            'createdAt' => '',
        ];
        return DataValidator::payloadValidator($Model, $note);

    }

    private static function castNote($note)
    {
        $old = $note;

        $note['type_id'] = $old['typeID'];
        // $note['last_update'] = $old['lastUpdate'];
        // $note['created_at'] = $old['createdAt'];

        unset($note['typeID'], $note['lastUpdate'], $note['createdAt']);

        return $note;
    }

}
