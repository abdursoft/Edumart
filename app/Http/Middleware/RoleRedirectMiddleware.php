<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleRedirectMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        $user = auth()->user();

        if (! $user) {
            return redirect()->route('auth.login');
        }

        // Admin
        if ($user->hasRole('admin')) {
            return redirect()->route('admin.dashboard');
        }

        // Teacher
        if ($user->hasRole('teacher')) {
            return redirect()->route('teacher.dashboard');
        }

        // Student
        if ($user->hasRole('student')) {
            return redirect()->route('student.dashboard');
        }

        // Parent
        if ($user->hasRole('parent')) {
            return redirect()->route('parent.dashboard');
        }

        // Fallback
        return redirect('/dashboard');
    }
}
