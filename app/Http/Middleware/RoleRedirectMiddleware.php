<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleRedirectMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        if (!auth()->check()) {
            return redirect()->route('auth.login');
        }

        $user = auth()->user();

        if ($user->hasRole('admin')) {
            return redirect()->route('admin.dashboard');
        }

        if ($user->hasRole('teacher')) {
            return redirect()->route('teacher.dashboard');
        }

        if ($user->hasRole('student')) {
            return redirect()->route('student.dashboard');
        }

        if ($user->hasRole('parent')) {
            return redirect()->route('parent.dashboard');
        }

        auth()->logout();

        return redirect()
            ->route('auth.login')
            ->with('error', 'Your account does not have a valid role.');
    }
}