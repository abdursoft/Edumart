<?php

use Illuminate\Support\Facades\Route;
use Modules\SSlCommerz\Http\Controllers\SSlCommerzController;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::resource('sslcommerzs', SSlCommerzController::class)->names('sslcommerz');
});
