<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Union extends Model
{
    protected $fillable = [
        'url',
        'name',
        'bn_name',
        'thana_id'
    ];

    /**
     * Relation with thana table
     */
    public function thana(){
        return $this->belongsTo(Thana::class);
    }
}
