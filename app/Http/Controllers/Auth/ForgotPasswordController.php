<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends Controller
{

    public function showLinkRequestForm()
    {
        return view(theme('passwords.email'));
    }

    public function sendResetLinkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $status = Password::sendResetLink($request->only('email'));

        if ($status === Password::RESET_LINK_SENT) {
            Toastr::success(__($status));
            return redirect()->route('password.request')->with('status', __($status));
        }

        Toastr::error(__($status));
        return redirect()->route('password.request')->withErrors(['email' => __($status)]);
    }
}
