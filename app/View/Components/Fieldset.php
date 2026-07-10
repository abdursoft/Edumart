<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Fieldset extends Component
{
    public $title;
    public $css;
    public function __construct($title = null, $css=null)
    {
        $this->title = $title;
        $this->css = $css;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.fieldset');
    }
}
