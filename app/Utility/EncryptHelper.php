<?php
namespace App\Utility;


/**
 * Open SSL Encryption and decryption system
 */


class EncryptHelper
{
    protected static $cipher = 'AES-256-CBC';

    public static function encrypt($string)
    {
        $key = env('OPEN_SSL_KEY'); // ✅ Fetch at runtime
        $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length(self::$cipher));
        $encrypted = openssl_encrypt($string, self::$cipher, $key, 0, $iv);
        return base64_encode($encrypted . '::' . base64_encode($iv));
    }

    public static function decrypt($encrypted)
    {
        $key = env('OPEN_SSL_KEY'); // ✅ Fetch at runtime
        [$encryptedData, $iv] = explode('::', base64_decode($encrypted));
        return openssl_decrypt($encryptedData, self::$cipher, $key, 0, base64_decode($iv));
    }
}
