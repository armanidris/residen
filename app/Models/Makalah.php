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
    public function residen()
    {
        return $this->belongsTo(ResidenModel::class,'res_id','res_id');
    }

    protected $guarded = ['makalah_id'];
    public $timestamps = false;
}
