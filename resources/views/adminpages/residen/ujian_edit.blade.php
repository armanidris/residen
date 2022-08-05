@extends('adminpages.dashboard')
@section('container')
<section class="content">
    <div class="col-sm-12">
        <ol class="breadcrumb breadcrumb-bg-brown">
            <li><a href="/index.php/residen/{{ $id }}"><i class="fa fa-list"></i> Daftar Residen</a></li>
            <li><a href="/residen/{{ session('res_id') }}"><i class="fa fa-user"></i> Residen : {{ session('res_name') }}</a></li>
        </ol>
    </div>
    </section>
    
        <section class="content">
            <div class="container-fluid">
                <div class="row clearfix">
    
                    <!--Ujian -->
                    <div class="col-sm-12">
                    <div class="card">
                        <div class="header bg-indigo">
                            <h2> <i class="fas fa-chalkboard-teacher"></i> Ujian</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Ujian</th>
                                                <th>Tempat</th>
                                                <th>Tanggal</th>
                                                <th>Keterangan</th>
                                                <th width="61"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($vujian as $vurow)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $vurow->ujian_name }}</td>
                                                <td>{{ $vurow->tempat }}</td>
                                                <td>
                                                    <?php 
                                                        if (($vurow->tanggal <> "0000-00-00")  && (!is_null($vurow->tanggal)) && ($vurow->tanggal <> "1970-01-01")) {
                                                            echo date("d F Y",strtotime($vurow->tanggal));
                                                        }
                                                    ?>
                                                </td>
                                                <td>
                                                    <input id="lulus" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $vurow->ket=="1"?"checked":"" }}>
                                                    <label for="baca">{{ $vurow->ket=="1"?"Lulus":"Tidak Lulus" }}</label>
                                                </td>
                                                <td>
                                                    <a href="/residen/ujian/edit/{{ $vurow->res_id }}/{{ $vurow->ujian_id }}" title="Edit"><i class="fa fa-edit"></i></a> | 
                                                    <a href=""><i class="fa fa-trash" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach	
                                        </tbody>
                                    </table>
                                    <a href="/residen/ujian/create/{{$vurow->res_id}}">
                                        <button class="btn btn-sm bg-indigo"><i class="fa fa-plus"></i></button>
                                    </a>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--End of Ujian Section-->
    
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><i class="fa fa-edit"></i> Tambah Data Ujian</h2>
                            </div>
                                <div class="body">
                                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                                    @csrf
                                <input type="hidden" name="ujian_id" value="{{ $ujdet[0]->ujian_id }}">
                                <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="ujian_name">Nama Ujian</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required  id="ujian_name" name="ujian_name" class="form-control" placeholder="Masukkan nama ujian yang diikuti" value="{{ old('ujian_name',$ujdet[0]->ujian_name) }}">
                                                </div>
                                                @error('ujian_name')
                                                    <small><p class="col-pink"> {{ $message }} </p></small>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="tempat">Tempat Ujian</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text"  required  id="tempat" name="tempat" class="form-control" placeholder="Tempat ujian" value="{{ old('tempat',$ujdet[0]->tempat) }}">
                                                </div>
                                                @error('tempat')
                                                    <small><p class="col-pink"> {{ $message }} </p></small>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label>Tanggal</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="form-group" id="bs_datepicker_container">
                                                    <div class="form-line">
                                                        <input  required autocomplete="off" type="text"  name="tanggal" class="form-control" placeholder="Tanggal ujian..." value="{{ old('tanggal',date('d F Y',strtotime($ujdet[0]->tanggal))) }}">
                                                    </div>
                                                    @error('tanggal')
                                                        <small><p class="col-pink"> {{ $message }} </p></small>
                                                    @enderror
                                                </div>
                                        </div>									
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label>Lulus</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <input name="ket" type="checkbox" value="1" id="ket" {{ $ujdet[0]->ket =="1"?"checked":"" }}>
                                            <label for="ket"></label>
                                        </div>
                                    </div>								
                                    <div class="row clearfix">
                                        <div class="col-sm-12 col-sm-offset-2">
                                            <button class="btn btn-primary m-t-15 waves-effect"><i class="fa fa-check"></i> Save</button>
                                        </div>
                                    </div>								
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
   @endsection
                    