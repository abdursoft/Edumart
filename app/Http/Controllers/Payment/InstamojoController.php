<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use App\Models\Refund;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class InstamojoController extends Controller
{
    protected $base_url;
    protected $apiKey;
    protected $authToken;
    protected $payMethod;
    protected $apiSalt;

    public function __construct($apiKey, $authToken, $payMethod, $apiSalt)
    {
        $this->apiKey    = $apiKey;
        $this->authToken = $authToken;
        $this->payMethod = $payMethod;
        $this->apiSalt   = $apiSalt;
        $this->base_url  = 'https://www.instamojo.com/api/1.1/';
    }

    // Create payment request
    public function payment(float | int $amount, string $trans_id, string $currency = "INR", array | string | null $data = null, $product, $name, string | null $email = null, $phone = null)
    {
        $payload = [
            'purpose'                 => $product,
            'amount'                  => $amount,
            'phone'                   => $phone,
            'buyer_name'              => $name,
            'redirect_url'            => route('payment.instamojo.callback',['trans' => $trans_id, 'currency' => $currency]),
            'webhook'                 => route('payment.instamojo.webhook',['trans' => $trans_id, 'currency' => $currency]),
            'send_email'              => true,
            'send_sms'                => true,
            'email'                   => $email,
            'allow_repeated_payments' => false,
        ];

        $response = Http::withHeaders([
            'X-Api-Key'    => $this->apiKey,
            'X-Auth-Token' => $this->authToken,
        ])->post($this->base_url . 'payment-requests/', $payload);

        $result = $response->json();

        if ($result['success'] ?? false) {
            return [
                'id'       => sha1(uniqid()),
                'url'      => $result['payment_request']['longurl'],
                'amount'   => $amount,
                'currency' => $currency,
            ];
        }

        return false;
    }

    // Optional redirect callback
    public function callback(Request $request)
    {
        // You can log or verify the payment_id and payment_request_id here
        // This is mostly informational as webhook handles the final confirmation
        return redirect()->route('payment.status')->with('status', 'Payment processing. You’ll be notified soon.');
    }

    // Webhook: validates MAC and updates payment status
    public function webHook(Request $request)
    {
        $data         = $request->except('mac');
        $mac_provided = $request->input('mac');

        ksort($data, SORT_STRING | SORT_FLAG_CASE);
        $mac_calculated = hash_hmac("sha1", implode("|", $data), $this->apiSalt);

        if ($mac_provided == $mac_calculated) {
            $status    = $request->input('status');
            $paymentId = $request->input('payment_id');

            $payment = Payment::where('txn_id', $paymentId)->first();
            if ($payment) {
                $payment->status = $status === 'Credit' ? 'success' : 'failed';
                $payment->save();
            }
        } else {
            logger()->error('Instamojo Webhook: MAC mismatch');
        }

        return response('OK', 200);
    }

    // Refund logic
    public function refund($txnID, $paymentID, $message)
    {
        $payload = [
            'transaction_id' => $txnID,
            'payment_id'     => $paymentID,
            'type'           => 'QFL', // or 'PTH' based on your account
            'body'           => $message,
        ];

        $response = Http::withHeaders([
            'X-Api-Key'    => $this->apiKey,
            'X-Auth-Token' => $this->authToken,
        ])->post($this->base_url . 'refunds/', $payload);

        $result = $response->json();

        if ($result['success'] ?? false) {
            Refund::create([
                'refund_id'     => $result['refund']['id'],
                'total_amount'  => $result['refund']['total_amount'],
                'refund_amount' => $result['refund']['refund_amount'],
                'status'        => $result['refund']['status'],
                'reason'        => $message,
                'payment_id'    => $paymentID,
            ]);

            return [
                'status'        => strtolower($result['refund']['status']),
                'refund_amount' => $result['refund']['refund_amount'],
            ];
        }

        return false;
    }
}
