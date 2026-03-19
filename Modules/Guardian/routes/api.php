<?php

use Illuminate\Support\Facades\Route;
use Modules\Guardian\Http\Controllers\GuardianController;

Route::middleware(['auth:sanctum'])->prefix('v1')->group(function () {
    Route::apiResource('guardians', GuardianController::class)->names('guardian');
});
