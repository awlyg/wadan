<?php

namespace App\Services;

use App\Core\DataValidator;
use App\Core\Log;
use App\Core\Request;

class ProjectService
{
    // this function list projects
    static function getAllProjects($status)
    {
        $projects = [];
        global $db;
        try {
            $db->where('deleted_at', NULL, 'IS');

            if ($status && in_array($status, ['opened', 'closed', 'progress', 'archived'])) {
                $db->where('status', $status);
            }

            $projects = $db->get('project');
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $projects;
    }

    // add a new project
    static function addProject($project)
    {
        global $db;
        $id = NULL;

        if (self::isValidProject($project)) {
            $project = self::castProject($project);
            try {
                $id = $db->insert('project', $project);
            } catch (\Exception $exception) {
                Log::write($exception, $db->getLastError());
            }
        }

        return $id;
    }

    // update a existing project
    static function updateProject($project, $pid)
    {
        global $db;
        $id = NULL;

        if (self::isValidProject($project)) {
            $project = self::castProject($project);
            try {
                $db->where('id', $pid);
                $id = $db->update('project', $project);
            } catch (\Exception $exception) {
                Log::write($exception, $db->getLastError());
            }
        }

        return $id;
    }

    // to delete a project,
    static function deleteProject($id)
    {
        global $db;
        $db->where('id', $id);
        $data = ['deleted_at' => date('Y-m-d H:i:s')];

        if (!self::projectAlreadyDeleted($id)) {
            try {
                $db->where('id', $id);
                $deleted = $db->update('project', $data);
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


    // check if the Project modal send by the front is valid
    static function isValidProject($project)
    {
        $Model = [
            'name' => '',
            'startDate' => '',
            'endDate' => '',
            'status' => '',
            'manager' => '',
            'code' => '',
            'poValue' => '',
            'expenses' => '',
            'link' => ''
        ];

        return DataValidator::payloadValidator($Model, $project);
    }

    static function projectAlreadyDeleted($id)
    {
        global $db;

        $db->where('id', $id);

        $project = $db->getOne('project');

        if (isset($project['deleted_at'])) {
            return true;
        }

        return false;
    }

    public static function getProjectById($projectID)
    {
        global $db;
        $db->where('id', $projectID);
        try {
            $project = $db->getOne('project');
            return $project;

        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
            return false;
        }
    }

    private static function castProject($project)
    {

        $old = $project;
        $project['start_date'] = $old['startDate'];
        $project['end_date'] = $old['endDate'];
        $project['po_value'] = $old['poValue'];

        unset($project['startDate'], $project['endDate'], $project['poValue']);

        return $project;
    }


}
