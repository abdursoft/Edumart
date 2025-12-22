<?php

use App\Http\Middleware\AdminMiddleware;
use App\Http\Middleware\AuthMiddleware;
use App\Http\Middleware\SetLocalization;
use App\Http\Middleware\SoftwareActivation;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Middleware\ShareErrorsFromSession;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        health: '/up',
        then: function () {
            Route::prefix('admin')->name('admin.')->middleware(AdminMiddleware::class)->group(base_path('routes/admin.php'));
            Route::prefix('teacher')->name('teacher.')->middleware(AdminMiddleware::class)->group(base_path('routes/admin.php'));
            Route::prefix('student')->name('student.')->middleware(AdminMiddleware::class)->group(base_path('routes/admin.php'));
            Route::prefix('parent')->name('parent.')->middleware(AdminMiddleware::class)->group(base_path('routes/admin.php'));
            Route::prefix('library')->name('library.')->middleware(AuthMiddleware::class)->group(base_path('routes/admin.php'));
            Route::prefix('install')->name('install.')->middleware(['web'])->group(base_path('routes/install.php'));
        }
    )
    ->withMiddleware(function (Middleware $middleware): void {
        $middleware->append(SoftwareActivation::class);
        $middleware->append(StartSession::class);
        $middleware->append(AddQueuedCookiesToResponse::class);
        $middleware->append(ShareErrorsFromSession::class);
        $middleware->append(SetLocalization::class);
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();
