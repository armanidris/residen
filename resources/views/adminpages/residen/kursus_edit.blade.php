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
                                                <th width="61"></th>
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
                                                <td>
                                                    <a href="/residen/kursus/edit/{{ $vkrow->res_id }}/{{ $vkrow->kursus_id }}" title="Edit"><i class="fa fa-edit"></i></a> | 
                                                    <a data-toggle="modal" data-target="#kdelKonf" href="/rediden/kursus/delete/{{ $vkrow->res_id }}/{{ $vkrow->kursus_id }}"><i class="fa fa-trash" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                       @endforeach	
                                        </tbody>
                                    </table>
                                    <a href="/residen/kursus/create/{{$vkrow->res_id}}">
                                        <button class="btn btn-sm bg-pink"><i class="fa fa-plus"></i></button>
                                    </a>
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
                                <h2><i class="fa fa-edit"></i> Ubah Data Kursus</h2>
                            </div>
                                <div class="body">
                                <form class="form-horizontal" method="post" enctype="multipart/form-data">
                                    @csrf
                                <input type="hidden" name="kursus_id" value="{{ $kdet[0]->kursus_id }}">
                                <input type="hidden" name="res_id" value="{{ session('res_id') }}">
                                    <div class="row clearfix">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                            <label for="kursus_name">Nama Kursus</label>
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text"   id="kursus_name" name="kursus_name" class="form-control" placeholder="Masukkan nama kursus yang diikuti" value="{{ old('kursus_name',$kdet[0]->kursus_name)  }}">
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
                                                    <input type="text"   id="tempat" name="tempat" class="form-control" placeholder="Tempat kursus" value="{{ old('tempat',$kdet[0]->tempat) }}">
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
                                                <div class="input-daterange input-group" id="bs_datepicker_range_container">
                                                    <div class="form-line">
                                                        <input  autocomplete="off" type="text"  name="start" class="form-control" placeholder="Tanggal mulai..." value="{{ old('start',date("d F Y",strtotime($kdet[0]->start))) }}">
                                                    </div>
                                                    <br />
                                                    @error('start')
                                                    <small><p class="col-pink">{{ $message }}</p> </small>
                                                    @enderror
                                                <span class="input-group-addon">to</span>
                                                    <div class="form-line">
                                                        <input autocomplete="off" type="text" name="end" class="form-control" placeholder="Tanggal selesai..." value="{{ old('end',date("d F Y",strtotime($kdet[0]->end))) }}">
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
    @endsection

            <!-- Modal for delete  -->  
            <div class="modal fade" id="kdelKonf" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Konfirmasi logout</h4>
                        </div>
                        <div class="modal-body">
                            Apakah Anda yakin akan logout?
                        </div>
                        <form action="/logout" method="post">
                            @csrf
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-success waves-effect" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-danger waves-effect">Logout</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>                      