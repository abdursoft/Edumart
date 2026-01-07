<?php

/**
 * Student routes
 */

use App\Http\Controllers\Api\V1\StudentController;
use Illuminate\Support\Facades\Route;

Route::controller(StudentController::class)->group(function(){
    Route::get('dashboard', 'dashboard')->name('dashboard');
    Route::get('admit-cards', 'admitCard')->name('admit_cards');
    Route::get('admit-cards/{examCode}/{admitCard}', 'admitCardDownload')->name('admit_cards.download');
});
