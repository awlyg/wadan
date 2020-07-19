<?php


namespace App\Services;


use App\Helpers\AuthHelper;
use Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

class NotificationService
{
    const EMAILS = [
        1215 => [
            'text' => 'New Project was created and you\'re the responsible of it. <br /> project url: http://dd.dardelta.com.sa/projects/all',
            'object' => 'New projet assigned to you',
        ],
        1216 => [
            'text' => 'New task assignee',
            'object' => 'You\'ve a new task asigned to you'
        ]
    ];

    // to send the notif
    static function sendNotification($code, $recepient) {
        $codes = array_keys(self::EMAILS);
      
        if(!in_array($code, $codes)) {
            return NULL;
        }
        

        $text = self::EMAILS[$code]['text'];
        $object = self::EMAILS[$code]['object'];
        

        $mail = new PHPMailer(true);

        try {
            //Server settings
            //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'box5114.bluehost.com';                    // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = '_mainaccount@dardelta.com.sa';                     // SMTP username
            $mail->Password   = 'DARerp@79';                               // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port       = 465;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
        
            //Recipients
            $mail->setFrom('noreply@dardelta.com.sa', 'Dar Delta ERP');
            $mail->addAddress($recepient);               // Name is optional        
            // Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = $object;
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
