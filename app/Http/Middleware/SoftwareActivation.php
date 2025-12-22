<?php

namespace App\Http\Middleware;

use App\Traits\ActivationClass;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Symfony\Component\HttpFoundation\Response;

class SoftwareActivation
{
    use ActivationClass;
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->is(route('home'))) {
            $response = $this->checkActivation();
            $data = json_decode($response->getContent(), true);
            if (!$data['active']) {
                return redirect()->away(base64_decode('aHR0cHM6Ly9ldmFudG8uYWJkdXJzb2Z0LmNvbS9wcm9kdWN0LXJlZ2lzdHJhdGlvbg=='));
            }
        }

        // Don't apply installation check to the installer routes
        if (
            !env('APP_INSTALL') &&
            !$request->is('install*') &&
            !Session::has('installation')
        ) {
            Session::put('installation', 'init');
            return redirect(route('install.init'));
        }

        return $next($request);
    }
}
