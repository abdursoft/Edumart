<?php
namespace App\Constants;

class SmsConfig
{

    public static $smsMethods = [
        [
            "name"       => "Email",
            "keyword"       => "email",
            "attributes" => [
                "host"     => "Email Host",
                "username" => "Email Username",
                "password" => "Email password",
                "port"     => "Server PORT",
                "from"     => "From Address",
                "app"      => "App Name",
            ],
        ],
        [
            "name"       => "BulksmsBD",
            "keyword"       => "bulksmsbd",
            "attributes" => [
                "api_key"  => "API KEY",
                "senderid" => "Sender ID",
            ],
        ],
        [
            "name"       => "Nexmo",
            "keyword"       => "nexMo",
            "attributes" => [
                "api_key"    => 'API KEY',
                "api_secret" => 'API SECRET',
                "from"       => "FROM",
            ],
        ],
        [
            "name"       => "Twilio",
            "keyword"       => "twilio",
            "attributes" => [
                'sid'   => 'SID',
                'token' => 'TOKEN',
            ],
        ],
        [
            "name"       => "SSL Wireless",
            "keyword"       => "ssl_wireless",
            "attributes" => [
                'api_token' => 'API TOKEN',
                'sid'       => 'SID',
            ],
        ],
        [
            "name"       => "Mim SMS",
            "keyword"       => "mim_sms",
            "attributes" => [
                'username'         => 'USERNAME',
                'api_key'          => 'API KEY',
                'campaign_id'      => 'CAMPAIGN ID',
                'transaction_type' => 'TRANSACTION TYPE',
                'sender_name'      => 'SENDER NAME',
            ],
        ],
        [
            "name"       => "MSEGAT",
            "keyword"       => "mse_gat",
            "attributes" => [
                'api_key'     => 'API KEY',
                'username'    => 'USERNAME',
                'user_sender' => 'USER SENDER',
            ],
        ],
        [
            "name"       => "Sparrow",
            "keyword"       => "sparrow",
            "attributes" => [
                'from'  => "FROM",
                'token' => 'TOKEN',
            ],
        ],
    ];
}
