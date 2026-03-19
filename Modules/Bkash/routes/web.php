<?php

use Illuminate\Support\Facades\Route;
use Modules\Bkash\Http\Controllers\BkashController;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::resource('bkashes', BkashController::class)->names('bkash');
});
