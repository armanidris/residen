@extends ('adminpages.dashboard')

@section ('container')
<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">
                    <div class="header bg-red">
                        <h2> <i class="fa fa-lock"></i> Ganti password</h2>
                    </div>
                    <form action="/password/{{ $iduser }}" method="POST" enctype="multipart/form-data">
                        @csrf
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                <label for="nama">Password saat ini</label>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input name="old_password" type="password" id="nama" class="form-control">
                                    </div>
                                    @if(session()->has('PassErr'))
                                    <small><p class="col-pink">{{ session('PassErr') }}</p></small>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                <label for="email">Password baru</label>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="password" name="new_pass" class="form-control" >
                                    </div>
                                    @if(session()->has('ConfErr'))
                                    <small><p class="col-pink">{{ session('ConfErr') }}</p></small>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                <label for="email">Konfirmasi password baru</label>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="password" name="conf_pass" class="form-control">
                                    </div>
                                    @if(session()->has('ConfErr'))
                                    <small><p class="col-pink">{{ session('ConfErr') }}</p></small>
                                    @endif
                                </div>
                            </div>
                        </div> 
                        
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 form-control-label">
                                
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <button class="btn btn-primary"><i class="fa fa-check"></i> Update</button>
                                </div>
                            </div>
                        </div> 
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection