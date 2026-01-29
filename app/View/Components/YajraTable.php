<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class YajraTable extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(
        public $ajaxRoute,
        public $columns,
        public $tableID='yajraTable',
    )
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.yajra-table');
    }
}
