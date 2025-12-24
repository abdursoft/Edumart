<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Auth\AuthenticationException;
use Throwable;
use Illuminate\Support\Facades\Log;

class Handler extends ExceptionHandler
{
    // ... existing code ...

    protected function unauthenticated($request, AuthenticationException $exception)
    {
        // Log message
        Log::info('Unauthenticated redirection', ['guards' => $exception->guards()]);

        if ($request->expectsJson()) {
            return response()->json(['message' => 'Unauthenticated'], 401);
        }

        // Custom redirect based on guard
        if (in_array('admin', $exception->guards())) {
            return redirect()->route('auth.login');
        }

        return redirect()->route('auth.login');
    }
}
