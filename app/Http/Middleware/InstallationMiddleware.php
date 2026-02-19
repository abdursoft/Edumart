<?php

namespace App\Http\Middleware;

use Brian2694\Toastr\Facades\Toastr;
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
        if (
            !session()->has('error') &&
            Session::get('purchase_code') == false &&
            env('PURCHASE_CODE') == null
        ) {
            Toastr::error('Invalid product purchase code', 'Invalid Code');
            return redirect('install/step2');
        }

        return $next($request);
    }
}
