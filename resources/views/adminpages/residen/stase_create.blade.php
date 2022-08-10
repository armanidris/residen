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
    
                    
                    <!--Stase-->
                    <div class="col-xs-12">

                        @include('adminpages.residen.success_alert')

                    
                    <div class="card">
                        <div class="header bg-grey">
                            <h2> <i class="fa fa-hospital"></i> Stase</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Stase</th>
                                                <th>Tanggal</th>
                                                <!--<th>Keterangan</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($vstase as $vsrow) 
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ @$vsrow->tempatstase->lokasi_stase }}</td>
                                                <td> {{ date("d F Y",strtotime($vsrow->mulai)) ." - ". date("d F Y",strtotime($vsrow->selesai)) }} </td>
                                                <td>
                                                    <a href="/residen/stase/edit/{{ $vsrow->res_id }}/{{ $vsrow->stase_id }}" title="Edit"><i class="fa fa-edit"></i></a> | 
                                                    <a href="" data-toggle="modal" data-target="#mDelConf" id="delConf" data-res-id="{{ $vsrow->res_id }}" data-item-id="{{ $vsrow->stase_id }}"><i class="fa fa-trash" title="Delete"></i></a>
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
                    <!--End of stase section-->
                    
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><i class="fa fa-edit"></i> Tambah Data Stase</h2>
                            </div>
                                <div class="body">
                                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                                    @csrf
                                <input type="hidden" name="stase_id" value="">
                                <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="tempat">Tempat Stase</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <select class="form-control show-tick" name="lokasi_id"  data-live-search="true" data-size="5">
                                                    <option style="margin-left:20px;" value="">-- Please select --</option>
                                                    @foreach ($tempat_stase as $tsrow)
                                                    <option  style="margin-left:20px;" value="{{ $tsrow->lokasi_id }}">{{ $tsrow->lokasi_stase }}</option>
                                                    @endforeach
                                                </select>													
                                            </div>
                                            @error('lokasi_id')
                                                <small><p class="col-pink">{{ $message }}</p></small>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label>Tanggal</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                                <div class="input-daterange input-group" id="bs_datepicker_range_container">
                                                    <div class="form-line">
                                                        <input autocomplete="off" type="text"  name="mulai" class="form-control" placeholder="Tanggal mulai..." value="{{ old('mulai') }}">
                                                    </div>
                                                    @error('mulai')
                                                        <small><p class="col-pink">{{ $message }}</p></small>
                                                    @enderror
                                                    <span class="input-group-addon">to</span>
                                                    <div class="form-line">
                                                        <input autocomplete="off" type="text" name="selesai" class="form-control" placeholder="Tanggal selesai..." value="{{ old('selesai') }}">
                                                    </div>
                                                    @error('selesai')
                                                        <small><p class="col-pink">{{ $message }}</p></small>
                                                    @enderror
                                                </div>
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
    
@include('adminpages.residen.delconf',['action'=>'stase','itemname'=>'stase_id'])

    @endsection
                    