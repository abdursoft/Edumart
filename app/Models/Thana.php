<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Thana extends Model
{
    protected $fillable = [
        'url',
        'name',
        'bn_name',
        'district_id'
    ];

    /**
     * Relation with district table
     */
    public function district(){
        return $this->belongsTo(District::class);
    }

    /**
     * Relation with union table
     */
    public function union(){
        return $this->hasMany(Union::class);
    }
}
