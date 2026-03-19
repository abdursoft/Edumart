<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Abdursoft\LaravelBkash\Bkash;
use App\Models\Payment;

class BkashController extends Controller
{

    protected $bkash;
    protected $payMethod;
    public function __construct($username,$password,$secret,$appKey,$sandbox,$payMethod)
    {

        $this->bkash = new Bkash($username,$password,$appKey,$secret,$sandbox,env("APP_URL")."payment/bkash/callback");
        $this->payMethod = $payMethod;
    }

    /**
     * Create payment
     */
    public function payment(int|float $amount,string $trans_id, string $currency="BDT", array|string|null $data=null,$product, $phone=null){
        $payment = $this->bkash->paymentCreate($product,$amount,$trans_id);
        if($payment['statusCode']	=== '0000'){
            return [
                'id' => $payment['paymentID'],
                'url' => $payment['bkashURL'],
                'amount' => $payment['amount'],
                'currency' => $payment['currency']
            ];
        }else{
            return false;
        }
    }

    /**
     * Refund payment
     */
    public function refund(Request $request){
        $refund = $this->bkash->refund($request->id,$request->txn,$request->amount,$request->sku,$request->reason);
        if($refund['statusCode'] === '0000'){
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=success&msg=Refund has been completed");
        }else{
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Refund couldn't completed");
        }
    }

    /**
     * Bkash callback
     */
    public function callBack(Request $request){
        if($request->query('status') == 'success'){
            $execute = $this->bkash->paymentExecute($request->query('paymentID'));
            if($execute['statusCode'] == '0000'){
                Payment::where('txn_id',$request->paymentID)->update(['status' => 'completed']);
                return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=success&msg=Payment has been completed");
            }elseif($execute['statusCode'] == '2062'){
                return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=success&msg=Payment has been already completed");
            }else{
                return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment couldn't complete");
            }
        }elseif($request->query('status') == 'cancel'){
            Payment::where('txn_id',$request->paymentID)->update(['status' => 'canceled']);
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment has been canceled");
        }elseif($request->query('status') == 'failure'){
            Payment::where('txn_id',$request->paymentID)->update(['status' => 'failed']);
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment has been failed");
        }else{
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment couldn't complete");
        }
    }
}
