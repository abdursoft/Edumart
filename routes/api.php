<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('events', function() {
  return App\Models\Event::select(
        'id',
        'title',
        'start_date as start',
        'end_date as end',
    )->get();
});
