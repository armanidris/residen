@extends('adminpages.dashboard')

@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-8">
                <div class="card">
                    <div class="header bg-purple">
                        <h2><i class="fa fa-edit"></i>Ubah Data Tempat Stase</h2>
                    </div>
                    <div class="body">
          
          <form class="form-horizontal" method="post" enctype="multipart/form-data">
            @csrf
              <input name="lokasi_id" type="hidden" value="{{ $data[0]->lokasi_id }}">
              <div class="row clearfix">
                  <div class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
                      <label for="nama">Lokasi stase</label>
                  </div>
                  <div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
                      <div class="form-group">
                          <div class="form-line">
                              <input type="text" id="nama" name="lokasi_stase" class="form-control" value="{{ $data[0]->lokasi_stase }}">
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row clearfix">
                  <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                      <button type="submit" class="btn bg-purple m-t-15 waves-effect"><i class="fa fa-save"></i> Save</button>
					  
                      {{-- <a style="margin-right: 30px;" href="/mstase/del/{{ $data[0]->lokasi_id }}" class="btn btn-danger m-t-15 waves-effect pull-right"><i class="fa fa-trash"></i> Delete</a> --}}
                      <a data-toggle="modal" data-target="#staseDelete" style="margin-right: 30px;" href="" class="btn btn-danger m-t-15 waves-effect pull-right"><i class="fa fa-trash"></i> Delete</a>
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
            <div class="modal fade" id="staseDelete" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Konfirmasi hapus data</h4>
                        </div>
                        <div class="modal-body">
                            Tempat stase : <strong>{{ $data[0]->lokasi_stase }}</strong> akan dihapus.<br />
                            Apakah Anda yakin akan menghapus data?
                        </div>
                        <form action="/mstase/destroy/{{ $data[0]->lokasi_id }}" method="post">
                            @csrf
                            <input type="hidden" name="lokasi_stase" value="{{ $data[0]->lokasi_stase }}">
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-success waves-effect" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-danger waves-effect">Hapus</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

@endsection