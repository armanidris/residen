@extends('adminpages.dashboard')

@section('container')
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
    
                    <!--Makalah-->
                    <div class="col-sm-12">

                        @include('adminpages.residen.success_alert')

                    <div class="card">
                        <div class="header bg-purple">
                            <h2> <i class="fa fa-book"></i> Makalah</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Jenis Makalah</th>
                                                <th>Judul</th>
                                                <th>Baca</th>
                                                <th>Tanggal Baca</th>
                                                <th>Berita Acara</th>
                                                <th>Pembimbing</th>
                                                <th width=61></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($vmakalah as $row)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $row->makalah_type }}</td>
                                                <td>{{ $row->judul }}</td>
                                                <td>
                                                    <input id="baca" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $row->status=="1"?"checked":""}}>
                                                    <label for="baca">{{ $row->status=="1"?"Sudah Baca":"Belum Baca" }}</label></td>
                                                <?php
                                                    if ($row->tanggal_baca == "1970-01-01") {
                                                        $vtanggal_baca="";
                                                    } else {
                                                        $vtanggal_baca=date("d F Y",strtotime($row->tanggal_baca));
                                                    }
                                                ?>
                                                <td>{{ $vtanggal_baca }}
                                                </td>
                                                <td>
                                                    <input id="makalah" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $row->bap_makalah=="1"?"checked":"" }}>
                                                    <label for="makalah"><?=$row->bap_makalah=="1"?"Ada":"Tidak";?></label>
                                                </td>
                                                <td>{{ @$row->pembimbing->nama_pembimbing }}</td>
                                                <td>
                                                    <a href="/residen/makalah/edit/{{ $row->res_id }}/{{ $row->makalah_id }}" title="Edit"><i class="fa fa-edit"></i></a> | 
                                                    <a href="" data-toggle="modal" data-target="#mDelConf" id="delConf" data-res-id="{{ $row->res_id }}" data-item-id="{{ $row->makalah_id }}"><i class="fa fa-trash" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                    <a href="/residen/makalah/create/{{$row->res_id}}">
                                        <button class="btn btn-sm bg-purple"><i class="fa fa-plus"></i></button>
                                    </a>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--End of Makalah Section-->
    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><i class="fa fa-edit"></i> Ubah Data Makalah</h2>
                            </div>
                            <div class="body">
                                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                                    @csrf
                                <input type="hidden" name="makalah_id" value="{{ $detmakalah[0]->makalah_id }}">
                                <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-sm-2">
                                            Type Makalah
                                        </div>
                                        <div class="col-sm-6">
                                            <div style="margin-left: 0;" class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required id="makalah" name="makalah_type" class="form-control" placeholder="Type makalah" value="{{ $detmakalah[0]->makalah_type }}">
                                                </div>
                                            </div>
                                            @error('makalah_type')
                                                <small><p class="col-pink">{{ $message }}</p></small>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-2">
                                            Judul
                                        </div>
                                        <div class="col-sm-6">
                                            <div style="margin-left: 0;" class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required id="judul" name="judul" class="form-control" placeholder="Judul makalah" value="{{ $detmakalah[0]->judul }}">
                                                </div>
                                            </div>
                                            @error('judul')
                                            <small><p class="col-pink">{{ $message }}</p></small>
                                             @enderror
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-2">Baca</div>
                                        <div class="col-sm-2">
                                            <input name="status" type="checkbox" value="1" id="status" {{ $detmakalah[0]->status=="1"?"checked":"" }} >
                                            <label for="status">Ok</label>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-2">Tanggal baca</div>
                                        <div class="col-sm-4">
                                            <div style="margin-left: 0;" class="form-group">
                                                <div class="form-line" id="bs_datepicker_container">
                                                    <?php
                                                        if (isset($detmakalah[0]->tanggal_baca) AND ($detmakalah[0]->tanggal_baca<>"1970-01-01")) {
                                                            $tanggal_baca=date("d F Y",strtotime($detmakalah[0]->tanggal_baca));
                                                        } else {
                                                            $tanggal_baca="";
                                                        }
                                                    ?>
                                                    <input name="tanggal_baca" autocomplete="off" type="text" class="form-control" placeholder="Pilih tanggal..." value="{{ $tanggal_baca }}">
                                                </div>
                                            </div>
                                            @error('tanggal_baca')
                                                <small><p class="col-pink">{{ $message }}</p></small>
                                             @enderror 
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-2">Berita Acara</div>
                                        <div class="col-sm-2">
                                            <input name="bap_makalah" type="checkbox" value="1" id="bap_makalah" {{ $detmakalah[0]->bap_makalah=="1"?"checked":"" }}>
                                            <label for="bap_makalah">Ok</label>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-2">Pembimbing</div>
                                        <div class="col-sm-8">
                                            <select name="pembimbing_id" class="form-control show-tick"  data-live-search="true" data-size="10">
                                                <option value=0 style="margin-left:20px;" >--Pilih--</option>
                                                @foreach ($pembimbing as $prow) { ?>
                                                <option  style="margin-left:20px;" value="{{ @$prow->id }}" {{ @$prow->id==@$detmakalah[0]->pembimbing->id?"selected":"" }}> {{ @$prow->nama_pembimbing }}</option>
                                                @endforeach
                                            </select>
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
    
        @include('adminpages.residen.delconf',['action'=>'makalah','itemname'=>'makalah_id'])  
    @endsection 