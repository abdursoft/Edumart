<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Slider;
use App\Models\SliderContent;

class SliderContentSeeder extends Seeder
{
    public function run(): void
    {
        $slider = Slider::first();

        if (!$slider) {
            $this->command->info('Please seed sliders first.');
            return;
        }

        $contents = [
            [
                'slider_id' => $slider->id,
                'title' => 'Welcome to Our Library',
                'description' => 'Discover new books and resources.',
                'media_url' => 'sliders/slider1.jpg',
                'type' => 'image',
                'order' => 1,
                'status' => 'active',
            ],
            [
                'slider_id' => $slider->id,
                'title' => 'Join Our Membership',
                'description' => 'Get access to exclusive content.',
                'media_url' => 'sliders/slider2.mp4',
                'type' => 'video',
                'order' => 2,
                'status' => 'active',
            ],
        ];

        foreach ($contents as $content) {
            SliderContent::create($content);
        }
    }
}
