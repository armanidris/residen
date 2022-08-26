@extends('adminpages.dashboard')

@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">
                    <div class="header bg-light-green">
                        <h2> <i class="fa fa-university"></i> Daftar Pembimbing Makalah</h2>
                    </div>
                    <div class="body table-responsive">
							<a href="index.php/makalah"><i class="fas fa-sort-numeric-up"></i> Berdasarkan Residen</a> &nbsp;  &nbsp; &nbsp; 
							<a href="index.php/makalah/pembimbing"><i class="fas fa-sort-alpha-up"></i> Berdasarkan Pembimbing</a>
                        <p><br /><br /></p>
						<table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                            <thead>
                                <tr>
                                    <th>Nama Residen</th>
                                    <th>Makalah</th>
                                    <th>Pembimbing</th>
                                </tr>
                            </thead>
							<tbody>
                                @foreach ($data as $d)
                                <tr>
                                    <td>{{ $d->res_name }}</td>
                                    <td></td>
                                    <td>{{ @$d->pembimbing->nama_pembimbing }}</td>
                                </tr>
                                @endforeach
							</tbody>
                        </table>
						
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>