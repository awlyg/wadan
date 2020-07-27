<?php


namespace App\Services;


use App\Helpers\AuthHelper;
use Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

class NotificationService
{

    const EMAIL_HEDER = '';
    const EMAILS = [
        1215 => [
            'object' => 'New projet assigned to you | ERP Dar Delta',
            'text' => 'New Project was created and you\'re the responsible of it, please check the ERP.',
            'url' => 'http://dd.dardelta.com.sa/front/projects/project/'
        ],
        1216 => [
            'object' => 'New task assignee | ERP Dar Delta ',
            'text' => 'You\'ve a new task asigned to you, please check the ERP',
            'url' => 'http://dd.dardelta.com.sa/front/tasks/task/'
        ],
        1217 => [
            'object' => 'Task Unassigned from you | ERP Dar Delta ',
            'text' => 'You\'ve a new task removed from you, please check the ERP',
            'url' => 'http://dd.dardelta.com.sa/front/tasks/task/'
        ],
        1214 => [
            'object' => 'Project Unassigned from you | ERP Dar Delta ',
            'text' => 'You\'ve a new project removed from you, please check the ERP',
            'url' => 'http://dd.dardelta.com.sa/front/tasks/task/'
        ],
    ];

    // to send the notif
    static function sendNotification($code, $recepient, $id) {
        $codes = array_keys(self::EMAILS);
      
        if(!in_array($code, $codes)) {
            return NULL;
        }
        

        $text = self::EMAILS[$code]['text'];
        $object = self::EMAILS[$code]['object'];
        $url = self::EMAILS[$code]['url'];

        

        $mail = new PHPMailer(true);

        try {
            //Server settings
           // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'box5114.bluehost.com';                    // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = '_mainaccount@dardelta.com.sa';                     // SMTP username
            $mail->Password   = 'DARerp@79';                               // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port       = 465;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
        
            //Recipients
            $mail->setFrom('noreply@dardelta.com.sa', 'DARDELTA ERP');
            $mail->addAddress($recepient);               // Name is optional        
            // Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = $object;
            // $mail->Body    = $text . '<br />' . 'check link <a href="'. $url . $id . '">here</a>.';
            $mail->Body    = $text;

            if($mail->send()) {
                return 'OK';
            }

            return NULL;
            
        } catch (Exception $e) {
            return NULL;
        }
    }



}
