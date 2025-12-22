<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Slider;
use Illuminate\Support\Str;

class SliderSeeder extends Seeder
{
    public function run(): void
    {
        $sliders = [
            [
                'name' => 'Homepage Slider',
                'type' => 'image',
                'status' => 'active',
                'shortcode' => Str::random(8),
            ],
            [
                'name' => 'Promo Video Slider',
                'type' => 'video',
                'status' => 'active',
                'shortcode' => Str::random(8),
            ],
        ];

        foreach ($sliders as $slider) {
            Slider::create($slider);
        }
    }
}
