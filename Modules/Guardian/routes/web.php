<?php

use Illuminate\Support\Facades\Route;
use Modules\Guardian\Http\Controllers\GuardianController;

Route::middleware(['auth', 'verified'])->prefix('guardian')->name('guardian.')->group(function () {
    Route::get('dashboard', [GuardianController::class, 'index'])->name('dashboard');
    Route::get('student/{id?}/stats', [GuardianController::class, 'stats'])->name('student.stats');
});
