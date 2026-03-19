<?php

use App\Http\Controllers\Api\V1\Admin\AdminController;
use App\Http\Controllers\Api\V1\AdmissionController;
use App\Http\Controllers\Api\V1\BackupController;
use App\Http\Controllers\Api\V1\ContactController;
use App\Http\Controllers\Api\V1\ExamAdmitCardController;
use App\Http\Controllers\Api\V1\ProfileController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\Site\SiteController;
use Illuminate\Support\Facades\Route;

Route::get('/', [SiteController::class, 'home'])->name('home');
Route::get('/language/{lang}', [SiteController::class, 'lang'])->name('lang');

Route::middleware(['web'])->group(function () {
    Route::prefix('auth')->group(function () {
        Route::get('/register', [SiteController::class, 'register'])->name('register');
        Route::get('/login', [SiteController::class, 'login'])->name('login');
        Route::post('/login', [AuthController::class, 'login'])->name('login.action');
        Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
        Route::get('/captcha', [AuthController::class, 'captcha'])->name('captcha');
    });

    // admission routes
    Route::get('/admissions', [AdmissionController::class, 'newAdmission'])->name('admission');
    Route::post('/admissions/action', [AdmissionController::class, 'store'])->name('admission.action');
    Route::get('/admissions/document/{id}', [AdmissionController::class, 'download'])->name('admission.download');

    Route::get('/admit/download/{id?}', [ExamAdmitCardController::class, 'download']);


    Route::get('/page/{slug?}', [SiteController::class, 'page'])->name('page');

    Route::post('/upload-quill-image', [SiteController::class, 'quillUpload']);

    // administrative routes
    Route::get('/media/{type?}/{id?}', [SiteController::class, 'gallery'])->name('media');
    Route::get('/administrative/{role}/{id?}', [SiteController::class, 'administrative'])->name('administrative');

    Route::get('/contact', [SiteController::class, 'contact'])->name('contact');
    Route::post('/contact', [ContactController::class, 'contactPost'])->name('contact.post');

    Route::middleware('auth')->group(function () {
        Route::get('profile', [ProfileController::class, 'profile'])->name('profile');
        Route::post('profile-add', [ProfileController::class, 'store'])->name('profile.add');
        Route::post('profile-update', [ProfileController::class, 'update'])->name('profile.update');
    });
});

// password reset routes
Route::middleware('guest')->group(function () {
    Route::post('/password/email', [ForgotPasswordController::class, 'sendResetLinkEmail'])->name('password.email');
    Route::get('/password/reset', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('password.request');
    Route::get('/password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
    Route::post('/password/reset', [ResetPasswordController::class, 'reset'])->name('password.update');
});


// download database
Route::get('database-download',[AdminController::class,'secureDownload'])->name('download-database');
