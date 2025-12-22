<?php

namespace Database\Seeders;

use App\Models\Student;
use App\Models\ParentModel;
use App\Models\EduClass;
use App\Models\Division;
use App\Models\District;
use App\Models\Thana;
use App\Models\Union;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class StudentSeeder extends Seeder
{
    public function run(): void
    {
        // Create some parent and class data first (if not already exist)
        $parent = ParentModel::firstOrCreate([
            'email' => 'parent@example.com'
        ], [
            'name' => 'John Doe',
            'phone' => '0123456789',
            'address' => '123 Example Street',
        ]);

        $faker = Faker::create();

        // Fetch base relations (you can ensure these are pre-seeded)
        $class = EduClass::first();
        $division = Division::first();
        $district = District::first();
        $thana = Thana::first();
        $union = Union::first();

        foreach (range(1, 20) as $i) {
            Student::create([
                'name' => $faker->name,
                'student_id' => 1000 + $i,
                'age' => $faker->numberBetween(6, 18),
                'phone' => $faker->phoneNumber,
                'parent_id' => $parent->id,
                'edu_class_id' => $class->id,
                'password' => Hash::make('password'),
                'login_permit' => $faker->randomElement(['allowed', 'blocked']),

                // Father info
                'fa_name_en' => $faker->name('male'),
                'fa_name_bn' => 'জনাব ' . $faker->firstNameMale,
                'fa_mobile' => '01' . rand(3,9) . rand(10000000,99999999),
                'fa_nid' => rand(1000000000, 9999999999),
                'fa_dob' => $faker->date('Y-m-d', '-40 years'),

                // Mother info
                'mo_name_en' => $faker->name('female'),
                'mo_name_bn' => 'জনাবা ' . $faker->firstNameFemale,
                'mo_mobile' => '01' . rand(3,9) . rand(10000000,99999999),
                'mo_nid' => rand(1000000000, 9999999999),
                'mo_dob' => $faker->date('Y-m-d', '-35 years'),

                // Address info
                'post' => $faker->postcode,
                'address' => $faker->address,
            ]);
        }

        $this->command->info('✅ 20 dummy students seeded successfully!');
    }
}
