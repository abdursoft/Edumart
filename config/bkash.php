<?php 

/*
 * This file is part of the LaraBkash package.
 *
 * (c) Abdur Rahman <   
 * https://abdursoft.com>
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */


return [

    'mode' => env('BKASH_MODE', 'sandbox'),

    'sandbox' => [
        'base_url' => 'https://tokenized.sandbox.bka.sh/v1.2.0-beta',
        'username' => env('BKASH_USERNAME'),
        'password' => env('BKASH_PASSWORD'),
        'app_key' => env('BKASH_APP_KEY'),
        'app_secret' => env('BKASH_APP_SECRET'),
    ],

    'production' => [
        'base_url' => 'https://tokenized.pay.bka.sh/v1.2.0-beta',
        'username' => env('BKASH_PROD_USERNAME'),
        'password' => env('BKASH_PROD_PASSWORD'),
        'app_key' => env('BKASH_PROD_APP_KEY'),
        'app_secret' => env('BKASH_PROD_APP_SECRET'),
    ],

    'callback_url' => env('BKASH_CALLBACK_URL'),

];