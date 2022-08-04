@extends('adminpages.dashboard')

@section('container')
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
                    <div class="header">
                        <h2><i class="material-icons">school</i> Daftar Konsulen / Pembimbing</h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>NIP</th>
                                    <th>Nama</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $d)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{  $d->nip }}</td>
                                    <td>{{  $d->nama_pembimbing }}</td>
                                    <td><a href="/mpembimbing/edit/{{ $d->id }}"><i class="fa fa-edit"></i></a></td>
                                   
                                </tr>
                                @endforeach
                                
                            </tbody>
                        </table>
                                <a href="/mpembimbing/create">
                                <button class="btn btn-xs"><i class="material-icons">person_add</i> Tambah Pembimbing</button>									
                                </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection