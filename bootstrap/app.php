<?php

use App\Http\Middleware\RoleRedirectMiddleware;
use App\Http\Middleware\SetLocalization;
use App\Http\Middleware\SoftwareActivation;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Spatie\Permission\Middleware\PermissionMiddleware;
use Spatie\Permission\Middleware\RoleMiddleware;
use Spatie\Permission\Middleware\RoleOrPermissionMiddleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        health: '/up',
        then: function () {
            Route::prefix('install')->name('install.')->middleware(['web'])->group(base_path('routes/install.php'));
            Route::prefix('admin')
                ->name('admin.')
                ->middleware(['auth', 'role:admin'])
                ->group(base_path('routes/admin.php'));

            Route::prefix('teacher')
                ->name('teacher.')
                ->middleware(['auth', 'role:teacher'])
                ->group(base_path('routes/teacher.php'));

            Route::prefix('student')
                ->name('student.')
                ->middleware(['auth', 'role:student'])
                ->group(base_path('routes/student.php'));

            Route::prefix('parent')
                ->name('parent.')
                ->middleware(['auth', 'role:parent'])
                ->group(base_path('routes/parent.php'));

        }
    )
    ->withMiddleware(function (Middleware $middleware): void {
        // global middlewares
        $middleware->append(SoftwareActivation::class);
        $middleware->append(StartSession::class);
        $middleware->append(AddQueuedCookiesToResponse::class);
        $middleware->append(ShareErrorsFromSession::class);
        $middleware->append(SetLocalization::class);

        // alias middlewares
        $middleware->alias([
            'role'               => RoleMiddleware::class,
            'permission'         => PermissionMiddleware::class,
            'role_or_permission' => RoleOrPermissionMiddleware::class,
            'role.redirect'      => RoleRedirectMiddleware::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions): void {
    })->create();
