<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak data : {{ $data[0]->res_name }}</title>
</head>
<body style="font-size: 10pt">
    <h3>Data residen bedah</h3>
    <img src="{{ asset('storage/'.$data[0]->file_foto) }}" alt="" style="height:70; border:solid 1px; float: right; margin-right: 25px;">
<table width="100%">
	<tr>
		<td width="30%">Nama</td>
		<td width="70%">{{ $data[0]->res_name }}</td>
	</tr>
	<tr>
		<td>Nomor pokok</td>
		<td>{{ $data[0]->nomor_pokok }}</td>
	</tr>
	<tr>
		<td>Tempat, Tanggal lahir</td>
		<td>{{ $data[0]->tempat_lahir. ', '. date("d F Y",strtotime($data[0]->tanggal_lahir)) }}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>{{ $data[0]->email }}</td>
	</tr>
	<tr>
		<td>Tahun masuk</td>
		<td>{{ date("d F Y",strtotime($data[0]->tahun_masuk)) }}</td>
	</tr>
	<tr>
		<td>Semester</td>
		<td>{{ $data[0]->smt }}</td>
	</tr>
	<tr>
		<td>Alamat</td>
		<td>{{ $data[0]->alamat }}</td>
	</tr>
	<tr>
		<td>Pangkat / golongan</td>
		<td>{{ $data[0]->panggol }}</td>
	</tr>
	<tr>
		<td>NIP</td>
		<td>{{ $data[0]->nip }}</td>
	</tr>
	<tr>
		<td>Telepon</td>
		<td>{{ $data[0]->phone }}</td>
	</tr>
	<tr>
		<td>Agama</td>
		<td>{{ $data[0]->agama->agama }}</td>
	</tr>
	<tr>
		<td>Universitas Asal</td>
		<td>{{ $data[0]->asal_universitas }}</td>
	</tr>
	<tr>
		<td>Penasehat akademik</td>
		<td>{{ $data[0]->pembimbing->nama_pembimbing }}</td>
	</tr>
</table>
<p></p>
<h4>Makalah</h4>
<table width="100%" border="1" cellpadding="3">
	<tr bgcolor="#dcdcdc">
        <td>#</td>
		<td>Makalah</td>
		<td>Judul</td>
		<td>Tanggal baca</td>
		<td>BAP Makalah</td>
		<td>Pembimbing</td>
	</tr>
    @foreach ($data[0]->makalah as $mrow)
    <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $mrow->makalah_type }}</td>
        <td>{{ $mrow->judul }}</td>
        <td>{{ date("d F Y",strtotime($mrow->tanggal_baca)) }}
        <td>
            {{ $mrow->bap_makalah=="1"?"Ada":"Tidak" }}<
        </td>
        <td>{{ @$mrow->pembimbing->nama_pembimbing }}</td>
    </tr>
    </tr>
    @endforeach
</table>

<p></p>
<h4>Kursus</h4>
<table width="100%" border="1" cellpadding="3">
	<tr bgcolor="#dcdcdc">
        <td>#</td>
        <td>Kursus</td>
        <td>Tempat</td>
        <td>Tangal</td>
    </tr>
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
</table>

<p></p>
<h4>Ujian</h4>
<table width="100%" border="1" cellpadding="3">
    <tr bgcolor="#dcdcdc">
        <td>#</td>
        <td>Ujian</td>
        <td>Tempat</td>
        <td>Tanggal</td>
        <td>Ket</td>
    </tr>
    @foreach ($data[0]->ujian as $urow)
    <tr>
        <td>{{ $loop->iteration }}</td>
        <td>{{ $urow->ujian_name }}</td>
        <td>{{ $urow->tempat }}</td>
        <td>{{ date("d F Y",strtotime($urow->tanggal)) }} </td>
        <td>
           {{ $urow->ket=="1"?"Lulus":"Tidak Lulus" }}
        </td>
    </tr>
    @endforeach
</table>

<p></p>
<h4>Stase</h4>
<table width="100%" border="1" cellpadding="3">
    <tr bgcolor="#dcdcdc">
        <td>#</td>
        <td>Stase</td>
        <td>Tanggal</td>
    </tr>
    @foreach ($data[0]->stase as $srow)
    <tr>
        <td>{{ $loop->iteration }}</td>
        <td> {{  @$srow->tempatstase->lokasi_stase }}</td>
        <td> {{ date("d F Y",strtotime($srow->mulai))." - ".date("d F Y",strtotime($srow->selesai)) }} </td>
    </tr>
    @endforeach
</table>
</body>
</html>