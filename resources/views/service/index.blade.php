@extends('layouts.main')

@section('content')
<div class="content-section-2-left">
	@foreach($services as $key => $service)
		@if ($service->type == 1)
		<div class="section-left-top">
			<div class="box-img">
				<a href="{!! route('service.experiment') !!}">
					@if ($icons->service_edu != NULL)
					<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/banner-icon/' . $icons->service_edu) !!}"/>
					@else
					<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/boy.png') !!}"/>
					@endif
				</a>
			</div>
			<div class="content-box">
				<h3>{!! trans('menu.service.edu') !!}</h3>
				<h4>{!! $service->{trans('service.title')}!!}</h4>
				<p>{!! nl2br($service->{trans('service.description')}) !!}</p>
				<a href="{!! route('service.edu') !!}">{!! trans('menu.detail') !!}</a>
			</div>
		</div>
		@endif

		@if ($service->type == 2)
		<div class="section-left-m">
			<div class="box-img">
				<a href="{!! route('service.experiment') !!}">
					@if ($icons->service_experiment != NULL)
					<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/banner-icon/' . $icons->service_experiment) !!}"/>
					@else
					<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/farm.png') !!}"/>
					@endif
				</a>
			</div>
			<div class="content-box">
				<h3>{!! trans('menu.service.experiment') !!}</h3>
				<h4>{!! $service->{trans('service.title')} !!}</h4>
				<p>{!! nl2br($service->{trans('service.description')}) !!}</p>
				<a href="{!! route('service.experiment') !!}">{!! trans('menu.detail') !!}</a>
			</div>
		</div>
		@endif

		@if ($service->type == 3)
		<div class="section-left-ft">
			<div class="box-img">
				<a href="{!! route('service.food') !!}">
				@if ($icons->service_food != NULL)
				<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/banner-icon/' . $icons->service_food) !!}"/>
				@else
				<img class="img" title="nongtraigiaoduc" src="{!! URL::asset('/images/milk.png') !!}"/>
				@endif
				</a>
			</div>
			<div class="content-box">
				<h3>{!! trans('menu.service.food') !!}</h3>
				<h4>{!! $service->{trans('service.title')} !!}</h4>
				<p>{!! nl2br($service->{trans('service.description')}) !!}</p>
				<a href="{!! route('service.food') !!}">{!! trans('menu.detail') !!}</a>
			</div>
		</div>
		@endif
	@endforeach
</div>
<div class="content-section-2-right">
@include('elements.new-events')
</div>
<?php $video = \App\Helpers\VideoTop::hotVideo();?>
@if(!empty($video))
<div style="margin-top: 30px; width: 225px; float: right;">
    <iframe class="box-clip" width="225" height="137" src="https://www.youtube.com/embed/{{ $video->youtube_id }}" frameborder="0" allowfullscreen></iframe>
</div>
@endif
@stop
