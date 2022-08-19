@extends ('adminpages.dashboard')

@section('container')

<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">
                    <div class="header bg-orange">
                        <h2> <i class="fa fa-edit"></i><i class="fa fa-graduation-cap"></i> Edit semester / lulus</h2>
                    </div>
                    <div class="body table-responsive">
						<div class="card">
							<div class="header bg-info">
								Edit semester dan kelulusan
							</div>
						</div>
						<?php $ssmt=session('smt');	?>
                        {{-- <pre>
                        <?php print_r($list_residen); ?>
                        </pre> --}}
						<form method="post" enctype="multipart/form-data">
                            @csrf
						Pilih semester saat ini :
						<select name="semester" onchange="this.form.submit();">
							@foreach ($list_smt as $row)
                            <option {{ @$ssmt==@$row->smt_romawi?"selected":""}}>{{ $row->smt_romawi }}</option>
							@endforeach
						</select>
						</form>
						<p><br /></p>
						<form class="form-horizontal" method="post" enctype="multipart/form-data">
                            @csrf
							<div class="row clearfix">
								<div class="col-sm-4"></div>
								<div class="col-sm-1"><strong>Semester</strong></div>
								<div class="col-sm-2"></div>
								<div class="col-sm-1"><strong>Lulus</strong></div>
							</div>
							@foreach ($list_residen as $rrow)
							<input type=hidden name="res_id[]" value="<?=$rrow->res_id;?>">
							<div class="row clearfix">
								<div class="col-sm-4"><?=$rrow->res_name;?></div>
								<div class="col-sm-1">
									<input name="smt[]" class="form-control" type="text" value="<?=$rrow->smt;?>">
								</div>
								<div class="col-sm-2"></div>
								<div class="col-sm-1">
									<select name="lulus[]" class="show-tick">
										<option value=0>Belum Lulus</option>	
										<option value=1>Lulus</option>	
									</select>
								</div>
							</div>
							@endforeach
							<button class="btn btn-primary m-t-15 waves-effect"><i class="fa fa-check"></i> Save</button>
						</form>
						<?php //print_r($list_smt);?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection