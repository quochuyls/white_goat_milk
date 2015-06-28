@extends('layouts.main')

@section('content')
<div class="content-section-2-left">
	@if ($icons->introduct)
	<img src="{{ URL::asset('/images/banner-icon/' . $icons->introduct) }}" width="147" height="147"/>
	@else
	<img src="{{ URL::asset('/images/Farm.png') }}" width="147" height="147"/>
	@endif

</div>
<div class="content-section-2-right-1">
	<h2 class="uppeprcase">{!! trans('menu.title_page') !!}</h2>
	{!! isset($introduction->content_vi) ? $introduction->content_vi : '' !!}
	<div class="box-link">
		<div id="box-link-top">
			<img class="box-link-img1" src="{{ ($introduction->intro_img_top != NULL) ? URL::to('/images/banner-icon/'.$introduction->intro_img_top) : URL::to('/images/admin/no-img.gif') }}"/>
			<label>Du lịch thực nghiệm nông nghiệp</label>
		</div>
		<div id="box-link-m">
			<div id="left">
				<img class="box-link-img2" src="{{ ($introduction->intro_img_left != NULL) ? URL::to('/images/banner-icon/'.$introduction->intro_img_left) : URL::to('/images/admin/no-img.gif') }}"/>
				<label>Nông trại giáo dục</label>
			</div>
			<div id="right">
				<img class="box-link-img3" src="{{ ($introduction->intro_img_right != NULL) ? URL::to('/images/banner-icon/'.$introduction->intro_img_right) : URL::to('/images/admin/no-img.gif') }}"/>
				<label>Du lịch trải nghiệm</label>
			</div>
		</div>
		<div id="box-link-ft">
			<img class="box-link-img4" src="{{ ($introduction->intro_img_bottom != NULL) ? URL::to('/images/banner-icon/'.$introduction->intro_img_bottom) : URL::to('/images/admin/no-img.gif') }}"/>
			<label>Du lịch team bulding</label>
		</div>
	</div>
	<h2 style="margin-top:40px">LÃNH ĐẠO</h2>
	<p>{!! nl2br( isset($introduction->manager_vi) ? $introduction->manager_vi : '' ) !!}</p>
</div>
@stop
