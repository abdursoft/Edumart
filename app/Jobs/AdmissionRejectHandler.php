<?php

namespace App\Jobs;

use App\Traits\MessageHandler;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;

class AdmissionRejectHandler implements ShouldQueue
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
        $this->smsInit($this->admission->name_english.', your admission request has been rejected from '.site()->site_name, 'Admission request reject', $this->admission->father_mobile, $this->admission->name_english);
    }
}
