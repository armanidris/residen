@extends('landingpages.home')

@section('container')
<section class="content">
    <div class="container">
        <h2 class="mt-5 mb-5"><i class="fas fa-user"></i> Residen</h2>
        @if (session()->has('info')) 
        <div class="alert alert-warning" role="alert">
            {{ session('info') }}
        </div>
        <p></p>
        @endif

        <form action="" method="POST">
            @csrf
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="res_name" placeholder="Nama residen" aria-label="Nama residen" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i class="fa fa-search"></i></button>
        </div>
        </form>
    </div>
    @isset($list)
        <div class="container">
            <div class="card border-warning">
                <div class="card-header text-bg-warning">
                    <h5 class="card-title">Peringatan</h5>
                </div>
                <div class="card-body">
                    <h6>Terdapat beberapa data dari hasil pencarian :</h6>
                    <dl>
                        @foreach ($list as $l)
                            <dd>{{$l->res_name}}</dd>
                        @endforeach
                    </dl>
                </div>
            </div>
        </div>
    @endisset

    @isset($data)   
    <div class="container">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">Informasi residen</h5>
        </div>
        <div class="card-body">
            <dl class="row">
                <dt class="col-sm-2">Nama</dt><dd class="col-sm-10">{{ $data[0]->res_name }}</dd>
                <dt class="col-sm-2">Pembimbing</dt><dd class="col-sm-10">{{ $data[0]->pembimbing->nama_pembimbing }}</dd>
            </dl>
            <div class="col-sm-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
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
                        @foreach ($data[0]->makalah as $mrow)
                            <tr>
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
                </div>
            </div>
        
            <div class="col-sm-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Kursus</th>
                                <th>Tempat</th>
                                <th>Tanggal</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($data[0]->kursus as $krow)
                            <tr>

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

                </div>
            </div>

            <div class="col-sm-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Ujian</th>
                                <th>Tempat</th>
                                <th>Tanggal</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($data[0]->ujian as $urow)
                            <tr>
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
                </div>
            </div>

            <div class="col-sm-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Stase</th>
                                <th>Tanggal</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($data[0]->stase as $srow)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td> {{  @$srow->tempatstase->lokasi_stase }}</td>
                                <td> {{ date("d F Y",strtotime($srow->mulai))." - ".date("d F Y",strtotime($srow->selesai)) }} </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
    @endisset
    
</section>
@endsection