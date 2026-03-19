<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use App\Models\Refund;
use App\Models\SiteSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class FlutterWaveController extends Controller
{
    protected $secretKey;
    protected $publicKey;
    protected $baseURL;

    public function __construct($publicKey, $secretKey, $sandbox = true)
    {
        $this->secretKey = $secretKey;
        $this->publicKey = $publicKey;
        $this->baseURL   = 'https://api.flutterwave.com/v3';
    }

    // Create a payment and get redirect URL
    public function payment(int | float $amount, string $trans_id, string $currency = "USD", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        $site = SiteSetting::find(1);
        // return $site;
        $payload = [
            "amount"            => 1000,
            "tx_ref"            => $trans_id,
            "currency"          => $currency,
            "redirect_url"      => route('payment.flutterwave.callback',['currency' => $currency]),
            "customer"          => [
                "email"        => $email,
                "phone_number" => $phone,
                "name"         => $name,
            ],
            "customizations"    => [
                "title" => "Payment to ". $site->site_name ?? env('APP_NAME'),
                "logo"  => 'https://abdursoft.com/assets/images/logo/abdursoft-f.png',
            ],
            "max_retry_attempt" => 5,
            "payment_options"   => "card, ussd, mobilemoneyghana",
        ];

        $response = Http::withToken($this->secretKey)
            ->post("{$this->baseURL}/payments", $payload)
            ->json();

        if (isset($response['status']) && $response['status'] === 'success') {
            return [
                'id'       => sha1(uniqid()),
                'url'      => $response['data']['link'],
                'amount'   => $amount,
                'currency' => $currency,
            ];
        }

        return $response;
    }

    // Redirect callback
    public function callback(Request $request)
    {
        $status         = $request->query('status');
        $tx_ref         = $request->query('tx_ref');
        $transaction_id = $request->query('transaction_id');

        if ($status === 'successful') {
            // Verify transaction
            $verify = Http::withToken($this->secretKey)
                ->get("{$this->baseURL}/transactions/{$transaction_id}/verify")
                ->json();

            if ($verify['status'] === 'success' && $verify['data']['tx_ref'] === $tx_ref) {
                Payment::where('txn_id', $tx_ref)->update([
                    'status' => 'success',
                ]);
                return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
            }
        } else {
            Payment::where('txn_id', $tx_ref)->update([
                'status' => 'failed',
            ]);
        }
        return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=failed&msg=Payment couldn't completed");
    }

    // Webhook handler
    public function webhook(Request $request, $webhook)
    {
        $secretHash = $webhook; // You must set this if using hash verification
        $signature  = $request->header('verif-hash');

        if (! $signature || $signature !== $secretHash) {
            return response('Unauthorized', 401);
        }

        $data   = $request->input('data');
        $tx_ref = $data['tx_ref'] ?? null;

        if ($data['status'] === 'successful') {
            Payment::where('txn_id', $tx_ref)->update([
                'status' => 'success',
            ]);
        } else {
            Payment::where('txn_id', $tx_ref)->update([
                'status' => 'failed',
            ]);
        }

        return response('Webhook received', 200);
    }

    // Optional: Refund a payment
    public function refund(string $transaction_id, float $amount, string $reason = 'Refund')
    {

        $response = Http::withToken($this->secretKey)
            ->post("{$this->baseURL}/refunds", [
                'amount'         => $amount,
                'transaction_id' => $transaction_id,
                'reason'         => $reason,
            ])
            ->json();

        if ($response['status'] === 'success') {
            Refund::create([
                'refund_id'     => $response['data']['id'],
                'refund_amount' => $amount,
                'status'        => $response['data']['status'],
                'reason'        => $reason,
                'payment_id'    => $transaction_id,
            ]);

            return [
                'status'    => $response['data']['status'],
                'refund_id' => $response['data']['id'],
            ];
        }

        return false;
    }
}
