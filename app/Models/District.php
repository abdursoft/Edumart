<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $fillable = [
        'url',
        'lat',
        'lon',
        'name',
        'bn_name',
        'division_id'
    ];

    /**
     * Relation with division table
     */
    public function division(){
        return $this->belongsTo(Division::class);
    }

    /**
     * Relation with thana table
     */
    public function thana(){
        return $this->hasMany(Thana::class);
    }
}
