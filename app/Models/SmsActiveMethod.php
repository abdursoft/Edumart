<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SmsActiveMethod extends Model
{
    protected $fillable = [
        'sms_type',
        'sms_method_id'
    ];

    // relation with sms method
    public function smsMethod(){
        return $this->belongsTo(SmsMethod::class);
    }
}
