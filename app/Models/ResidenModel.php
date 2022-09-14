<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResidenModel extends Model
{
    protected $table = 'residen_bedah';
    use HasFactory;

    public function agama()
    {
        return $this->belongsTo(Agama::class, 'agama_id','id');
    }

    public function pembimbing()
    {
        return $this->belongsTo(Pembimbing::class, 'penasehat_akademik','id');
    }

    public function ujian()
    {
        return $this->hasMany(Ujian::class,'res_id','res_id');
    }
    public function makalah()
    {
        return $this->hasMany(Makalah::class,'res_id','res_id');
    }
    public function stase()
    {
        return $this->hasMany(Stase::class,'res_id','res_id');
    }
    public function kursus()
    {
        return $this->hasMany(Kursus::class,'res_id','res_id');
    }

    protected $guarded = ['res_id'];
    public $timestamps = false;
}

