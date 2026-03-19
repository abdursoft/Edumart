<?php

use Illuminate\Support\Facades\Route;
use Modules\SSlCommerz\Http\Controllers\SSlCommerzController;

Route::middleware(['auth:sanctum'])->prefix('v1')->group(function () {
    Route::apiResource('sslcommerzs', SSlCommerzController::class)->names('sslcommerz');
});
