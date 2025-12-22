<?php

namespace App\Traits;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Session;

trait ActivationClass
{
    public function purchaseValidation($request)
    {
        if (self::is_local()) {
            Session::put(base64_decode('cHVyY2hhc2VfY29kZQ=='), $request[base64_decode('cHVyY2hhc2VfY29kZQ==')]);
            Session::put(base64_decode('cHJvZHVjdF9pZA=='), $request[base64_decode('cHJvZHVjdF9pZA==')]);
            Session::put(base64_decode('dXNlcm5hbWU='), $request[base64_decode('dXNlcm5hbWU=')]);
            return base64_decode('aW5zdGFsbC9zdGVwMw==');
        } else {
            $remove = array("http://", "https://", "www.");
            $url = str_replace($remove, "", url('/'));

            $post = [
                base64_decode('dXNlcm5hbWU=') => $request[base64_decode('dXNlcm5hbWU=')],
                base64_decode('cHJvZHVjdF9pZA==') => $request[base64_decode('cHJvZHVjdF9pZA==')],
                base64_decode('cHVyY2hhc2VfY29kZQ==') => $request[base64_decode('cHVyY2hhc2VfY29kZQ==')],
                base64_decode('ZG9tYWlu') => $url,
            ];

            try {
                $response = Http::post(base64_decode('aHR0cHM6Ly9ldmFudG8uYWJkdXJzb2Z0LmNvbS9hcGkvc29mdHdhcmUtdmFsaWRhdGlvbg=='), $post);
                if ($response->ok() && $response->json('active') == '1') {
                    Session::put(base64_decode('cHVyY2hhc2VfY29kZQ=='), $request[base64_decode('cHVyY2hhc2VfY29kZQ==')]);
                    Session::put(base64_decode('dXNlcm5hbWU='), $request[base64_decode('dXNlcm5hbWU=')]);
                    Session::put(base64_decode('cHJvZHVjdF9pZA=='), $request[base64_decode('cHJvZHVjdF9pZA==')]);
                    return base64_decode('aW5zdGFsbC9zdGVwMw==');
                } else {
                    return base64_decode('aHR0cHM6Ly9ldmFudG8uYWJkdXJzb2Z0LmNvbS9yZWdpc3RyYXRpb24=');
                }
            } catch (\Exception $exception) {
                Session::put(base64_decode('cHVyY2hhc2VfY29kZQ=='), $request[base64_decode('cHVyY2hhc2VfY29kZQ==')]);
                Session::put(base64_decode('dXNlcm5hbWU='), $request[base64_decode('dXNlcm5hbWU=')]);
                Session::put(base64_decode('cHJvZHVjdF9pZA=='), $request[base64_decode('cHJvZHVjdF9pZA==')]);
                return base64_decode('aW5zdGFsbC9zdGVwMw==');
            }
        }
    }

    public function checkActivation()
    {
        if (self::is_local()) {
            return response()->json([
                'active' => 1
            ]);
        } else {
            $remove = array("http://", "https://", "www.");
            $url = str_replace($remove, "", url('/'));

            $post = [
                base64_decode('dXNlcm5hbWU=') => env(base64_decode('QlVZRVJfVVNFUk5BTUU=')),
                base64_decode('cHJvZHVjdF9pZA==') => env(base64_decode('U09GVFdBUkVfSUQ=')),
                base64_decode('cHVyY2hhc2VfY29kZQ==') => env(base64_decode('UFVSQ0hBU0VfQ09ERQ==')),
                base64_decode('ZG9tYWlu') => $url,
            ];
            try {
                $response = Http::post(base64_decode('aHR0cHM6Ly9ldmFudG8uYWJkdXJzb2Z0LmNvbS9hcGkvc29mdHdhcmUtdmFsaWRhdGlvbg=='), $post)->json();
                $status = $response['active'] ?? base64_encode(1);

                return response()->json([
                    'active' => (int)base64_decode($status)
                ]);

            } catch (\Exception $exception) {
                return response()->json([
                    'active' => 1
                ]);
            }
        }
    }

    public static function is_local(): bool
    {
        $whitelist = array(
            '127.0.0.1',
            '::1'
        );

        if (!in_array(request()->ip(), $whitelist)) {
            return false;
        }

        return true;
    }
}
