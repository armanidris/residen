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
    
                    <!--Kursus -->
                    <div class="col-sm-12">

                        @include('adminpages.residen.success_alert')

                    <div class="card">
                        <div class="header bg-pink">
                            <h2> <i class="fas fa-chalkboard-teacher"></i> Kursus</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Kursus</th>
                                                <th>Tempat</th>
                                                <th>Tanggal</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($vkursus as $vkrow)
                                            <tr>
                                                
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $vkrow->kursus_name }}</td>
                                                <td>{{ $vkrow->tempat }}</td>
                                                <td>
                                                    <?php 
                                                        if (($vkrow->start <> "0000-00-00")  && (!is_null($vkrow->start)) && ($vkrow->start <> "1970-01-01")) {
                                                            echo date("d F Y",strtotime($vkrow->start));
                                                        }
                                                        if (($vkrow->end <> "0000-00-00")  && (!is_null($vkrow->end)) && ($vkrow->end <> "1970-01-01")) {
                                                            echo " - ". date("d F Y",strtotime($vkrow->end));
                                                        }
                                                    ?>
                                                </td>
                                                <td width=61>
                                                    <a href="/residen/kursus/edit/{{ $vkrow->res_id }}/{{ $vkrow->kursus_id }}" title="Edit"><i class="fa fa-edit"></i></a> | 
                                                    <a href="" data-toggle="modal" data-target="#mDelConf" id="delConf" data-res-id="{{ $vkrow->res_id }}" data-item-id="{{ $vkrow->kursus_id }}"><i class="fa fa-trash" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                       @endforeach	
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--End of Kursus Section-->
    
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><i class="fa fa-edit"></i> Tambah Data Kursus</h2>
                            </div>
                                <div class="body">
                                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                                    @csrf
                                <input type="hidden" name="kursus_id" value="">
                                <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="kursus_name">Nama Kursus</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required  id="kursus_name" name="kursus_name" class="form-control" placeholder="Masukkan nama kursus yang diikuti" value="{{ old('kursus_name') }}">
                                                </div>
                                            </div>
                                            @error('kursus_name')
                                            <small><p class="col-pink">{{ $message }}</p> </small>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="tempat">Tempat Kursus</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" required  id="tempat" name="tempat" class="form-control" placeholder="Tempat kursus" value="{{ old('tempat') }}">
                                                </div>
                                            </div>
                                            @error('tempat')
                                            <small><p class="col-pink">{{ $message }}</p> </small>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label>Tanggal</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                             <!--<div class="col-xs-12">-->
                                             <?php
                                                if (isset($krow)) {
                                                    if (@$krow->start == "1970-01-01") {
                                                        $krow->start="";
                                                    } else {
                                                        @$krow->start=date("d F Y",strtotime($krow->start));;												
                                                    }
                                                    if (@$krow->end == "1970-01-01") {
                                                        $krow->end="";
                                                    } else {
                                                        @$krow->end=date("d F Y",strtotime($krow->end));;												
                                                    }
                                                }
                                             ?>
                                                <div class="input-daterange input-group" id="bs_datepicker_range_container">
                                                    <div class="form-line">
                                                        <input required autocomplete="off" type="text"  name="start" class="form-control" placeholder="Tanggal mulai..." value="{{ old('start') }}">
                                                    </div>
                                                    <br />
                                                    @error('start')
                                                    <small><p class="col-pink">{{ $message }}</p> </small>
                                                    @enderror
                                                <span class="input-group-addon">to</span>
                                                    <div class="form-line">
                                                        <input autocomplete="off" type="text" name="end" class="form-control" placeholder="Tanggal selesai..." value="{{ old('end') }}">
                                                    </div>
                                                </div>
                                            <!--</div>-->
                                        </div>									
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-sm-12 col-sm-offset-2">
                                            <button class="btn btn-primary m-t-15 waves-effect"><i class="fa fa-check"></i> Save</button>
                                            <!--<input type="submit" class="btn btn-primary m-t-15 waves-effect" value="Save">-->
                                        </div>
                                    </div>								
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        @include('adminpages.residen.delconf',['action'=>'kursus','itemname'=>'kursus_id'])

    
    @endsection
                    