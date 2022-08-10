@extends('adminpages.dashboard')

@section('container')
    <!-- Jquery CountTo Plugin Js -->
    <script src="/assets/plugins/jquery-countto/jquery.countTo.js"></script>
	<!-- ChartJs -->
    <script src="/assets/plugins/chartjs/Chart.bundle.js"></script>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
				<div class="card">
					<div class="header bg-deep-orange">
						<h2><i class="fas fa-chart-bar"></i> Statistik</h2>			
					</div>
				</div>
            </div>
			<?php //print_r($total_residen);?>
            <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-indigo hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">people</i>
                        </div>
                        <div class="content">
                            <div class="text">Residen aktif</div>
                            <div class="number count-to" data-from="0" data-to="<?=$data['total_residen'][0]->total;?>" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-green hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">people</i>
                        </div>
                        <div class="content">
                            <div class="text">Residen Pria</div>
                            <div class="number count-to" data-from="0" data-to="<?=$data['sex'][1]->total;?>" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-pink hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">people</i>
                        </div>
                        <div class="content">
                            <div class="text">Residen Wanita</div>
                            <div class="number count-to" data-from="0" data-to="<?=$data['sex'][0]->total;?>" data-speed="15" data-fresh-interval="20"></div>
                        </div>
                    </div>
                </div>
			</div>

				
			<div class="row clearfix">				
                <!-- Bar Chart -->
                 <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Berdasarkan tahun masuk</h2>
                        </div>
                        <div class="body">
                            <canvas id="tahun_masuk" height="150"></canvas>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Persemester</h2>
                        </div>
                        <div class="body">
                            <canvas id="semester" height="150"></canvas>
                        </div>
                    </div>
                </div>
			</div>
				 <!-- #END# Bar Chart -->				

			<div class="row clearfix">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="info-box bg-orange hover-expand-effect">
						<div class="icon">
							<i class="material-icons">school</i>
						</div>
						<div class="content">
							<div class="text">Pembimbing</div>
							<div class="number count-to" data-from="0" data-to="<?=$data['pembimbing'][0]->total;?>" data-speed="15" data-fresh-interval="20"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="info-box bg-grey hover-expand-effect">
						<div class="icon">
							<i class="material-icons">account_balance</i>
						</div>
						<div class="content">
							<div class="text">Tempat stase</div>
							<div class="number count-to" data-from="0" data-to="<?=$data['tempat_stase'][0]->total;?>" data-speed="15" data-fresh-interval="20"></div>
						</div>
					</div>
				</div>					
			</div>

        <!--</div>-->
    </section>

@endsection

@section('lastScript')
<script>
var ctx = document.getElementById("tahun_masuk").getContext('2d');
var myChart = new Chart(ctx, {
	type: 'bar',
	data: {
	labels: [ <?php foreach ($data['tahun_masuk'] as $trow) {
				echo '"'.date("M Y",strtotime($trow->tahun_masuk)).'",';
				}
				?>
			 ],
	datasets: [{
		label: 'Jumlah residen',
		data: [
			   <?php foreach ($data['tahun_masuk'] as $t_row) {
				echo $t_row->total.",";
			   } ?>
			   ],
		backgroundColor: 'rgba(0, 188, 212, 0.8)',
		borderWidth: 1
	}]
	},
	options: {
		scales: {
			yAxes: [{
			ticks: {
					beginAtZero: true
				}
			}]
		}
	}
});

var ctx = document.getElementById("semester").getContext('2d');
var myChart = new Chart(ctx, {
	type: 'bar',
	data: {
	labels: [
			 <?php foreach ($data['semester'] as $srow) {
				echo '"'.$srow->smt.'",';
			 } ?>
			 ],
	datasets: [{
		label: 'Jumlah residen',
		data: [
			 <?php foreach ($data['semester'] as $srow) {
				echo '"'.$srow->total.'",';
			 } ?>			   
			   ],
		backgroundColor: 'rgba(233, 30, 99, 0.8)',
		borderWidth: 1
	}]
	},
	options: {
		scales: {
			yAxes: [{
			ticks: {
					beginAtZero: true
				}
			}]
		}
	}
});
</script>
@endsection
