<?php

namespace App\Jobs;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Support\Facades\DB;

class DispatchBulkSMSJob implements ShouldQueue
{
    use Queueable;

    /**
     * Create a new job instance.
     */
    public function __construct(
        public string $message,
        public string $subject,
        public string $role = 'student',
    ) {}

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        DB::table('users')
            ->select('phone', 'email', 'name')
            ->whereNotNull('phone')
            ->where('role', $this->role)
            ->orderBy('id')
            ->chunk(1000, function ($users) {
                foreach ($users as $user) {
                    SMSHandlerJob::dispatch(
                        $this->message,
                        $this->subject,
                        $user->phone,
                        $user->email,
                        $user->name
                    )
                    ->onQueue('sms');
                }
            });
    }
}
