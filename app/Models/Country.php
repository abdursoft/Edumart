<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $fillable = ['name','code'];

    /**
     * Relation with student profile
     */
    public function site(){
        return $this->hasOne(SiteSetting::class, 'country_id');
    }
}
