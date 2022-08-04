@extends ('adminpages.dashboard')

@section ('container')

<?php 
// print_r($data[0]);
?>

{{-- @dd($data) --}}

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-8">
                @if (session()->has('success')) 
                <div class="alert alert-success" role="alert">
                    {{ session('success') }}
                </div>
                <p></p>
                @endif

                <div class="card">
                    <div class="header bg-purple">
                        <h2> <i class="fa fa-university"></i> Daftar lokasi stase</h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nama tempat stase</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                @foreach ($data as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $item->lokasi_stase }}</td>
                                    <td><a href="/mstase/edit/{{ $item->lokasi_id }}"><i class="fa fa-edit"></i></a></td>
                                </tr>                                    
                                @endforeach

                            </tbody>
                        </table>
									<a href="/mstase/create">
									<button class="btn btn-xs"><i class="material-icons">add</i> Tambah Tempat Stase</button>									
									</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection