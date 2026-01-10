<?php

namespace App\Http\Controllers;

abstract class Controller
{
    public $profile;
    // initiate profile checking
    public function __construct()
    {
        $this->profile = profile();
    }
}
