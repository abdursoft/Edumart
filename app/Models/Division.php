<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    protected $fillable = [
        'url',
        'name',
        'bn_name'
    ];

    /**
     * Relation with district
     */
    public function district(){
        return $this->hasMany(District::class);
    }
}
