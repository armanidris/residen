@extends ('adminpages.dashboard')

@section ('container')
<section class="content">
    <div class="col-sm-12">
        <ol class="breadcrumb breadcrumb-bg-brown">
            <li><a href="/residen/"><i class="fa fa-list"></i> Daftar Residen</a></li>
        </ol>
    </div>
    </section>
    
        <section class="content">
            <div class="container-fluid">
                <div class="row clearfix">
    
                    <!--Stase-->
                    <div class="col-xs-12">                    
                        
                        @if (session()->has('success')) 
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                        <p></p>
                        @endif

                    <div class="card">
                        <div class="header bg-orange">
                            <h2> <i class="fas fa-id-card"></i> Data Pribadi</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <form method="post" enctype="multipart/form-data">
                                        @csrf
                                    <div class="row clearfix">
                                        <div class="col-sm-12">
                                            <b>Nama</b>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required class="form-control"  name="res_name" value="{{ old('res_name') }}">
                                                </div>
                                                    @error('res_name')
                                                        <small><p class="col-pink">{{ $message }}</p></small>
                                                    @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <b>Alamat</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="alamat" value="{{ old('alamat') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tempat Lahir</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="tempat_lahir" value="{{ old('tempat_lahir') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tanggal Lahir</b>
                                            <div class="form-group ">
                                                <div class="form-line" id="bs_datepicker_container">
                                                    <input type="text" required autocomplete="off"  class="form-control" name="tanggal_lahir" value="{{ old('tanggal_lahir') }}">
                                                </div>
                                                @error('tanggal_lahir')
                                                    <small><p class="col-pink">{{ $message }}</p></small>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Email</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="email" value="{{ old('email') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Nomor Pokok</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="nomor_pokok" value="{{ old('nomor_pokok') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tahun Masuk</b>
                                            <div class="form-group form-float">
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="bulan_masuk">
                                                        <option value="01" {{ old('bulan_masuk'=="01"?"selected":"") }}>Januari</option>
                                                        <option value="07" {{ old('bulan_masuk'=="01"?"selected":"") }}>Juli</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-4">
                                                    <input type="number" required autocomplete="off"  class="form-control" name="tahun_masuk" value="{{ old('tahun_masuk',date("Y",strtotime('now'))) }}">
                                                </div>
                                            </div>
                                                @error('tahun_masuk')
                                                    <small><p class="col-pink">{{ $message }}</p></small>
                                                @enderror                                                
                                        </div>
                                        <div class="col-sm-2">
                                            <b>Semester</b>
                                            <div class="form-group form-float ">
                                                <div class="">
                                                   <select name="smt" class="form-control">
                                                    @foreach ($smt as $s)
                                                        <option value="{{ old('smt') }}">{{ $s->smt_romawi }}</option>
                                                    @endforeach
                                                   </select>
                                                </div>
                                            </div>
                                        </div>
    
                                        <div class="col-sm-2">
                                            <b>Pangkat / Golongan</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="panggol" value="{{ old('panggol') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>NIP</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="res_nip" value="{{ old('res_nip') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Telepon</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="phone" value="{{ old('phone') }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <b>Asal Universitas</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="asal_universitas" value="{{ old('asal_universitas') }}">
                                                </div>
                                            </div>
                                        </div>	
                                        <div class="col-sm-3">
                                            <b>Jenis Kelamin</b>
                                            <div class="form-group form-float">
                                                <div class="">
                                                    <p><br />
                                                    <input name="sex" type="radio" class="with-gap" id="radio_3" value="1">
                                                    <label for="radio_3">Pria</label>
                                                    <input name="sex" type="radio" id="radio_4" class="with-gap" value="0">
                                                    <label for="radio_4">Wanita</label>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group form-float">
                                            <p><b>Agama</b></p>
                                                <div class="form-line">
                                                    <select name="agama" class="form-control show-tick">
                                                        @foreach ($agama as $arow)
                                                        <option value="{{ $arow->id }}">{{ $arow->agama }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <p><b>Penasehat Akademik</b></p>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <select name="penasehat_akademik" class="form-control show-tick" data-live-search="true" data-size="5">
                                                        @foreach ($pembimbing as $prow)
                                                        <option style="margin-left:20px;" value="{{ $prow->id }}">{{ $prow->nama_pembimbing }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <p><b>Upload file foto</b></p>
                                            <div class="form-group form-float">
                                                <input name="userfile" type="file" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <button class="btn btn-primary m-t-15 waves-effect"><i class="fa fa-check"></i> Save</button>
                                        </div>
                                    </form>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--End of stase section-->
                    
                </div>
            </div>
        </section>  

@endsection