<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResidenBedah extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('residen_bedah', function (Blueprint $table) {
            $table->id('res_id');
            $table->string('res_name');
            $table->string('nomor_pokok',20)->nullable();
            $table->date('tahun_masuk');
            $table->string('smt',8);
            $table->string('alamat')->nullable();
            $table->string('panggol',50)->nullable();
            $table->string('res_nip',50)->nullable();
            $table->string('phone',120)->nullable();
            $table->char('agama',1);
            $table->char('penasehat_akademik',1);
            $table->boolean('lulus')->default(0);
            $table->tinyInteger('sex');
            $table->string('tempat_lahir')->nullable();
            $table->date('tanggal_lahir')->nullable();
            $table->string('email')->nullable();
            $table->string('file_foto')->nullable();
            $table->string('asal_universitas')->nullable();    
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('residen_bedah');
    }
}
