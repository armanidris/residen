@extends('adminpages.dashboard')
@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h2><i class="fa fa-edit"></i> Ubah Data Pembimbing</h2>
                    </div>
                    <div class="body">
 
                        <form class="form-horizontal" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="id" value="{{ $data[0]->id }}">
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nip">NIP</label>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" id="nip" name="nip" class="form-control" value="{{ $data[0]->nip }}">
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
                                          <input type="text" id="nama" name="nama_pembimbing" class="form-control" value="{{ $data[0]->nama_pembimbing }}">
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
                                  <a data-toggle="modal" data-target="#pembimbingDelete" style="margin-right: 30px;" href="" class="btn btn-danger m-t-15 waves-effect pull-right"><i class="fa fa-trash"></i> Delete</a>
                              </div>
                          </div>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


            <!-- Modal for delete  -->  
            <div class="modal fade" id="pembimbingDelete" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Konfirmasi hapus data</h4>
                        </div>
                        <div class="modal-body">
                            Data berikut akan dihapus :<br />
                            Nip  : <strong>{{ $data[0]->nip }}</strong> <br />
                            Nama Pembimbing : <strong>{{ $data[0]->nama_pembimbing }}</strong> <br />
                            
                            Apakah Anda yakin akan menghapus data?
                        </div>
                        <form action="/mpembimbing/destroy/{{ $data[0]->id }}" method="post">
                            @csrf
                            <input type="hidden" name="nama_pembimbing" value="{{ $data[0]->nama_pembimbing }}">
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-success waves-effect" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-danger waves-effect">Hapus</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

@endsection

