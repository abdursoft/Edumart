<?php

namespace App\Jobs;

use App\Traits\MessageHandler;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;

class SMSHandlerJob implements ShouldQueue
{
    use Queueable, MessageHandler;

    public $tries   = 3;
    public $timeout = 30;

    /**
     * Create a new job instance.
     */
    public function __construct(
        public $messageBody,
        public $messageSubject,
        public $userPhone,
        public $userEmail,
        public $userName = null
    ) {}

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $this->smsInit($this->messageBody, $this->messageSubject, $this->userPhone, $this->userEmail, $this->userName);
    }
}
