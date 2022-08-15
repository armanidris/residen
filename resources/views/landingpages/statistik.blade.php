@extends('landingpages.home')

@section('stylesheets')
    <!-- Animation Css -->
    <link href="/assets/plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Jquery Core Js -->
        <script src="/assets/plugins/jquery/jquery.min.js"></script>
@endsection

@section('container')
    <!-- Jquery CountTo Plugin Js -->
    <script src="/assets/plugins/jquery-countto/jquery.countTo.js"></script>
	<!-- ChartJs -->
    <script src="/assets/plugins/chartjs/Chart.bundle.js"></script>

    <section class="content">
        <div class="container">
			<h2 class="mt-5 mb-5"><i class="fas fa-chart-bar"></i> Statistik</h2>			
<div class="row">
	<div class="col-sm-3">
			<div class="card border-primary mb-3">
				<div class="card-body">
				  <h5 class="card-title">Residen aktif </h5>
				  <p class="card-text"><h1><i class="fa fa-users"></i> {{ $data['total_residen'][0]->total }}</h1></p>
				</div>
			</div>
	</div>
	<div class="col-sm-3">
			<div class="card border-success mb-3" style="max-width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Residen pria </h5>
					<p class="card-text"><h1><i class="fa fa-users"></i> {{ $data['sex'][1]->total }}</h1></p>
				</div>
			</div>
	</div>
	<div class="col-sm-3">
		<div class="card border-danger mb-3" style="max-width: 18rem;">
				
				<div class="card-header"><h5 class="card-title">Residen wanita </h5></div>
			<div class="card-body">
				<p class="card-text"><h1><i class="fa fa-users"></i> {{ $data['sex'][0]->total }}</h1></p>
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
			
			<div class="row clearfix mt-5">
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
