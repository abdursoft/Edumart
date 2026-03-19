<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PaypalController extends Controller
{

    protected $paypalEmail;
    protected $paypalSecret;
    protected $paypalClient;
    protected $authToken;
    protected $paypalMode;
    protected $baseURL;
    public function __construct($client = null, $secret = null, $sandbox=true)
    {
        $this->paypalClient = $client;
        $this->paypalSecret = $secret;
        $this->paypalMode   = $sandbox;
        $this->baseURL      = $this->paypalMode === 'live' ? 'https://api.paypal.com' : 'https://api.sandbox.paypal.com';
        $this->getAccessToken();
    }

    public function getAccessToken()
    {

        $response = Http::withBasicAuth($this->paypalClient, $this->paypalSecret)
            ->asForm()
            ->post("{$this->baseURL}/v1/oauth2/token", [
                'grant_type' => 'client_credentials',
            ]);

        $this->authToken =  $response['access_token'];
    }

    public function payment(int | float $amount, string $trans_id, string $currency = "USD", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        try {
            $accessToken = $this->authToken;

            $response = Http::withToken($accessToken)->post("{$this->baseURL}/v2/checkout/orders", [
                'intent'              => 'CAPTURE',
                'purchase_units'      => [[
                    'amount'    => [
                        'currency_code' => $currency,
                        'value'         => number_format($amount, 2, '.', ''),
                    ],
                    'custom_id' => $trans_id,
                ]],
                'application_context' => [
                    'return_url' => route('payment.paypal.success',['trans' => $trans_id,'status' => 'success','currency' => $currency]),
                    'cancel_url' => route('payment.paypal.cancel',['trans' => $trans_id, 'status' => 'cancel','currency' => $currency])
                ],
            ]);

            if ($response->successful() && isset($response['links'])) {
                foreach ($response['links'] as $link) {
                    if ($link['rel'] === 'approve') {
                        return [
                            'id'       => $response['id'],
                            'url'      => $link['href'],
                            'amount'   => $amount,
                            'currency' => $currency,
                        ];
                    }
                }
            }
            return false;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public function captureOrder($orderId)
    {
        $accessToken = $this->authToken;

        $response = Http::withToken($accessToken)->post("{$this->baseURL}/v2/checkout/orders/{$orderId}/capture");
        return $response->json();
    }

    public function callback(Request $request)
    {
        $orderId  = $request->query('token');
        $response = $this->captureOrder($orderId);

        if (isset($response['status']) && $response['status'] === 'COMPLETED') {
            $customId = $response['purchase_units'][0]['custom_id'] ?? null;
            $deposit  = Payment::where('tnx_ID', $customId)->first();
            if ($deposit && $deposit->status == 0) {
                Payment::where('txn_id',$customId)->update(['status' => 'success']);
                return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=success&msg=Payment has been completed");
            }
        }

        return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment couldn't complete");
    }

    public function paypalCancel()
    {
        return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment couldn't complete");
    }
}
