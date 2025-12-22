<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class InputForm extends Component
{
    public $cols;
    public $fields;
    public $form;

    public function __construct($cols = 1, $fields = [], $form = [])
    {
        $this->cols = $cols;
        $this->fields = $fields;
        $this->form = $form;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.input-form');
    }
}
