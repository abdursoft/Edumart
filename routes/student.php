<?php

/**
 * Student routes
 */

use App\Http\Controllers\Api\V1\StudentController;
use Illuminate\Support\Facades\Route;

Route::controller(StudentController::class)->group(function(){
    Route::get('dashboard', 'dashboard')->name('dashboard');
});
