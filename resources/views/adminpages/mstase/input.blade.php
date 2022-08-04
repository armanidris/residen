
@extends('adminpages.dashboard')

@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-8">
                <div class="card">
                    <div class="header bg-purple">
                        <h2><i class="fa fa-edit"></i> Tambah Data Tempat Stase</h2>
                    </div>
                    <div class="body">
          
          <form class="form-horizontal" method="post" enctype="multipart/form-data">
            @csrf
              <div class="row clearfix">
                  <div class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
                      <label for="nama">Lokasi stase</label>
                  </div>
                  <div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
                      <div class="form-group">
                          <div class="form-line">
                              <input type="text" id="nama" name="lokasi_stase" class="form-control">
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row clearfix">
                  <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                      <button type="submit" class="btn bg-purple m-t-15 waves-effect"><i class="fa fa-save"></i> Save</button>
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