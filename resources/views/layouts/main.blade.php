<!doctype html>
<html lang="vi-VN" itemscope="" itemtype="http://schema.org/Article">
<head>
<meta charset="utf-8">
<title>@if(isset($title)) {{ $title }} @else {!!
	trans('menu.title_page') !!} @endif</title>
<link href="{{ URL::asset('/css/style.css') }}" rel="stylesheet"
	type="text/css" />
<link href="{{ URL::asset('/images/logo.png') }}" rel="icon">
<script src="{{ URL::asset('/js/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('/js/style.js') }}"></script>
</head>
<script type="text/javascript"
	src="{{ URL::asset('/js/modernizr.custom.79639.js') }}"></script>
<body>
	<!--hd-->
	<div class="header">
		<div class="navbar">
			<div class="navbar-main">
				<div class="menu-top-left">
					<div class="menu-top-left-1">
						<img class="icon-menu-top-left-1"
							src="{{ URL::asset('/images/phone.png') }}" />
						<p class="text-menu-top-left">{{
							\App\Helpers\ContactFarm::getPhone() }}</p>
					</div>
					<div class="menu-top-left-2">
						<img class="icon-menu-top-left-1"
							src="{{ URL::asset('/images/e_mail.png') }}" />
						<p class="text-menu-top-left-2">{{
							\App\Helpers\ContactFarm::getEmail() }}</p>
					</div>
				</div>

				<div class="menu-top-right">
					<ul class="language_bar_chooser">
						@foreach(LaravelLocalization::getSupportedLocales() as $localeCode
						=> $properties) @if(LaravelLocalization::getCurrentLocale() !=
						$localeCode)
						<li><a class="lang active" rel="alternate"
							hreflang="{{$localeCode}}"
							href="{{LaravelLocalization::getLocalizedURL($localeCode) }}">
								{{{ $properties['native'] }}} </a></li> @endif @endforeach
					</ul>

				</div>
			</div>
		</div>

		@include('layouts.menu')

	</div>
	<!--endHd-->


	<!--mainbd-->
	<div class="main-body">
		<div class="main">

			<div class="content-section-1">
				<div class="content-section-1-left">
					<img title="nongtraidetrang"
						src="{{ URL::asset('/images/banner.png') }}" />
				</div>				
				<a href="{{ route('calendar') }}" class="content-section-1-right">
					<h3>{!! trans('menu.calendar.title') !!}</h3>
				</a>				
			</div>
			<div class="content-section-2">@yield('content')</div>
		</div>
		<div class="popup">
			<a href="{{ route('contact') }}"> {!! trans('menu.booking') !!}</a>
		</div>
	</div>
	<!--endMainbd-->
	<!--ft-->
	<div class="footer">
		<div class="section-ft">
			<p>Email: {{ \App\Helpers\ContactFarm::getEmail() }}</p>
			<p>Website: http://www.nongtraidetrang.vn/</p>
			<p>Địa Chỉ: {{ \App\Helpers\ContactFarm::getAddressVi() }}</p>
			<hr>
			<p>© 2015 Nông trại dê trắng</p>
		</div>
	</div>
	<!--endFt-->
	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
var $_Tawk_API={},$_Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/557ac5dd4b51b2192095ed35/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
	<!--End of Tawk.to Script-->

</body>
</html>
