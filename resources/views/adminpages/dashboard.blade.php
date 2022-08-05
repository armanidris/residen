<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Sistem Informasi Residen Bagian Bedah FK-UH</title>
    <!-- Favicon-->
    <link rel="icon" href="/images/favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <!--<link href="/assets/fonts/roboto.css" rel="stylesheet" type="text/css">-->
    <link href="/assets/fonts/material.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/all.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="/assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="/assets/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="/assets/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Bootstrap Material Datetime Picker Css -->
    <link href="/assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />

    <!-- Bootstrap DatePicker Css -->
    <link href="/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />

    <!-- Wait Me Css -->
    <link href="/assets/plugins/waitme/waitMe.css" rel="stylesheet" />

    <!-- Bootstrap Select Css -->
    <link href="/assets/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
	
     <!-- JQuery DataTable Css -->
    <link href="/assets/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
	
    <!-- Custom Css -->
    <link href="/assets/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="/assets/css/themes/all-themes.css" rel="stylesheet" />


    <!-- Jquery Core Js -->
    <script src="/assets/plugins/jquery/jquery.min.js"></script>

</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" style="padding-right: 0;" href="/"> <img src="/assets/images/logo_unhas.png" height="28" alt=""></a>
            </div>
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand">Sistem Informasi Residen Bedah Unhas</a>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="{{ asset('storage/'.auth()->user()->file_foto)  }}" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ auth()->user()->name }}</div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="/profile/{{ session('iduser') }}"><i class="material-icons">person</i>My Profile</a>
                            <li><a href="/password/{{ session('iduser') }}"><i class="material-icons">lock</i>Ganti password</a>
                            <li role="separator" class="divider"></li>
                            <li><a data-toggle="modal" data-target="#defaultModal"><i class="material-icons">input</i>Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN NAVIGATION</li>
                    <li>
                        <a href="/dashboard">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="/residen">
                            <i class="material-icons">account_box</i>
                            <span>Residen</span>
                        </a>
                    </li>
                    <li>
                        <a href="/index.php/makalah">
                            <i class="material-icons">question_answer</i>
                            <span>Pembimbing Makalah</span>
                        </a>
                    </li>
					<p><br /><br /></p>
					<li class="header">Settings</li>
                     <li>
                        <a href="/mpembimbing">
                            <i class="material-icons">school</i>
                            <span>Pembimbing</span>
                        </a>
                    </li>
                     <li>
                        <a href="/mstase">
                            <i class="material-icons">account_balance</i>
                            <span>Tempat Stase</span>
                        </a>
                    </li>
                    <li class="header"></li>
                    <li>
                        <a data-toggle="modal" data-target="#defaultModal">
                            <i class="material-icons">logout</i>
                            <span>Logout</span>
                        </a>
                    </li>
                
				</ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2016 - 2017 <a href="javascript:void(0);">AdminBSB - Material Design</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.5
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
    </section>


    @yield('container')

            <!-- Modal for logout  -->  
            <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Konfirmasi logout</h4>
                        </div>
                        <div class="modal-body">
                            Apakah Anda yakin akan logout?
                        </div>
                        <form action="/logout" method="post">
                            @csrf
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-success waves-effect" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-danger waves-effect">Logout</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>



    <!-- Bootstrap Core Js -->
    <script src="/assets/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="/assets/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="/assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="/assets/plugins/node-waves/waves.js"></script>

    <!-- Autosize Plugin Js -->
    <script src="/assets/plugins/autosize/autosize.js"></script>

    <!-- Moment Plugin Js -->
    <script src="/assets/plugins/momentjs/moment.js"></script>

    <!-- Bootstrap Material Datetime Picker Plugin Js -->
    <script src="/assets/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

    <!-- Bootstrap Datepicker Plugin Js -->
    <script src="/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="/assets/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="/assets/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="/assets/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

    <!-- Custom Js -->
    <script src="/assets/js/admin.js"></script>
    <!--<script src="/assets/js/pages/charts/chartjs.js"></script>-->
    <script src="/assets/js/pages/forms/basic-form-elements.js"></script>
    <script src="/assets/js/pages/tables/jquery-datatable.js"></script>
    <script src="/assets/js/pages/index.js"></script>
	
    <!-- Demo Js -->
    <script src="/assets/js/demo.js"></script>

    yield('lastScipt')
</body>
</html>