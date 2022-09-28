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
                        <a href="/pembimbing_makalah"><i class="fas fa-th-list"></i> Rekap</a> | 
                        <a href="/pembimbing_makalah/detail"><i class="fas fa-table"></i> Detail</a> 
                        <p><br /><br /></p>
                        
						<table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                            <thead>
                                <tr>
                                    <th>Pembimbing</th>
                                    <th>Jumlah Bimbingan</th>
                                </tr>
                            </thead>
							<tbody>
                                @foreach ($data as $d)
                                <tr>
                                    <td>{{ @$d->pembimbing->nama_pembimbing }}</td>
                                    <td>{{ @$d->total }}</td>
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