<?php

namespace App\Traits;

use App\Http\Controllers\Payment\AamarpayController;
use App\Http\Controllers\Payment\BkashController;
use App\Http\Controllers\Payment\FlutterWaveController;
use App\Http\Controllers\Payment\PaypalController;
use App\Http\Controllers\Payment\RazorpayController;
use App\Http\Controllers\Payment\SSlCommerzController;
use App\Http\Controllers\Payment\StripeController;
use App\Http\Controllers\Payment\TwoCheckoutController;
use App\Models\Payment;
use App\Models\PaymentMethod;
use App\Models\UserDetail;

trait PaymentInit
{
    public $pay;
    public $key;
    public $secret;
    public $username;
    public $password;
    public $sandbox;
    public $webhook;
    public $currency;
    public $authUser;
    public $paymentMethod;
    public $userDetails;

    public function __call($method, $arguments) {
        if (method_exists($this, $method)) {
            return call_user_func_array([$this, $method], $arguments);
        } else {
            return "Method $method does not exist.";
        }
    }

    public function init($gateway,$currency,$userDetails=null){
        $method = PaymentMethod::where('name',$gateway)->first();
        if($method){
            $this->pay = $method;
            $this->currency = $currency;
            $this->sandbox = $method->mode;
            $this->userDetails = $userDetails;
        }else{
            return "Payment method not available";
        }
    }

    public function razorpay(){
        $this->key = $this->getAttributes('RAZORPAY_KEY');
        $this->secret = $this->getAttributes('RAZORPAY_SECRET');
        $this->webhook = $this->getAttributes('WEBHOOK_SECRET');
        $this->paymentMethod = new RazorpayController($this->key, $this->secret,$this->sandbox);
    }

    public function stripe(){
        $this->secret = $this->getAttributes('SECRET_KEY');
        $this->webhook = $this->getAttributes('WEBHOOK_KEY');
        $this->paymentMethod = new StripeController($this->secret);
    }

    public function bkash(){
        $this->key = $this->getAttributes('APP_KEY');
        $this->secret = $this->getAttributes('APP_SECRET');
        $this->password = $this->getAttributes('PASSWORD');
        $this->username = $this->getAttributes('USERNAME');
        $this->paymentMethod = new BkashController($this->username, $this->password, $this->secret, $this->key,$this->sandbox,1);
    }

    public function sslcommerz(){
        $this->key = $this->getAttributes('STORE_ID');
        $this->secret = $this->getAttributes('STORE_PASSWORD');
        $this->webhook = $this->getAttributes('IPN_URL');
        $this->paymentMethod = new SSlCommerzController($this->key, $this->secret,$this->sandbox,$this->userDetails);
    }

    public function aamarpay(){
        $this->key = $this->getAttributes('STORE_ID');
        $this->secret = $this->getAttributes('SIGNATURE_KEY');
        $this->webhook = $this->getAttributes('WEBHOOK');
        $this->paymentMethod = new AamarpayController($this->key, $this->secret,$this->sandbox,$this->userDetails);
    }
    public function twocheckout(){
        $store_id = $this->getAttributes('MERCHANT_CODE');
        $this->key = $this->getAttributes('PUBLIC_KEY');
        $this->secret = $this->getAttributes('SECRET_KEY');
        $this->webhook = $this->getAttributes('PRIVATE_KEY');
        $this->paymentMethod = new TwoCheckoutController($this->key, $this->secret,$store_id,$this->sandbox);
    }

    public function paypal(){
        $this->key = $this->getAttributes('APP_ID');
        $this->secret = $this->getAttributes('APP_SECRET');
        $this->webhook = $this->getAttributes('WEBHOOK');
        $this->paymentMethod = new PaypalController($this->key, $this->secret,$this->sandbox);
    }

    public function flutterwave(){
        $this->key = $this->getAttributes('PUBLIC_KEY');
        $this->secret = $this->getAttributes('SECRET_KEY');
        $this->webhook = $this->getAttributes('WEBHOOK');
        $this->paymentMethod = new FlutterWaveController($this->key, $this->secret,$this->sandbox);
    }

    public function payment(int|float $amount,string|array $data,string $trans_id,$plan,$user_id){
        try {
            $payment = $this->paymentMethod->payment($amount,$trans_id,$this->currency,$data,$plan->title,$this->authUser->name,$this->authUser->email,$this->authUser->phone);
            if(is_array($payment)){
                $this->makePayment($payment['id'],$trans_id,$this->authUser->id,$payment['amount'],'pending',$plan->id);
                return $payment;
            }else{
                return $payment;
            }
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }

    public function makePayment($id,$trans_id,$user,$amount,$status,$plan){
        Payment::create([
            'txn_id' => $id,
            'user_id' => $user,
            'plan_id' => $plan,
            'payment_intent' => $trans_id,
            'payment_method_id' => $this->pay->id,
            'amount' => $amount,
            'payment_date' => date('Y-m-d'),
            'status' => strtolower($status)
        ]);
    }

    public function getAttributes($key){
        foreach($this->pay->attributes as $item){
            if($item['name']['code'] === $key){
                return $item['value'];
            }
        }
    }
}