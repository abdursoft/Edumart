<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ExamResult;

class ExamResultsTableSeeder extends Seeder
{
    public function run()
    {
        ExamResult::insert([
            [
                'exam_id' => 1,
                'status' => 'published',
                'remarks' => 'Excellent performance',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'exam_id' => 1,
                'status' => 'private',
                'remarks' => 'Needs improvement',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
