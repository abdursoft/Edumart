<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class MarkSheet extends Component
{
    public $exam;
    public $student;
    public $marksheet;
    public $subjects;
    public $institute;
    /**
     * Create a new component instance.
     */
    public function __construct($exam, $student, $marksheet, $subjects)
    {
        $this->exam = $exam;
        $this->student = $student;
        $this->marksheet = $marksheet;
        $this->subjects = $subjects;
        $this->institute = site();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.mark-sheet');
    }
}
