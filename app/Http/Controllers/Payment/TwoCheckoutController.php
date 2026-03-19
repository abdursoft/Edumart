<?php
namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use Illuminate\Http\Request;

class TwoCheckoutController extends Controller
{
    protected $sellerId;
    protected $privateKey;
    protected $secretWord;
    protected $sandbox;

    public function __construct($privateKey, $secretWord, $sellerId, $sandbox = true)
    {
        $this->sellerId   = $sellerId;
        $this->privateKey = $privateKey;
        $this->secretWord = $secretWord;
        $this->sandbox    = $sandbox; // true/false
    }

    // Generate payment URL to redirect
    public function payment(int | float $amount, string $trans_id, string $currency = "USD", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        $payload = [
            'sid'             => $this->sellerId,
            'mode'            => '2CO',
            'currency_code'   => $currency,
            'order-ext-ref'   => $trans_id,
            'li_0_type'       => 'product',
            'li_0_name'       => "Pay to " . env('APP_NAME'),
            'li_0_product_id' => rand(1000,999999),
            'li_0_price'      => round($amount, 2),
            'li_0_quantity'   => "1",
            'li_0_tangible'   => "N",
            'return-url'      => route('payment.twocheckout.callback',['currency' => $currency]),
            'demo'            => $this->sandbox ? 'Y' : '',
        ];

        $html = '<form id="twocheckout_form" method="post" action="https://secure.2checkout.com/checkout/buy">';
        foreach ($payload as $key => $value) {
            $html .= '<input type="hidden" name="' . htmlspecialchars($key) . '" value="' . htmlspecialchars($value) . '">';
        }
        $html .= '</form>';
        $html .= '<script>document.getElementById("checkout_form").submit();</script>';

        return [
            'id'       => sha1(uniqid()),
            'url'      => $html,
            'type'     => 'html',
            'amount'   => $amount,
            'currency' => $currency,
        ];
    }

    // Callback after payment
    public function callback(Request $request)
    {
        $order_number = $request->input('order_number');
        $trans_id     = $request->input('merchant_order_id');

        $hash = strtoupper(
            md5($this->secretWord . $this->sellerId . $order_number . $request->input('total'))
        );

        if ($hash === $request->input('key')) {
            Payment::where('txn_id', $trans_id)->update([
                'status' => 'success',
            ]);
            return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=success&msg=Payment has been completed");
        } else {
            Payment::where('txn_id', $trans_id)->update([
                'status' => 'failed',
            ]);
        }

        return redirect()->away(trim(env('FRONT_END'), '/') . "/payment?status=failed&msg=Payment couldn't completed");
    }

    // IPN handler (webhook)
    public function webhook(Request $request)
    {
        $params = $request->all();

        if (! isset($params['md5_hash'])) {
            return response('Invalid', 400);
        }

        $hash = strtoupper(
            md5(
                $params['sale_id'] .
                $this->sellerId .
                $params['invoice_id'] .
                $this->secretWord
            )
        );

        if ($hash === $params['md5_hash'] && $params['message_type'] === 'ORDER_CREATED') {
            Payment::where('txn_id', $params['vendor_order_id'])->update([
                'status'     => 'completed',
                'gateway_id' => $params['sale_id'],
            ]);
        }

        return response('IPN Processed', 200);
    }
}
