@extends('adminpages.dashboard')
@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h2><i class="fa fa-edit"></i> Tambah Data Pembimbing</h2>
                    </div>
                    <div class="body">
 
                        <form class="form-horizontal" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nip">NIP</label>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" id="nip" name="nip" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row clearfix">
                              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                  <label for="nama">Nama Pembimbing</label>
                              </div>
                              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                  <div class="form-group">
                                      <div class="form-line">
                                          <input type="text" id="nama" name="nama_pembimbing" class="form-control" value="" autofocus>
                                      </div>
                                      @error('nama_pembimbing')
                                      <small><p class="col-pink">{{ $message }}</p></small>
                                      @enderror
                                      </div>
                              </div>
                          </div>
                          <div class="row clearfix">
                              <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
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

