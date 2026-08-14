<?php

use App\Http\Middleware\RoleRedirectMiddleware;
use App\Http\Middleware\SoftwareActivation;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode;
use Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull;
use Illuminate\Foundation\Http\Middleware\TrimStrings;
use Illuminate\Http\Middleware\TrustProxies;
use Illuminate\Http\Middleware\ValidatePostSize;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Middleware\PermissionMiddleware;
use Spatie\Permission\Middleware\RoleMiddleware;
use Spatie\Permission\Middleware\RoleOrPermissionMiddleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        api: __DIR__ . '/../routes/api.php',
        health: '/up',
        then: function () {
            Route::prefix('install')->name('install.')->middleware(['web'])->group(base_path('routes/install.php'));
            Route::prefix('admin')
                ->name('admin.')
                ->middleware([
                    'web',
                    'auth',
                    'role_or_permission:admin|teacher|moderator|accountant'
                ])
                ->group(base_path('routes/admin.php'));

            Route::prefix('teacher')
                ->name('teacher.')
                ->middleware([
                    'web',
                    'auth',
                    'role:teacher'
                ])
                ->group(base_path('routes/teacher.php'));

            Route::prefix('student')
                ->name('student.')
                ->middleware([
                    'web',
                    'auth',
                    'role:student'
                ])
                ->group(base_path('routes/student.php'));

            Route::prefix('parent')
                ->name('parent.')
                ->middleware([
                    'web',
                    'auth',
                    'role:parent'
                ])
                ->group(base_path('routes/parent.php'));
        }
    )
    ->withMiddleware(function (Middleware $middleware): void {

        $middleware->append(SoftwareActivation::class);

        $middleware->validateCsrfTokens([
            '/install/*'
        ]);

        $middleware->web(append: [
            \App\Http\Middleware\SetLocalization::class,
        ]);

        $middleware->use([
            TrustProxies::class,
            CheckForMaintenanceMode::class,
            ValidatePostSize::class,
            TrimStrings::class,
            ConvertEmptyStringsToNull::class,
            \Illuminate\Http\Middleware\HandleCors::class,
        ]);

        $middleware->group('api', [
            'throttle:3000,1',
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ]);

        $middleware->alias([
            'role'               => RoleMiddleware::class,
            'permission'         => PermissionMiddleware::class,
            'role_or_permission' => RoleOrPermissionMiddleware::class,
            'role.redirect'      => RoleRedirectMiddleware::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions): void {})->create();
