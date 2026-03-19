<?php

namespace App\Jobs;

use App\Models\SmsMethod;
use App\Traits\MessageHandler;
use App\Utility\Email;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;

class PasswordOTP implements ShouldQueue
{
    use Queueable, MessageHandler;

    /**
     * Create a new job instance.
     */
    public function __construct(
        public $contactTo,
        public $contactName,
        public $contactMsg,
    ) {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {

        $mail = SmsMethod::where('keyword', 'email')->first();
        $this->smsAttributes = ($mail->attributes);
        new Email((object) [
            "host"     => $this->getAttributes('host'),
            "username" => $this->getAttributes('username'),
            "password" => $this->getAttributes('password'),
            "port"     => $this->getAttributes('port'),
            "from"     => $this->getAttributes('from'),
            "app"      => $this->getAttributes('app'),
        ], $this->contactTo, $this->contactName, $this->contactMsg, 'Password Reset OTP');
    }
}
