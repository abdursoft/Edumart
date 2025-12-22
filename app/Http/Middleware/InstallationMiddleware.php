<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Session;

class InstallationMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Session::get('purchase_code') == false && env('PURCHASE_CODE') == null) {
            Session::flash('error', 'Invalid product purchase code');
            return redirect('install/step2');
        }elseif(env('PURCHASE_CODE') != null){
            return $next($request);
        }

        return $next($request);
    }
}
