<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Essentials\Helper;
use App\Models\Payment;
use App\Models\Subscription;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class SSlCommerzController extends Controller
{

    public $initURL;
    public $ipnURL;
    public $storeID;
    public $storePassword;
    public $userDetails;

    public function __construct($key, $secret, $sandbox, $userDetails)
    {
        $this->storeID       = $key;
        $this->storePassword = $secret;
        $this->userDetails   = $userDetails;
        $this->initURL       = $sandbox ? 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php' : 'https://securepay.sslcommerz.com/gwprocess/v4/api.php';
        $this->ipnURL        = $sandbox ? 'https://sandbox.sslcommerz.com/validator/api/validationserverAPI.php' : 'https://securepay.sslcommerz.com/validator/api/validationserverAPI.php';
    }

    public function payment(int | float $amount, string $trans_id, string $currency = "USD", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        try {
            $response = Http::asForm()->post($this->initURL, [
                "store_id"         => $this->storeID,
                "store_passwd"     => $this->storePassword,
                "total_amount"     => $amount,
                "currency"         => $currency,
                "tran_id"          => $trans_id,
                "success_url"      => route('payment.sslcommerz.success',['txn' => $trans_id,'status' => 'success', 'currency' => $currency]),
                "fail_url"         => route('payment.sslcommerz.fail',['txn' => $trans_id,'status' => 'fail', 'currency' => $currency]),
                "cancel_url"       => route('payment.sslcommerz.cancel',['txn' => $trans_id,'status' => 'cancel', 'currency' => $currency]),
                "ipn_url"          => $this->ipnURL,
                "cus_name"         => $name,
                "cus_email"        => $email,
                "cus_add1"         => $this->userDetails->address,
                "cus_city"         => $this->userDetails->city,
                "cus_state"        => $this->userDetails->district,
                "cus_postcode"     => $this->userDetails->zipcode,
                "cus_country"      => $this->userDetails->country,
                "cus_phone"        => $phone,
                "shipping_method"  => "NO",
                "product_name"     => $product,
                "product_category" => "Digital",
                "product_profile"  => "non-physical-goods",
                "product_amount"   => $amount,
            ]);
            return [
                'id'       => $response['sessionkey'],
                'url'      => $response['GatewayPageURL'],
                'amount'   => $amount,
                'currency' => $currency,
            ];
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function callback(Request $request)
    {
        $payment = Payment::with('plan')->where('payment_intent', $request->query('txn'))->orderBy('id', 'desc')->first();
        if ($payment) {
            try {
                DB::beginTransaction();
                $payment->update([
                    'status' => $request->query('status') == 'success' ? 'success' : 'failed',
                ]);
                Subscription::create([
                    'user_id'    => $payment->user_id,
                    'plan_id'    => $payment->plan_id,
                    'price'      => $payment->amount,
                    'status'     => $request->query('status') == 'success' ? 'active' : 'inactive',
                    'start_date' => date('Y-m-d'),
                    'end_date'   => date('Y-m-d', strtotime("+" . Helper::getDays($payment->plan->type) . " days")),
                ]);
                DB::commit();
                if($request->query('status') === 'success'){
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
                }else{
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't completed");
                }
            } catch (\Throwable $th) {
                DB::rollBack();
                return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't completed");
            }
        } else {
            return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Invalid payment ID");
        }
    }

    public function ipn(Request $request)
    {
        $payment = Payment::with('plan')->where('payment_intent', $request->query('txn'))->orderBy('id', 'desc')->first();
        if ($payment) {
            try {
                DB::beginTransaction();
                $payment->update([
                    'status' => $request->query('status') == 'success' ? 'success' : 'failed',
                ]);
                Subscription::create([
                    'user_id'    => $payment->user_id,
                    'plan_id'    => $payment->plan_id,
                    'price'      => $payment->amount,
                    'status'     => $request->query('status') == 'success' ? 'active' : 'inactive',
                    'start_date' => date('Y-m-d'),
                    'end_date'   => date('Y-m-d', strtotime("+" . Helper::getDays($payment->plan->type) . " days")),
                ]);
                DB::commit();
                if($request->query('status') === 'success'){
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
                }else{
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't completed");
                }
            } catch (\Throwable $th) {
                DB::rollBack();
                return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't completed");
            }
        } else {
            return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Invalid payment ID");
        }
    }
}
