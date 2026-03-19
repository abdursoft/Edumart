<?php

use Illuminate\Support\Facades\Route;
use Modules\Bkash\Http\Controllers\BkashController;

Route::middleware(['auth:sanctum'])->prefix('v1')->group(function () {
    Route::apiResource('bkashes', BkashController::class)->names('bkash');
});
