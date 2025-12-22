<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Backup;

class BackupSeeder extends Seeder
{
    public function run(): void
    {
        $backups = [
            [
                'name' => 'Daily Database Backup',
                'file_path' => 'backups/db_backup_2025-10-16.sql',
                'type' => 'database',
                'size' => 204800, // in bytes (200 KB)
                'status' => 'completed',
                'notes' => 'Automated daily backup',
            ],
            [
                'name' => 'Full System Backup',
                'file_path' => 'backups/full_backup_2025-10-15.zip',
                'type' => 'full',
                'size' => 104857600, // 100 MB
                'status' => 'completed',
                'notes' => 'Weekly full backup',
            ],
        ];

        foreach ($backups as $backup) {
            Backup::create($backup);
        }
    }
}
