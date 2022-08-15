@extends ('adminpages.dashboard')
@section ('container')
<section class="content">
    <div class="col-sm-12">
        <ol class="breadcrumb breadcrumb-bg-brown">
            <li><a href="/residen/"><i class="fa fa-list"></i> Daftar Residen</a></li>
            <li><a href="/residen/{{ session('res_id') }}"><i class="fa fa-user"></i> Residen : {{ session('res_name') }}</a></li>
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
                                    @foreach ($residen_bedah as $row) @endforeach
                                    <form method="post" enctype="multipart/form-data">
                                        @csrf
                                    <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-sm-12">
                                            <b>Nama</b>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" required name="res_name" value="{{ old('res_name',$row->res_name) }}">
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
                                                    <input type="text" class="form-control" name="alamat" value="{{ old('alamat',$row->alamat) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tempat Lahir</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="tempat_lahir" value="{{ old('tempat_lahir',$row->tempat_lahir) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tanggal Lahir</b>
                                            <div class="form-group ">
                                                <div class="form-line" id="bs_datepicker_container">
                                                    <input type="text" autocomplete="off" required class="form-control" name="tanggal_lahir" value="{{ old('tanggal_lahir',date("d F Y",strtotime($row->tanggal_lahir))) }}">
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
                                                    <input type="text" class="form-control" name="email" value="{{ old('email',$row->email) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Nomor Pokok</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="nomor_pokok" value="{{ old('nomor_pokok',$row->nomor_pokok) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Tahun Masuk</b>
                                            <div class="form-group ">
                                                <div class="form-line" id="bs_datepicker_container">
                                                    <input type="text" autocomplete="off"  class="form-control" name="tahun_masuk" value="{{ old('tahun_masuk',date("d F Y", strtotime($row->tahun_masuk))) }}">
                                                </div>
                                                @error('tahun_masuk')
                                                    <small><p class="col-pink">{{ $message }}</p></small>
                                                @enderror                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Semester</b>
                                            <div class="form-group form-float ">
                                                <div class="form-line">
                                                    <input type="text" required class="form-control" name="smt" value="{{ old('smt',$row->smt) }}">
                                                </div>
                                            </div>
                                        </div>
    
                                        <div class="col-sm-4">
                                            <b>Pangkat / Golongan</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="panggol" value="{{ old('panggol',$row->panggol) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>NIP</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="res_nip" value="{{ old('res_nip',$row->res_nip) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <b>Telepon</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="phone" value="{{ old('phone',$row->phone) }}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <b>Asal Universitas</b>
                                            <div class="form-group form-float">
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="asal_universitas" value="{{ old('asal_universitas',$row->asal_universitas) }}">
                                                </div>
                                            </div>
                                        </div>	
                                        <div class="col-sm-3">
                                            <b>Jenis Kelamin</b>
                                            <div class="form-group form-float">
                                                <p><br />
                                                    <input name="sex" type="radio" class="with-gap" id="radio_3" value="1" {{ $row->sex==1?"Checked":""}}>
                                                    <label for="radio_3">Pria</label>
                                                    <input name="sex" type="radio" id="radio_4" class="with-gap" value="0" {{ $row->sex==0?"Checked":""}}>
                                                    <label for="radio_4">Wanita</label>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group form-float">
                                            <p><b>Agama</b></p>
                                                <div class="form-line">
                                                    <select name="agama_id" class="form-control show-tick">
                                                        @foreach ($agama as $arow)
                                                        <option value="{{ $arow->id }}" {{ $arow->id== @$row->agama->id ?"selected":"" }}>{{ $arow->agama }}</option>
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
                                                        <option style="margin-left:20px;" value="{{ $prow->id }}" {{ $prow->id==$row->penasehat_akademik?"selected":"" }}>{{ $prow->nama_pembimbing }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <p><b>Upload file foto</b></p>
                                            <div class="form-group form-float">
                                                <input name="file_foto" type="file" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <button class="btn btn-primary m-t-15 waves-effect"><i class="fa fa-check"></i> Save</button>
                                            <a data-toggle="modal" data-target="#delConf" href="" class="btn btn-danger m-t-15 waves-effect pull-right"><i class="fa fa-trash"></i> Delete</a>
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

                    <!-- Modal for delete  -->  
                    <div class="modal fade" id="delConf" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="defaultModalLabel">Konfirmasi hapus data</h4>
                                </div>
                                <div class="modal-body">
                                    Data <strong>{{ $row->res_name }}</strong> <br /> akan dihapus.
                                    
                                    Apakah Anda yakin akan menghapus data ini?
                                </div>
                                <form action="/residen/delete/{{ session('res_id') }}" method="post">
                                    @csrf
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-success waves-effect" data-dismiss="modal"><i class="fa fa-window-close"></i> Batal</button>
                                        <button type="submit" class="btn btn-danger waves-effect"><i class="fa fa-check"></i> Hapus</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

@endsection