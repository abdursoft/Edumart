<?php

/**
 * Student routes
 */

use App\Http\Controllers\Api\V1\StudentController;
use Illuminate\Support\Facades\Route;

Route::controller(StudentController::class)->group(function(){
    Route::get('dashboard', 'dashboard')->name('dashboard');

    // admit card routes
    Route::get('admit-cards', 'admitCard')->name('admit_cards');
    Route::get('admit-cards/{examCode}/{admitCard}', 'admitCardDownload')->name('admit_cards.download');

    // mark sheet routes
    Route::get('mark-sheets', 'markSheet')->name('marksheets');
    Route::get('mark-sheets/{id}/download', 'markSheetDownload')->name('marksheets.download');

    // certificate routes
    Route::get('certificates', 'certificate')->name('certificates');

    // due and invoices
    Route::get('invoices/{id?}', 'invoices')->name('invoices');
});
