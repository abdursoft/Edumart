<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Essentials\Helper;
use App\Models\Payment;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AamarpayController extends Controller
{
    private $user;
    private $storeId;
    private $signature;
    private $paymentURL;

    public function __construct($storeId, $signature, $sandbox,$user=null)
    {
        $this->user       = $user;
        $this->storeId    = $storeId;
        $this->signature  = $signature;
        $this->paymentURL = $sandbox ? "https://sandbox.aamarpay.com/index.php" : "https://secure.aamarpay.com/index.php";
    }

    public function payment(int | float $amount, string $trans_id, string $currency = "BDT", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        $curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL            => $this->paymentURL,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING       => '',
            CURLOPT_MAXREDIRS      => 10,
            CURLOPT_TIMEOUT        => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION   => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST  => 'POST',
            CURLOPT_POSTFIELDS     => [
                'store_id'      => $this->storeId,
                'signature_key' => $this->signature,
                'cus_name'      => $name,
                'cus_email'     => $email,
                'cus_phone'     => $phone,
                'amount'        => $amount,
                'currency'      => $currency,
                'tran_id'       => $trans_id,
                'desc'          => $product,
                'success_url'   => route('payment.aamarpay.success'),
                'fail_url'      => route('payment.aamarpay.fail'),
                'cancel_url'    => route('payment.aamarpay.cancel'),
                'type'          => 'json'
            ],
        ]);

        $response = curl_exec($curl);
        $response = json_decode($response);

        curl_close($curl);
        return [
            'id'       => sha1(uniqid()),
            'url'      => $response->payment_url,
            'amount'   => $amount,
            'currency' => $currency,
        ];
    }

    public function callback(Request $request){
        $payment = Payment::with('plan')->where('payment_intent', $request->mer_txnid)->orderBy('id', 'desc')->first();
        // return $request->all();
        if ($payment) {
            try {
                DB::beginTransaction();
                $payment->update([
                    'status' => $request->pay_status == 'Successful' ? 'success' : 'failed',
                ]);
                Subscription::create([
                    'user_id'    => $payment->user_id,
                    'plan_id'    => $payment->plan_id,
                    'price'      => $payment->amount,
                    'status'     => $request->pay_status == 'Successful' ? 'active' : 'inactive',
                    'start_date' => date('Y-m-d'),
                    'end_date'   => date('Y-m-d', strtotime("+" . Helper::getDays($payment->plan->type) . " days")),
                ]);
                DB::commit();
                if($request->pay_status == 'Successful'){
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
                }else{
                    return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't completed");
                }
            } catch (\Throwable $th) {
                DB::rollBack();
                return response()->json(['msg' => $th->getMessage()]);
                return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Payment couldn't process");
            }
        } else {
            return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=error&msg=Invalid payment ID");
        }
    }
}
