<?php

use App\Http\Controllers\Api\V1\ExamAdmitCardController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Site\SiteController;
use App\Models\District;
use App\Models\Division;
use App\Models\Thana;
use App\Models\Union;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;

Route::get('/', [SiteController::class, 'home'])->name('home');
Route::get('/language/{lang}', [SiteController::class, 'lang'])->name('lang');

Route::prefix('auth')->group(function(){
    Route::get('register', [SiteController::class, 'register'])->name('register');
    Route::get('login', [SiteController::class, 'login'])->name('login');
    Route::post('login', [AuthController::class, 'login'])->name('login.action');
});

Route::get('admit', function(){
    return view(theme('pages.admit-card'));
});

Route::get('admit/download/{id?}', [ExamAdmitCardController::class, 'download']);

Route::get('/set', function () {
    session(['foo' => 'bar']);
    return 'Set!';
});

Route::get('/get', function () {
    return session('foo', 'no session');
});

Route::get('page/{slug?}', [SiteController::class, 'page'])->name('page');

Route::post('upload-quill-image', [SiteController::class, 'quillUpload']);

Route::get('json/{file}', function($file){
    $path = "static/json/{$file}.json";
    $files = json_decode(file_get_contents($path),true);

    $model = $file == 'division' ? Division::class : ($file == 'district' ? District::class : ($file == 'thana' ? Thana::class : Union::class));

    foreach($files as $key => $item){
        $model::create($item);
    }
});
