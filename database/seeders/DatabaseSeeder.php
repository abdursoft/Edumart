<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Contact;
use App\Models\Event;
use App\Models\Notification;
use App\Models\Transaction;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $this->call([
            UserSeeder::class,
            ProfileSeeder::class,
            DepartmentSeeder::class,
            EduClassSeeder::class,
            StudentSeeder::class,
            DesignationSeeder::class,
            EventSeeder::class,
            HolydaysSeeder::class,
            SubjectSeeder::class,
            ClassRoomSeeder::class,
            ClassRoutineSeeder::class,
            AttendanceSeeder::class,
            AssignmentSeeder::class,
            ExamSeeder::class,
            ExamSubjectSeeder::class,
            ExamFeesSeeder::class,
            ExamAdmitCardSeeder::class,
            ExamResultsTableSeeder::class,
            NewsNoticesSeeder::class,
            NotificationSeeder::class,
            CategoriesSeeder::class,
            PostsSeeder::class,
            StaffSeeder::class,
            AdmissionSeeder::class,
            AuthorSeeder::class,
            BooksShelfSeeder::class,
            BookCategoriesSeeder::class,
            BooksSeeder::class,
            BookReservationSeeder::class,
            SliderSeeder::class,
            SliderContentSeeder::class,
            InvoiceSeeder::class,
            TransactionSeeder::class,
            SalarySeeder::class,
            PageSeeder::class,
            ContactSeeder::class,
            CertificateSeeder::class,
            SiteSettingSeeder::class,
            LanguageSeeder::class,
            MenuSeeder::class,
        ]);
    }
}
