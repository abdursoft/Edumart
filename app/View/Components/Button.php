<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Button extends Component
{
    public $items;
    public $position;
    public $style;
    /**
     * Create a new component instance.
     */
    public function __construct($items=[], $position='start', $style=null)
    {
        $this->items = $items;
        $this->position = $position;
        $this->style = $style;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.button');
    }
}
