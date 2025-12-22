<?php

namespace App\Http\Controllers\Install;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Traits\ActivationClass;
use App\Traits\SettingsTrait;
use App\Utility\InstallationHelper;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Symfony\Component\Process\ExecutableFinder;

class InstallationController extends Controller
{
    use ActivationClass, SettingsTrait;

    public function step0()
    {
        // dd(ActivationClass::is_local());
        return view('installation.step0');
    }

    public function step1()
    {
        $permission['curl_enabled']       = function_exists('curl_version');
        $permission['db_file_write_perm'] = is_writable(base_path('.env'));
        return view('installation.step1', compact('permission'));
    }

    public function step2()
    {
        return view('installation.step2');
    }

    public function step3(Request $request)
    {
        return view('installation.step3');
    }

    public function step4()
    {
        return view('installation.step4');
    }

    public function step5()
    {
        // Start symlink
        if (DOMAIN_POINTED_DIRECTORY == 'public' && function_exists('shell_exec')) {
            Artisan::call('storage:link');
        }

        // End symlink
        try {
            $this->setENV('APP_URL', url('/'));
        } catch (Exception $exception) {
            // Fallback if env update fails
        }

        self::updateRobotTextFile();

        // REMOVE or DISABLE this — it does not exist and breaks your app
        // Artisan::call('file:permission');

        // These are safe to keep
        Artisan::call('config:cache');
        Artisan::call('config:clear');
        Artisan::call('app:expired-subscription-command');

        return view('installation.step5');
    }


    public function step6()
    {
        return view('installation.step6');
    }

    public function purchase_code(Request $request)
    {
        $pattern     = "/^([a-f0-9]{8})-(([a-f0-9]{4})-){3}([a-f0-9]{12})$/i";
        $trimmedCode = trim($request->purchase_code);
        if (! preg_match($pattern, $trimmedCode)) {
            if (preg_match("/\s+/", $request->purchase_code)) {
                Session::flash('error', 'Invalid code format with leading or trailing whitespace');
                return back();
            } else {
                Session::flash('error', 'Code format is incorrect (error code: 1020)');
                return back();
            }
        }

        InstallationHelper::setENV('SOFTWARE_ID', str_replace(' ', '', $request['product_id']));
        InstallationHelper::setENV('BUYER_USERNAME', str_replace(' ', '', $request['username']));
        InstallationHelper::setENV('PURCHASE_CODE', str_replace(' ', '', $request['purchase_code']));

        $post = [
            'name'          => $request['name'],
            'email'         => $request['email'],
            'username'      => $request['username'],
            'product_id'    => $request['product_id'],
            'purchase_code' => $request['purchase_code'],
            'domain'        => preg_replace("#^[^:/.]*[:/]+#i", "", url('/')),
        ];
        $response = $this->purchaseValidation($post);

        return redirect($response . '?token=' . bcrypt('step_3'));
    }

    public static function updateRobotTextFile(): void
    {
        try {
            $path = DOMAIN_POINTED_DIRECTORY == 'public' ? public_path('robots.txt') : base_path('robots.txt');
            if (! File::exists($path)) {
                fopen($path, "w") or die("Unable to open file!");
            }
            $content = "User-agent: *\nDisallow: /login/admin/\nSitemap: " . url('/sitemap.xml');
            if (! File::exists($path)) {
                File::put($path, $content);
            }
            File::put($path, $content);
        } catch (\Exception $exception) {
        }
    }

    public function database_installation(Request $request)
    {
        if (self::check_database_connection($request->host, $request->database, $request->username, $request->password)) {
            $dump     = $this->db_dumper();
            $key      = base64_encode(random_bytes(32));
            $jwtKEY   = base64_encode(random_bytes(32));
            $sslKey   = base64_encode(random_bytes(32));
            $videoKey = Str::random(32);
            $videoIV  = Str::random(16);

            $output =
            'APP_NAME=eduMart' . time() . '
            APP_ENV=live
            APP_KEY=base64:' . $key . '
            APP_DEBUG=true
            APP_INSTALL=true
            APP_LOG_LEVEL=debug
            APP_MODE=local
            APP_URL=' . URL::to('/') . '

            DB_CONNECTION=mysql
            DB_HOST=' . $request->host . '
            DB_PORT=3306
            DB_DATABASE=' . $request->database . '
            DB_USERNAME=' . $request->username . '
            DB_PASSWORD=' . $request->password . '
            MYSQL_DUMP_PATH=' . $dump . '

            BROADCAST_DRIVER=log
            CACHE_DRIVER=file
            SESSION_DRIVER=file
            SESSION_LIFETIME=60
            QUEUE_DRIVER=sync

            APP_LOCALE=en
            APP_FALLBACK_LOCALE=en
            APP_FAKER_LOCALE=en_US

            APP_THEME=default

            AWS_ENDPOINT=
            AWS_ACCESS_KEY_ID=
            AWS_SECRET_ACCESS_KEY=
            AWS_DEFAULT_REGION=us-east-1
            AWS_BUCKET=


            SESSION_DRIVER=file
            SESSION_LIFETIME=120

            REDIS_HOST=127.0.0.1
            REDIS_PASSWORD=null
            REDIS_PORT=6379

            PUSHER_APP_ID=
            PUSHER_APP_KEY=
            PUSHER_APP_SECRET=
            PUSHER_APP_CLUSTER=mt1

            JWT_SECRET=' . str_replace('/', 'x', $jwtKEY) . '
            OPEN_SSL_KEY=' . str_replace('/', 'x', $sslKey) . '
            FRONT_END=
            R_GUEST=

            PURCHASE_CODE=' . str_replace(' ', '', Session::get(base64_decode('cHVyY2hhc2VfY29kZQ=='))) . '
            BUYER_USERNAME=' . str_replace(' ', '', Session::get(base64_decode('dXNlcm5hbWU='))) . '
            SOFTWARE_ID=UFJfMmszMzIzNDMyNA==

            SOFTWARE_VERSION=' . SOFTWARE_VERSION . '
            VIDEO_KEY=' . $videoKey . '
            VIDEO_IV=' . $videoIV . '
            ';

            $xEnv = file_get_contents(base_path('.env.example'));
            $file = fopen(base_path('.env'), 'w');
            fwrite($file, $output);
            fclose($file);

            $path = base_path('.env');
            if (file_exists($path)) {
                return redirect('install/step4');
            } else {
                file_put_contents(base_path('.env'), $xEnv);
                Session::flash('error', 'Database error! Environment variable file path doesn\'t exists');
                return redirect('install/step3');
            }
        } else {
            Session::flash('error', 'Database error or Invalid database credentials!');
            return back();
        }
    }

    public function import_sql()
    {
        try {
            $sql_path = base_path('installation/sql/database.sql');
            DB::unprepared(file_get_contents($sql_path));
            return redirect('install/step5');
        } catch (\Exception $exception) {
            Session::flash('error', 'Your database is not clean, do you want to clean the database then import?');
            return back();
        }
    }

    public function force_import_sql()
    {
        try {
            Artisan::call('db:wipe');
            $sql_path = base_path('installation/sql/database.sql');
            DB::unprepared(file_get_contents($sql_path));
            return redirect('install/step5');
        } catch (\Exception $exception) {
            Session::flash('error', 'Please check your database permission!');
            return back();
        }
    }

    public function db_dumper()
    {
        $dumpBinaryPath = env('MYSQL_DUMP_PATH');

        if (! $dumpBinaryPath) {
            $finder        = new ExecutableFinder();
            $mysqldumpPath = $finder->find('mysqldump');
            $dumpBinaryPath ? dirname($mysqldumpPath) : null;
        }
        config(['database.connections.mysql.dump.dump_binary_path' => $dumpBinaryPath]);
        return $dumpBinaryPath;
    }

    public function systemSettings(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "name"     => "required|string",
            "email"    => "required|email|unique:users,email",
            "phone"    => "required|string",
            "password" => "required|string|min:6",
        ]);

        if ($validator->fails()) {
            Session::put('error', 'Invalid admin data, try again!');
            return back();
        }

        try {
            $token = rand(1000, 9999);
            if (! empty($request->role) && $request->role == 'admin') {
                $count = User::where('role', 'admin')->count();
                if ($count >= 1) {
                    Session::put('error', 'Admin registration limit over');
                    return redirect('install/step6');
                }
            }
            User::create(
                [
                    "name"        => $request->input('name'),
                    "email"       => $request->input('email'),
                    "otp"         => $token,
                    "role"        => $request->role ?? 'user',
                    "phone"       => $request->phone,
                    "is_verified" => 1,
                    "password"    => password_hash($request->input('password'), PASSWORD_DEFAULT),
                ]
            );
            Session::put('success', 'The admin was successfully created.');
            Session::put('admin', $request->name);
            Session::forget('installation');
            return redirect('install/step6');
        } catch (\Throwable $th) {
            Session::put('error', 'Internal server error!');
            return back();
        }
    }

    public function check_database_connection($db_host = "", $db_name = "", $db_user = "", $db_pass = "")
    {

        try {
            @mysqli_connect($db_host, $db_user, $db_pass, $db_name);
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }
}
