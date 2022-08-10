<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Makalah extends Model
{
    protected $table = 'makalah';
    use HasFactory;

    public function pembimbing()
    {
        return $this->belongsTo(Pembimbing::class,'pembimbing_id','id');
    }

    protected $guarded = ['makalah_id'];
    public $timestamps = false;
}
