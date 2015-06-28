<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Farm</title>

	<!-- Bootstrap core CSS -->

	<link href="{{ URL::asset('/css/bootstrap.min.css') }}" rel="stylesheet">

	<link href="{{ URL::asset('/fonts/css/font-awesome.min.css') }}" rel="stylesheet">
	<link href="{{ URL::asset('/css/animate.min.css') }}" rel="stylesheet">

	<!-- Custom styling plus plugins -->
	<link href="{{ URL::asset('/css/custom.css') }}" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('/css/maps/jquery-jvectormap-2.0.1.css') }}"/>
	<link href="{{ URL::asset('/css/icheck/flat/green.css') }}" rel="stylesheet"/>
	<link href="{{ URL::asset('/css/floatexamples.css') }}" rel="stylesheet" type="text/css"/>
	<link href="{{ URL::asset('/css/main.css') }}" rel="stylesheet" type="text/css">
	<link href="{{ URL::asset('/css/datatables/tools/css/dataTables.tableTools.css') }}" rel="stylesheet" type="text/css">
	{{--<link rel="stylesheet" href="{{ URL::asset('css/switchery/switchery.min.css') }}"/>--}}
	<link href="{{ URL::asset('css/bootstrap3/bootstrap-switch.min.css') }}" rel="stylesheet">
	<script src="{{ URL::asset('/js/jquery.min.js') }}"></script>
	<link href="{{ URL::asset('/css/my_custom.css') }}" rel="stylesheet">

	<!--[if lt IE 9]>
	<script src="{{ URL::asset('/js/ie8-responsive-file-warning.js') }}"></script>
	<![endif]-->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>


<body class="nav-md">

<div class="container body">


	<div class="main_container">

		<div class="col-md-3 left_col">
			<div class="left_col scroll-view">

				<div class="navbar nav_title" style="border: 0;">
					<a href="#" class="site_title"><i class="fa fa-paw"></i> <span>DETRANG FARM!</span></a>
				</div>
				<div class="clearfix"></div>

				<br/>

				<!-- sidebar menu -->
				@include('admin::layouts.slide_bar')
				<!-- /sidebar menu -->

				<!-- /menu footer buttons -->
				<div class="sidebar-footer hidden-small">
					<a data-toggle="tooltip" data-placement="top" title="Cấu hình">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="Toàn màn hình">
						<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="Khóa">
						<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
					</a>
					<a data-toggle="tooltip" data-placement="top" title="Đăng xuất">
						<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
					</a>
				</div>
				<!-- /menu footer buttons -->
			</div>
		</div>

		<!-- top navigation -->
		<div class="top_nav">

			<div class="nav_menu">
				<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						@include('admin::layouts.profile')
					</ul>
				</nav>
			</div>

		</div>
		<!-- /top navigation -->


		<!-- page content -->
		<div class="right_col" role="main">
			@yield('content')

			<!-- footer content -->
			<footer>
				<div class="">
					<p class="pull-right">Được thiết kế bởi DETRANG FARM. |
						<span class="lead"> <i class="fa fa-paw"></i> DETRANG FARM!</span>
					</p>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->

		</div>
		<!-- /page content -->
	</div>


</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
</div>

<script type="text/javascript">
	var BASE_URL ='{{URL::to('/')}}';
</script>
<script src="{{ URL::asset('/js/bootstrap.min.js') }}"></script>

<script src="{{ URL::asset('/js/vendor/nicescroll/jquery.nicescroll.min.js') }}"></script>

<!-- icheck -->
<script src="{{ URL::asset('/js/vendor/icheck/icheck.min.js') }}"></script>
<!-- dropzone -->
<script src="{{ URL::asset('/js/vendor/dropzone/dropzone.js') }}"></script>

<!-- daterangepicker -->
<script type="text/javascript" src="{{ URL::asset('/js/moment.min2.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('/js/vendor/datepicker/daterangepicker.js') }}"></script>


<script type="text/javascript" src="{{ URL::asset('/js/vendor/wizard/jquery.smartWizard.js') }}"></script>
<script src="{{ URL::asset('/js/vendor/ckeditor.js') }}"></script>
<script src="{{ URL::asset('/js/vendor/adapters/jquery.js') }}"></script>
<!-- Datatables -->
<script src="{{ URL::asset('js/vendor/datatables/js/jquery.dataTables.js') }}"></script>
<script src="{{ URL::asset('js/vendor/datatables/tools/js/dataTables.tableTools.js') }}"></script>

<!-- switchery -->
{{--<script src="{{ URL::asset('js/vendor/switchery/switchery.min.js') }}"></script>--}}
<script src="{{ URL::asset('js/vendor/highlight.js') }}"></script>
<script src="{{ URL::asset('js/vendor/bootstrap-switch.min.js')}}"></script>
<script src="{{ URL::asset('js/vendor/switch.main.js')}}"></script>
<script src="{{ URL::asset('js/admin/main.js')}}"></script>
<script>	
	CKEDITOR.disableAutoInline = true;
	
	jQuery(document).ready(function () {
		jQuery('textarea.editor').ckeditor(); // Use CKEDITOR.replace() if element is <textarea>.
		//jQuery( 'textarea' ).ckeditor(); // Use CKEDITOR.replace() if element is <textarea>.
		
	});

	


</script>

<script src="{{ URL::asset('/js/custom.js') }}"></script>

</body>

</html>
