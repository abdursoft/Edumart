<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;

class SmsMethod extends Model
{
    protected $fillable = [
        'name',
        'keyword',
        'attributes',
    ];

    // relation with active sms method
    public function smsActiveMethod(){
        return $this->hasOne(SmsActiveMethod::class);
    }

    public function attributes(): Attribute{
        return Attribute::make(
            get: fn($value) => json_decode($value, true),
            set: fn($value) => json_encode($value)
        );
    }

}
