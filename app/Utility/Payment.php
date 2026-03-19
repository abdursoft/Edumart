<?php

namespace App\Utility;

use App\Traits\PaymentInit;
use Illuminate\Http\Request;

class Payment
{

    use PaymentInit;

    public function setCallback(){
        if(!empty($this->pay)){
            call_user_func([$this, $this->pay->name]);
        }
    }

    /**
     * Stripe payment callback
     */
    public function stripeCallBack(Request $request){
        $this->init('stripe',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->callback($request);
    }

    /**
     * Stripe payment webhook
     */
    public function stripeWebhook(Request $request){
        $this->init('stripe',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->webhook($request,$this->webhook);
    }

    // sslcommerze callback
    public function sslCommerzCallBack(Request $request){
        $this->init('sslcommerz','BDT');
        $this->setCallback();
        return $this->paymentMethod->callback($request);
    }

    // sslCommerzWebhook
    public function sslCommerzWebhook(Request $request){
        $this->init('sslcommerz','BDT');
        $this->setCallback();
        return $this->paymentMethod->webhook($request,$this->webhook);
    }

    // aamarpay callback
    public function aamarpayCallback(Request $request){
        $this->init('aamarpay','bdt');
        $this->setCallback();
        return $this->paymentMethod->callback($request);
    }

    /**
     * Bkash payment callback
     */
    public function bkashCallBack(Request $request){
        $this->init('bkash','BDT');
        $this->setCallback();
        return $this->paymentMethod->callBack($request);
    }

    /**
     * Paypal payment gateway callback
     */
    public function paypalCallBack(Request $request){
        $this->init('paypal',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->callBack($request);
    }

    /**
     * Flutter wave payment gateway
     */
    public function flutterwaveCallback(Request $request){
        $this->init('flutterwave',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->callBack($request);
    }

    /**
     * Flutter wave payment gateway webhook
     */
    public function flutterwaveWebhook(Request $request){
        $this->init('flutterwave',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->webhook($request,$this->webhook);
    }

    /**
     * Two checkout wave payment gateway
     */
    public function twoCheckoutCallback(Request $request){
        $this->init('twocheckout',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->callBack($request);
    }

    /**
     * Two checkout payment gateway webhook
     */
    public function twoCheckoutWebhook(Request $request){
        $this->init('twocheckout',$request->query('currency') ?? 'USD');
        $this->setCallback();
        return $this->paymentMethod->webhook($request,$this->webhook);
    }

}