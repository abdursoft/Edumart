<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Essentials\Helper;
use App\Models\Payment;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StripeController extends Controller
{
    private $pay;
    private $stripe;

    public function __construct($secret_key)
    {
        $this->pay    = new \Stripe\StripeClient($secret_key);
        $this->stripe = \Stripe\Stripe::setApiKey($secret_key);
    }

    // create payment
    public function payment(int | float $amount, string $trans_id, string $currency = "USD", array | string | null $data = null, $product, $name, $email = null, $phone = null)
    {
        $payment = $this->pay->checkout->sessions->create([
            'success_url'                => route('payment.stripe.callback',['trans' => $trans_id, 'status' => 'success','currency' => $currency]),
            'cancel_url'                 => route('payment.stripe.callback',['trans' => $trans_id, 'status' => 'cancel','currency' => $currency]),
            'customer_email'             => $email,
            'submit_type'                => 'pay',
            'payment_method_types'       => ['card'],
            'line_items'                 => [[
                'price_data' => [
                    'currency'     => $currency,
                    'unit_amount'  => $amount * 100,
                    'product_data' => [
                        'name'   => $product,
                        'images' => ['https://i.imgur.com/EHyR2nP.png'],
                    ],
                ],
                'quantity'   => 1,
            ]],
            'metadata'                   => $data,
            'mode'                       => 'payment',
            'billing_address_collection' => 'required',
        ]);
        if (empty($payment['id'])) {
            return false;
        } else {
            return [
                'id'       => $payment['id'],
                'url'      => $payment['url'],
                'amount'   => $payment['amount_total'] / 100,
                'currency' => $payment['currency'],
            ];
        }
    }

    // retrieve payment
    public function paymentRetrieve(string $paymentID)
    {
        return $this->pay->checkout->sessions->retrieve(
            $paymentID,
            []
        );
    }

    // make refund
    public function refund(string $charge_id)
    {
        return $this->pay->refunds->create(['charge' => $charge_id]);
    }

    // refund retrieve
    public function refundRetrieve(string $id)
    {
        return $this->pay->refunds->retrieve($id, []);
    }

    // refund cancel
    public function refundCancel(string $id)
    {
        return $this->pay->refunds->cancel($id, []);
    }

    public function callback(Request $request)
    {
        $payment = Payment::with('plan')->where('payment_intent', $request->query('trans'))->orderBy('id', 'desc')->first();
        if ($payment) {
            $stripe = $this->paymentRetrieve($payment->txn_id);
            if ($stripe->payment_status === 'paid' || $stripe->payment_status === 'completed') {
                try {
                    DB::beginTransaction();
                    $payment->update([
                        'status' => 'success',
                    ]);
                    Subscription::create([
                        'user_id'    => $payment->user_id,
                        'plan_id'    => $payment->plan_id,
                        'price'      => $payment->amount,
                        'status'     => 'active',
                        'start_date' => date('Y-m-d'),
                        'end_date'   => date('Y-m-d', strtotime("+" . Helper::getDays($payment->plan->type) . " days")),
                    ]);
                    DB::commit();
                    return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=success&msg=Payment has been completed");
                } catch (\Throwable $th) {
                    DB::rollBack();
                    return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment couldn't completed");
                }
            } else {
                return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Payment has been failed");
            }
        } else {
            return redirect()->away(trim(env('FRONT_END'),'/')."/payment?status=error&msg=Invalid payment ID");
        }
    }

    // webhook action
    public function webhook(Request $request)
    {
        $endpoint_secret = env('STRIPE_END_POINT');

        $payload    = @file_get_contents('php://input');
        $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
        $event      = null;

        $event = \Stripe\Webhook::constructEvent(
            $payload,
            $sig_header,
            $endpoint_secret
        );

        switch ($event->type) {
            case 'checkout.session.async_payment_failed':
                $session = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'failed']);
            case 'checkout.session.async_payment_succeeded':
                $session = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'success']);
            case 'checkout.session.completed':
                $session = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'completed']);
            case 'checkout.session.expired':
                $session = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'failed']);
            case 'payment_intent.canceled':
                $paymentIntent = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'canceled']);
            case 'payment_intent.created':
                $paymentIntent = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'pending']);
            case 'payment_intent.payment_failed':
                $paymentIntent = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'failed']);
            case 'payment_intent.succeeded':
                $paymentIntent = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'success']);
            case 'refund.created':
                $refund = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'pending']);
            case 'refund.failed':
                $refund = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'failed']);
            case 'refund.updated':
                $refund = $event->data->object;
                Payment::where('txn_id', $session->id)->update(['status' => 'success']);
            default:
                true;
        }
        http_response_code(200);
    }
}
