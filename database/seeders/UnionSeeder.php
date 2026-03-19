<?php

namespace Database\Seeders;

use App\Models\Union;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UnionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = public_path("static/json/union.json");
        $files = json_decode(file_get_contents($path),true);

        $model = Union::class;

        foreach($files as $key => $item){
            $model::create($item);
        }
    }
}
