<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class ClockTimer extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(public null|string $timezone, public $id='clock', public $styleClass='bg-gray-300 p-2 rounded-md')
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.clock-timer');
    }
}
