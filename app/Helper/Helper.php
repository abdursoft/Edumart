<?php

namespace App\Helper;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class Helper extends Controller
{

    // secure local and s3 content url
    public static function generateSecureToken($filePath, $ipAddress, $extension, $expires = 10)
    {

        $payload = [
            'path'       => $filePath,
            'ip'         => $ipAddress,
            'extension'  => $extension,
            'expires_at' => now()->addMinutes($expires)->timestamp,
        ];

        $encrypted = Crypt::encryptString(json_encode($payload));
        return rtrim(strtr(base64_encode($encrypted), '+/', '-_'), '=');
    }

}
