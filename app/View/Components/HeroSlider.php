<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class HeroSlider extends Component
{
    public $slider;
    /**
     * Create a new component instance.
     */
    public function __construct($slider)
    {
        $this->slider = $slider;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.hero-slider');
    }
}
