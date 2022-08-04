@extends ('adminpages.dashboard')

{{-- @dd($data[0]->name) --}}
{{-- @dd($data[0]->table) --}}

@section ('container')
<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">
                    <div class="header bg-red">
                        <h2> <i class="fa fa-user"></i> My Profile</h2>
                    </div>
                    <div class="body">

                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                        <img src="{{ asset('storage/'.$data[0]->file_foto) }}" alt="" width="100">
                                </div>
                            </div>
                        </div>


                        <form action="/profile/{{ $iduser }}" method="post" enctype="multipart/form-data">
                            @csrf

                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                <label for="nama">Nama</label>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="text" id="nama" name="name" class="form-control" value="{{ $data[0]->name }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                <label for="email">Email</label>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="text" name="email" id="email" class="form-control" value="{{ $data[0]->email }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                <label for="avatar">Upload file foto</label>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="file" id="avatar" name="file_foto" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>                    
                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <button class="btn btn-primary">Update</button>
                                </div>
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