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

    // add a new project
    static function addGroup($group)
    {
        global $db;
        $id = NULL;

        // todo delete
        $group['name'] = $group['text'];
        unset($group['text']);
        try {
            $id = $db->insert('boq_group', $group);
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $id;
    }

    // add a new invoice
    static function addInvoice($invoice)
    {
        global $db;
        $id = $invoice['id'];

        try {
            if (!$id) {
                $id = $db->insert('invoice', $invoice);
            } else {
                $db->where('id', $id);
                $id = $db->update('invoice', $invoice);
            }
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $id;
    }

    // add a new bid
    static function addBoq($boq)
    {
        global $db;
        $id = $boq['id'];
        try {
            if (!$id) {
                $id = $db->insert('boq', $boq);
            } else {
                $db->where('id', $id);
                $id = $db->update('boq', $boq);
            }
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $id;
    }

    // this function list projects
    static function getAllInvoices($pid)
    {
        $invoices = [];
        global $db;
        try {
            $db->where('project_id', $pid);
            $db->where('deleted_at', NULL, 'IS');
            $invoices = $db->get('invoice');
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return $invoices;
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

    public static function deleteInvoice($invoiceID)
    {
        global $db;
        $db->where('id', $invoiceID);
        $data = ['deleted_at' => date('Y-m-d H:i:s')];
        try {
            $deleted = $db->update('invoice', $data);
            if ($deleted)
                return true;
        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }

        return false;
    }


    static function getAllBOQs($pid)
    {
        $projectsBOQs = [];
        global $db;
        try {
            $db->where('deleted_at', NULL, 'IS');
            $db->where('project_id', $pid);
            $groups = $db->get('boq_group');

            $groupsIDs = [];
            $newGroups = [];
            foreach ($groups as $group) {
                $groupsIDs [] = $group['Id'];
                $newGroups [] = ['id' => $group['Id'], 'name' => $group['name']];
            }

            if (count($groupsIDs) > 0) {
                $db->where('group_id', $groupsIDs, 'IN');
                $items = $db->get('boq');
            } else {
                $newGroups = null;
                $items = null;
            }

            return ['groups' => $newGroups, 'items' => $items];

        } catch (\Exception $exception) {
            Log::write($exception, $db->getLastError());
        }
    }
}
