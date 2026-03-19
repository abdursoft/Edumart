<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Razorpay\Api\Api;

class RazorpayController extends Controller
{
    protected $api;
    protected $apiKey;
    protected $apiSecret;

    public function __construct($apiKey, $apiSecret, $sandbox = true)
    {
        $this->apiKey = $apiKey;
        $this->apiSecret = $apiSecret;
        $this->api = new Api($this->apiKey, $this->apiSecret);
    }

    /**
     * Create Razorpay Payment Link
     */
    public function payment(int|float $amount, string $trans_id, string $currency = "USD", array|string|null $data = null, $product, $name, string|null $email = null, $phone = null)
    {
        try {
            $payment = $this->api->paymentLink->create([
                'amount'          => $amount * 100,
                'currency'        => $currency,
                'accept_partial'  => false,
                'description'     => $product,
                'customer'        => [
                    'name'    => $name,
                    'email'   => $email,
                    'contact' => $phone,
                ],
                'notify'          => ['sms' => true, 'email' => true],
                'reminder_enable' => true,
                'notes'           => is_array($data) ? $data : ['meta' => $data],
                'callback_url'    => route('payment.razorpay.success', ['trans' => $trans_id,'currency' => $currency]),
                'callback_method' => 'get',
            ]);
            return [
                'id'       => $payment['id'],
                'url'      => $payment['short_url'],
                'amount'   => $amount,
                'currency' => $currency,
            ];
        } catch (\Throwable $th) {
            return false;
        }
    }

    /**
     * Payment Success Callback
     */
    public function paymentSuccess(Request $request)
    {
        return redirect()->away(rtrim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
    }

    /**
     * Razorpay Webhook Handler
     */
    public function webHook(Request $request)
    {
        $razorpaySignature = $request->header('X-Razorpay-Signature');
        $body              = $request->getContent();

        $calculatedSignature = hash_hmac('sha256', $body, $this->apiSecret);

        if (hash_equals($calculatedSignature, $razorpaySignature)) {
            $data        = json_decode($body, true);
            $event       = $data['event'] ?? '';
            $paymentData = $data['payload']['payment']['entity'] ?? null;

            if ($event === 'payment.captured' && $paymentData) {
                // Do something with payment data, e.g., update DB
                return response()->json([
                    'status'   => 'success',
                    'user_id'  => $paymentData['notes']['user_id'] ?? null,
                    'amount'   => $paymentData['amount'] / 100,
                    'method'   => $paymentData['method'],
                    'currency' => $paymentData['currency'],
                ]);
            }

            return response()->json(['status' => 'ignored'], 200);
        }

        return response()->json(['status' => 'unauthorized'], 401);
    }
}
