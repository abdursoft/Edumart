<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class AdminStats extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(
        public int $total,
        public string $title,
        public string $icon,
        public string $color,
        public string $route,
    )
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('backend.components.cards.admin');
    }
}
