<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EduGroup extends Model
{
    protected $fillable = ['name','description','edu_section_id'];

    /**
     * Relation with edu section
     */
    public function eduSection(){
        return $this->belongsTo(EduSection::class, 'edu_section_id');
    }

    
}
