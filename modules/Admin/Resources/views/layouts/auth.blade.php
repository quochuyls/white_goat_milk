<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>System login | </title>

	<!-- Bootstrap core CSS -->

	<link href="{!!URL::asset('css/bootstrap.min.css')!!}" rel="stylesheet">

	<link href="{!!URL::asset('fonts/css/font-awesome.min.css')!!}" rel="stylesheet">
	<link href="{!!URL::asset('css/animate.min.css')!!}" rel="stylesheet">

	<!-- Custom styling plus plugins -->
	<link href="{!!URL::asset('css/custom.css')!!}" rel="stylesheet">
	<link href="{!!URL::asset('css/icheck/flat/green.css')!!}" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="{!!URL::asset('/js/ie8-responsive-file-warning.js')!!}"></script>
	<![endif]-->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body style="background:#F7F7F7;">
	@yield('content')
<!-- Scripts -->
<script src="{!!URL::asset('js/jquery.min.js')!!}"></script>
</body>
</html>
