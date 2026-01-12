<?php

namespace App\Traits;

use App\Models\EmailSetup;
use App\Models\SmsActiveMethod;
use App\Utility\Email;
use Twilio\Rest\Client;

trait MessageHandler
{
    protected $key;
    protected $name;
    protected $secret;
    protected $token;
    protected $phone;
    protected $email;
    protected $text;
    protected $mode;
    protected $msgType;
    protected $subject;
    protected $activeSms;
    protected $smsAttributes;


    public function smsInit($text =null,$subject, $to =null, $email, $name=null){
        $this->text = $text;
        $this->phone = $to;
        $this->email = $email;
        $this->name = $name;
        $this->subject = $subject;

        $this->activeSms = SmsActiveMethod::with('smsMethod')->first();
        $this->smsAttributes = $this->activeSms->smsMethod->attributes;
        call_user_func([$this,$this->activeSms->smsMethod->keyword]);
    }

    protected function getAttributes($key){
        $keyValue = "";
        foreach($this->smsAttributes as $item){
            if($item['name'] === $key){
                $keyValue = $item['value'];
            }
        }
        return $keyValue;
    }

    protected function nexMo(){
        $params = [
            "api_key" => $this->getAttributes('api_key'),
            "api_secret" => $this->getAttributes('api_secret'),
            "from" => $this->getAttributes('from'),
            "text" => $this->text,
            "to" => $this->phone
        ];
        $url = "https://rest.nexmo.com/sms/json";
        return $this->apiCall($url, $params);
    }

    protected function twilio(){
        $sid = $this->getAttributes('sid');
        $token = $this->getAttributes('token');

        $client = new Client($sid, $token);
        try {
            $message = $client->messages->create(
            $this->phone,
            array(
                'from' =>  $this->getAttributes('from'),
                'body' => $this->text
            )
            );
            return $message;
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    protected function ssl_wireless(){
        $params = [
            "api_token" => $this->getAttributes('api_token'),
            "sid" => $this->getAttributes('sid'),
            "msisdn" => $this->phone,
            "sms" => $this->text,
            "csms_id" => date('dmYh') . rand(10000, 99999)
        ];

        $url = $this->getAttributes('url');
        $params = json_encode($params);
        return $this->apiCall($url, $params);
    }


    protected function mim_sms(){
        $url = "https://api.mimsms.com/api/SmsSending/SMS";
        $data = [
            "UserName" => $this->getAttributes('username'),
            "api_key" => $this->getAttributes('api_key'),
            "MobileNumber" => $this->phone,
            "CampaignId" => $this->getAttributes('campaign_id'),
            "TransactionType" => $this->getAttributes('transaction_type'),
            "SenderName" => $this->getAttributes('sender_name'),
            "Message" => $this->text,
        ];
        return $this->apiCall($url, $data);
    }

    protected function mse_gat(){
        $url = "https://www.msegat.com/gw/sendsms.php";
        $data = [
            "apiKey" => $this->getAttributes('api_key'),
            "numbers" => $this->phone,
            "userName" => $this->getAttributes('username'),
            "userSender" => $this->getAttributes('user_sender'),
            "msg" => $this->text
        ];
        return $this->apiCall($url, $data);
    }

    protected function sparrow(){
        $url = "http://api.sparrowsms.com/v2/sms/";

        $args = http_build_query(array(
            "token" => $this->getAttributes('token'),
            "from" => $this->getAttributes('from'),
            "to" => $this->phone,
            "text" => $this->text
        ));

        return $this->apiCall($url, $args);
    }

    protected function bulksmsbd(){
        $url = "http://bulksmsbd.net/api/smsapi";
        $api_key = $this->getAttributes('api_key');
        $senderid = $this->getAttributes('senderid');
        $number = $this->phone;
        $message = $this->text;

        $data = [
            "api_key" => $api_key,
            "senderid" => $senderid,
            "number" => $number,
            "message" => $message
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }


    protected function apiCall($url, $params){
        $params = json_encode($params);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Content-Length: ' . strlen($params),
            'accept:application/json'
        ));
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }

    protected function email(){
        new Email((object)[
            "host" => $this->getAttributes('host'),
            "username" => $this->getAttributes('username'),
            "password" => $this->getAttributes('password'),
            "port" => $this->getAttributes('port'),
            "from" => $this->getAttributes('from'),
            "app" => $this->getAttributes('app')
        ],$this->email,$this->name,$this->text,$this->subject);
    }
}
