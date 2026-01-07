<?php

/**
 * Teacher routes
 */

use App\Http\Controllers\Api\V1\TeacherController;
use Illuminate\Support\Facades\Route;

Route::controller(TeacherController::class)->group(function(){
    Route::get('dashboard', 'dashboard')->name('dashboard');
});
