<?php

use App\Http\Controllers\Api\V1\AdmissionController;
use App\Http\Controllers\Api\V1\ExamAdmitCardController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\Site\SiteController;
use App\Models\District;
use App\Models\Division;
use App\Models\Thana;
use App\Models\Union;
use Illuminate\Support\Facades\Route;

Route::get('/', [SiteController::class, 'home'])->name('home');
Route::get('/language/{lang}', [SiteController::class, 'lang'])->name('lang');

Route::middleware(['web'])->group(function () {
    Route::prefix('auth')->group(function() {
        Route::get('register', [SiteController::class, 'register'])->name('register');
        Route::get('login', [SiteController::class, 'login'])->name('login');
        Route::post('login', [AuthController::class, 'login'])->name('login.action');
        Route::get('logout', [AuthController::class, 'logout'])->name('logout');
        Route::get('captcha', [AuthController::class, 'captcha'])->name('captcha');
    });

    Route::prefix('password')->name('password.')->group(function(){
        Route::get('reset-request', [ResetPasswordController::class, 'reset'])->name('request');
    });

    // admission routes
    Route::get('/admissions', [AdmissionController::class, 'newAdmission'])->name('admission');
    Route::post('admissions/action', [AdmissionController::class, 'store'])->name('admission.action');
    Route::get('admissions/document/{id}', [AdmissionController::class, 'download'])->name('admission.download');

    Route::get('admit/download/{id?}', [ExamAdmitCardController::class, 'download']);


    Route::get('page/{slug?}', [SiteController::class, 'page'])->name('page');

    Route::post('upload-quill-image', [SiteController::class, 'quillUpload']);

    // administrative routes
    Route::get('contact-us', [SiteController::class, 'administrative'])->name('contact');
    Route::get('media/{type?}/{id?}', [SiteController::class, 'gallery'])->name('media');
    Route::get('administrative/{role}/{id?}', [SiteController::class, 'administrative'])->name('administrative');

});


Route::get('json/{file}', function($file){
    $path = "static/json/{$file}.json";
    $files = json_decode(file_get_contents($path),true);

    $model = $file == 'division' ? Division::class : ($file == 'district' ? District::class : ($file == 'thana' ? Thana::class : Union::class));

    foreach($files as $key => $item){
        $model::create($item);
    }
});
