<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stase extends Model
{
    protected $table = 'stase';
    use HasFactory;

    public function tempatstase()
    {
        return $this->belongsTo(TempatStase::class,'lokasi_id','lokasi_id');
    }
}
