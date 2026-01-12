<?php

namespace App\Utility;

use Exception;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

class Email
{

    protected $mailServer;
    protected $message;
    protected $subject;
    protected $attachment;

    /**
     * Create a new class instance.
     */
    public function __construct($mail,$to,$name,$message,$subject,$attachment=null)
    {
        $this->mailServer = new PHPMailer(true);
        // mail configuration
        $this->mailServer->SMTPDebug = SMTP::DEBUG_OFF;
        $this->mailServer->isSMTP();
        $this->mailServer->Host       = $mail->host;
        $this->mailServer->SMTPAuth   = true;
        $this->mailServer->Username   = $mail->username;
        $this->mailServer->Password   = $mail->password;
        $this->mailServer->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $this->mailServer->Port       = $mail->port;

        //Recipients
        $this->mailServer->setFrom($mail->from, $mail->app);
        $this->mailServer->addAddress($to, $name);

        // initialize variables
        $this->message = $message;
        $this->subject = $subject;
        $this->attachment = $attachment;
        $this->send();
    }

    public function send(){
        try {
            //Content
            $this->mailServer->isHTML(true);
            $this->mailServer->Subject = $this->subject;
            $this->mailServer->Body    = $this->message;
            $this->mailServer->send();
            return true;
        } catch (Exception $e) {
            return false;
        }
    }
}
