<?php

/**
 * Teacher routes
 */

use App\Http\Controllers\Api\V1\ProfileController;
use App\Http\Controllers\Api\V1\TeacherController;
use Illuminate\Support\Facades\Route;

Route::controller(TeacherController::class)->group(function(){
    Route::get('dashboard', 'dashboard')->name('dashboard');
    Route::get('subjects', 'subjects')->name('subjects');
    Route::get('assignments', 'assignments')->name('assignments');
    Route::get('assignment-process/{assignment?}', 'assignmentNew')->name('assignments.new');
    Route::get('attendance/{sub}/{class}', 'takeAttendance')->name('attendance');
});
Route::get('profile', [ProfileController::class,'profile'])->name('profile');
Route::post('profile-add', [ProfileController::class,'store'])->name('profile.add');
Route::post('profile-update', [ProfileController::class,'update'])->name('profile.update');
