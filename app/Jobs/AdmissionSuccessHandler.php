<?php

namespace App\Jobs;

use App\Models\Admission;
use App\Traits\MessageHandler;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;

class AdmissionSuccessHandler implements ShouldQueue
{
    use Queueable, MessageHandler;
    /**
     * Create a new job instance.
     */
    public function __construct(public $admission)
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $this->smsInit($this->admission->name_english.', your admission request has been approved from '.site()->site_name, 'Admission request approve', $this->admission->father_mobile, $this->admission->name_english);
    }
}
