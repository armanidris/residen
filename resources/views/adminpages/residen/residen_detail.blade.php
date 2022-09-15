@extends('adminpages.dashboard')

@section('container')
<section class="content">
    <div class="col-sm-12">
        <ol class="breadcrumb breadcrumb-bg-brown">
            <li><a href="/residen/"><i class="fa fa-list"></i> Daftar Residen</a></li>
        </ol>
    </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header bg-orange">
                            <h2> <i class="fas fa-id-card"></i> Data Pribadi</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-sm-12">
                                <dl class="dl-horizontal">
                                    <dt></dt>
                                    <dd>
										@php 
											if (!is_null($res[0]->file_foto)) {
												$foto_residen = $res[0]->file_foto;
											} else {
												if ($res[0]->sex==1) {
													$foto_residen = "male.png";
												} else {
													$foto_residen = "female.png";
												}
											}
										@endphp 
                                        <img src="/images/photos/{{ $foto_residen }}" class="img-rounded" style="width:90px; height:120; border:solid 1px;">
                                    </dd>
                                    <p><br></p>
                                    
                                    <dt>Nama</dt>
                                    <dd>
                                       {{$res[0]->res_name}}
                                        <a style="margin-left: 50px;" href="/residen/edit/{{ Request::segment(2) }}"><i class="fa fa-edit"></i></a>
                                        <a target="_blank" href="/residen/printpdf/{{ session('res_id') }}"><i class="fa fa-print"></i></a>
                                    </dd>
                                    <?php //$this->session->set_userdata('res_name',$data->res_name);?>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Nomor Pokok</dt>
                                    <dd>{{ $res[0]->nomor_pokok }}</dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Tempat, Tanggal Lahir</dt>
                                    <dd>{{ $res[0]->tempat_lahir .", ".date("d F Y",strtotime($res[0]->tanggal_lahir))}}</dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Email</dt>
                                    <dd>{{ $res[0]->email}}</dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Tahun Masuk</dt>
                                    <dd>{{ date("F Y",strtotime($res[0]->tahun_masuk))}}</dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Semester</dt>
                                    <dd><?=$res[0]->smt;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Jenis Kelamin</dt>
                                    <dd><?=$res[0]->sex=="1"?"Pria":"Wanita";?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Alamat</dt>
                                    <dd><?=$res[0]->alamat;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Pangkat / Golongan</dt>
                                    <dd><?=$res[0]->panggol;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>NIP</dt>
                                    <dd><?=$res[0]->res_nip;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Telepon</dt>
                                    <dd><?=$res[0]->phone;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Agama</dt>
                                    <dd><?=@$res[0]->agama->agama;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Universitas Asal</dt>
                                    <dd><?=$res[0]->asal_universitas;?></dd>
                                </dl>
                                <dl class="dl-horizontal">
                                    <dt>Penasehat Akademik</dt>
                                    <dd><?=@$res[0]->pembimbing->nama_pembimbing;?></dd>
                                </dl>
                            </div>
                            </div>
    <!--<pre>-->
    <!--	<?php //print_r($residen_bedah);?>-->
    <!--</pre>-->
                        </div>
                    </div>
                <!--</div>-->
    
				<!--Makalah-->
				<div class="card">
					<div class="header bg-purple">
						<h2> <i class="fa fa-book"></i> Makalah</h2>
					</div>
					<div class="body">
						<div class="row">
						<div class="col-sm-12">
							<div class="table-responsive">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th></th>
											<th>#</th>
											<th>Jenis Makalah</th>
											<th>Judul</th>
											<th>Baca</th>
											<th>Tanggal Baca</th>
											<th>Berita Acara</th>
											<th>Pembimbing</th>
										</tr>
									</thead>
									<tbody>
									@foreach ($res[0]->makalah as $mrow)
										<tr>
											<td>
												{{-- <a href="<?= base_url('/index.php/residen/makalah/'.sha1($mrow->res_id)."/edit/".$mrow->makalah_id); ?>" title="Edit"><i class="fa fa-edit"></i></a> | <a href="<?= base_url('/index.php/residen/makalah/delete/'.sha1($mrow->makalah_id).'/'.sha1($mrow->res_id)); ?>"><i class="fa fa-trash" title="Delete"></i></a> --}}
												<a href="/residen/makalah/edit/{{ $mrow->res_id }}/{{ $mrow->makalah_id }}" title="Edit"><i class="fa fa-edit"></i></a>
											</td>
											<td>{{ $loop->iteration }}</td>
											<td>{{ $mrow->makalah_type }}</td>
											<td>{{ $mrow->judul }}</td>
											<td>
												<input id="baca" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $mrow->status=="1"?"checked":"" }}>
												<label for="baca">{{ $mrow->status=="1"?"Sudah Baca":"Belum Baca" }}</label></td>
											<?php
												if ($mrow->tanggal_baca == "1970-01-01") {
													$vtanggal_baca="";
												} else {
													$vtanggal_baca=date("d F Y",strtotime($mrow->tanggal_baca));
												}
											?>
											<td>{{ $vtanggal_baca }}
											<td>
												<input id="baca" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $mrow->bap_makalah=="1"?"checked":"" }}>
												<label for="baca">{{ $mrow->bap_makalah=="1"?"Ada":"Tidak" }}</label>
											</td>
											<td>{{ @$mrow->pembimbing->nama_pembimbing }}</td>
										</tr>
									@endforeach
									</tbody>
								</table>
									<a href="/residen/makalah/create/{{$res[0]->res_id}}">
									<button class="btn btn-sm bg-purple"><i class="fa fa-plus"></i></button>
									</a>
							</div>
						</div>
						</div>
					</div>
				</div>
				<!--End of Makalah Section-->

				<!--Kursus -->
				<div class="card">
					<div class="header bg-pink">
						<h2> <i class="fas fa-chalkboard-teacher"></i> Kursus</h2>
					</div>
					<div class="body">
						<div class="row">
						<div class="col-sm-12">
							<div class="table-responsive">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th width="30"></th>
											<th>#</th>
											<th>Kursus</th>
											<th>Tempat</th>
											<th>Tanggal</th>
										</tr>
									</thead>
									<tbody>
									@foreach ($res[0]->kursus as $krow)
										<tr>
											<td>
												<a href="/residen/kursus/edit/{{ $krow->res_id }}/{{ $krow->kursus_id }}" title="Edit"><i class="fa fa-edit"></i></a>
											</td>
											<td>{{ $loop->iteration }}</td>
											<td>{{ $krow->kursus_name }}</td>
											<td>{{ $krow->tempat }}</td>
											<td>
												<?php
													if (($krow->start <> "0000-00-00")  && (!is_null($krow->start)) && ($krow->start <> "1970-01-01")) {
														echo date("d F Y",strtotime($krow->start));
													}
													if (($krow->end <> "0000-00-00")  && (!is_null($krow->end)) && ($krow->end <> "1970-01-01")) {
														echo " - ". date("d F Y",strtotime($krow->end));
													}
												?>
											</td>
										</tr>
									@endforeach
									</tbody>
								</table>
									<a href="/residen/kursus/create/{{$res[0]->res_id}}">
									<button class="btn btn-sm bg-pink"><i class="fa fa-plus"></i></button>
									</a>
							</div>
						</div>
						</div>
					</div>
				</div>
				<!--End of Kursus Section-->
         
				<!--Ujian-->
				<div class="card">
					<div class="header bg-indigo">
						<h2> <i class="fa fa-award"></i> Ujian</h2>
					</div>
					<div class="body">
						<div class="row">
						<div class="col-sm-12">
							<div class="table-responsive">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th width="30"></th>
											<th>#</th>
											<th>Ujian</th>
											<th>Tempat</th>
											<th>Tanggal</th>
											<th>Keterangan</th>
										</tr>
									</thead>
									<tbody>
									@foreach ($res[0]->ujian as $urow)
										<tr>
											<td>
												<a href="/residen/ujian/edit/{{ $urow->res_id }}/{{ $urow->ujian_id }}" title="Edit"><i class="fa fa-edit"></i></a>
											</td>
											<td>{{ $loop->iteration }}</td>
											<td>{{ $urow->ujian_name }}</td>
											<td>{{ $urow->tempat }}</td>
											<td>{{ date("d F Y",strtotime($urow->tanggal)) }} </td>
											<td>
												<input id="lulus" type="checkbox" disabled class="filled-in chk-col-indigo" {{ $urow->ket=="1"?"checked":"" }}>
												<label for="baca">{{ $urow->ket=="1"?"Lulus":"Tidak Lulus" }}</label>
											</td>
										</tr>
									@endforeach
									</tbody>
								</table>
									<a href="/residen/ujian/create/{{$res[0]->res_id}}">
									<button class="btn btn-sm bg-indigo"><i class="fa fa-plus"></i></button>
									</a>
							</div>
						</div>
						</div>
					</div>
				</div>
				<!--End of ujian section-->
                

                    <!--Stase-->
                    <div class="card">
                        <div class="header bg-grey">
                            <h2> <i class="fa fa-hospital"></i> Stase</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th width="30"></th>
                                                <th>#</th>
                                                <th>Stase</th>
                                                <th>Tanggal</th>
                                                <!--<th>Keterangan</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($res[0]->stase as $srow)
                                            <tr>
                                                <td>
                                                    <a href="" title="Edit"><i class="fa fa-edit"></i></a>
                                                </td>
                                                <td>{{ $loop->iteration }}</td>
                                                <td> {{  @$srow->tempatstase->lokasi_stase }}</td>
                                                <td> {{ date("d F Y",strtotime($srow->mulai))." - ".date("d F Y",strtotime($srow->selesai)) }} </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                        <a href="/residen/stase/create/{{$res[0]->res_id}}">
                                        <button class="btn btn-sm bg-grey"><i class="fa fa-plus"></i></button>
                                        </a>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--End of stase section-->
    
                </div>
            </div>
        </div>
    </section>
    
@endsection
    