<?php
/*
|--------------------------------------------------------------------------
| Install Routes
|--------------------------------------------------------------------------
|
| This route is responsible for handling the installation process
|
|
|
*/

use App\Http\Controllers\Install\InstallationController;
use App\Http\Middleware\InstallationMiddleware;
use Illuminate\Support\Facades\Route;

Route::get('/', [InstallationController::class, 'step0'])->name('init');
Route::get('/step1', [InstallationController::class, 'step1'])->name('step1');
Route::get('/step2', [InstallationController::class, 'step2'])->name('step2');
Route::get('/step3/{error?}', [InstallationController::class, 'step3'])->name('step3')->middleware(InstallationMiddleware::class);
Route::get('/step4', [InstallationController::class, 'step4'])->name('step4')->middleware(InstallationMiddleware::class);
Route::get('/step5', [InstallationController::class, 'step5'])->name('step5')->middleware(InstallationMiddleware::class);
Route::get('/step6', [InstallationController::class, 'step6'])->name('step6')->middleware(InstallationMiddleware::class);

Route::post('/database-installation', [InstallationController::class, 'database_installation'])->name('install.db')->middleware(InstallationMiddleware::class);
Route::get('import-sql', [InstallationController::class, 'import_sql'])->name('import_sql')->middleware(InstallationMiddleware::class);
Route::get('force-import-sql', [InstallationController::class, 'force_import_sql'])->name('force-import-sql')->middleware(InstallationMiddleware::class);
Route::post('system-settings', [InstallationController::class, 'systemSettings'])->name('system_settings');
Route::post('purchase-code', [InstallationController::class, 'purchase_code'])->name('purchase.code');
