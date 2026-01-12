<?php

namespace Database\Seeders;

use App\Constants\SmsConfig as ConstantsSmsConfig;
use App\Models\SmsMethod;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SMSConfig extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $methods = ConstantsSmsConfig::$smsMethods;

        foreach($methods as $method){
            $attributes = [];
            foreach($method['attributes'] as $key => $value){
                $attributes[] = [
                    'code' => $key,
                    'name' => $value,
                    'value' => null,
                ];
            }
            SmsMethod::updateOrCreate(
                ['keyword' => $method['keyword']],
                [
                    'name' => $method['name'],
                    'keyword' => $method['keyword'],
                    'attributes' => json_encode($attributes),
                ]
            );
        }
    }
}
