<?php

namespace Database\Seeders;

use App\Models\Thana;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ThanaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = public_path("static/json/thana.json");
        $files = json_decode(file_get_contents($path),true);

        $model = Thana::class;

        foreach($files as $key => $item){
            $model::create($item);
        }
    }
}
