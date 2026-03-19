<?php

namespace Database\Seeders;

use App\Models\District;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = public_path("static/json/district.json");
        $files = json_decode(file_get_contents($path),true);

        $model = District::class;

        foreach($files as $key => $item){
            $model::create($item);
        }
    }
}
