<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;

abstract class Controller
{
    public $profile;
    // initiate profile checking
    public function __construct()
    {
        $this->profile = profile();
        Toastr::useVite();
    }
}
