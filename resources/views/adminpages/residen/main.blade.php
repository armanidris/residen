@extends('adminpages.dashboard')

@section('container')
<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
				@include('adminpages.residen.success_alert')

                <div class="card">
                    <div class="header bg-red">
                        <h2> <i class="fa fa-university"></i> Residen Bedah</h2>
                    </div>
                    <div class="body">
						<div class="row clearfix">
							<div class="col-sm-12">
								<a class="btn btn-primary" href="/residen/create"><i class="fas fa-user-plus"></i> Tambah </a> 
							</div>
						</div>
						<div class="table-responsive">
                        <!--<table class="table table-striped">-->
							<table class="table table-bordered table-striped table-hover js-basic-example dataTable">							
								<thead>
									<tr>
										<th>#</th>
										<th>Nama Residen</th>
										<th>Semester</th>
										<th>Tahun Masuk</th>
										<th>Penasehat Akademik</th>
									</tr>
								</thead>
								<tbody>
									@foreach ($data as $row)
									<tr>
										<td>{{ $loop->iteration }}</td>
										<td><a href="/residen/{{ Crypt::encryptString($row->res_id) }}">{{ $row->res_name }} </a></td>
										<td>{{  $row->smt }}</td>
										<td>{{ date("F Y",strtotime($row->tahun_masuk)) }} </td>
										<td>{{ $row->pembimbing->nama_pembimbing }}</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
						<div class="row clearfix">
							<div class="col-sm-12">
								<p><br /></p>
								<a class="btn btn-warning" href="/residen/massedit"><i class="fa fa-edit"></i><i class="fa fa-graduation-cap"></i> Ubah semester / lulus </a> 								
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    
@endsection