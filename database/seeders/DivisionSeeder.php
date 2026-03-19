<?php

namespace Database\Seeders;

use App\Models\Division;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DivisionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = public_path("static/json/division.json");
        $files = json_decode(file_get_contents($path),true);

        $model = Division::class;

        foreach($files as $key => $item){
            $model::create($item);
        }
    }
}
