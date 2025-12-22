<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'site_name',
        'logo',
        'favicon',
        'theme',
        'contact_email',
        'contact_phone',
        'address',
        'post',
        'division_id',
        'district_id',
        'thana_id',
        'union_id',
        'social_links',
        'code',
        'gov_id',
        'name_bn',
        'establish_date'
    ];

    protected $casts = [
        'social_links' => 'array',
    ];

    // Relationships
    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function district()
    {
        return $this->belongsTo(District::class);
    }

    public function thana()
    {
        return $this->belongsTo(Thana::class);
    }

    public function union()
    {
        return $this->belongsTo(Union::class, 'union_id');
    }
}
