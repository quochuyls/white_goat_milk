@extends('layouts.service')

@section('content')
<div class="content-top">
	<a class="link noidung1 " href="javascript: void(0);"><img class="img img1 small" src="{{ URL::asset('/images/boy-bsn.png') }}"/></a>
	<label class="label-1">{!! trans('menu.service.edu') !!}</label>
	<a  class="link noidung2" href="javascript: void(0);"><img class="img img2 small"src="{{ URL::asset('/images/Farm.png') }}"/></a>
	<label class="label-2" >{!! trans('menu.service.experiment') !!}</label>
	<a class="link noidung3" href="javascript: void(0);"><img class="img img3 big" src="{{ URL::asset('/images/milk.png') }}"/></a>
	<label class="label-3">{!! trans('menu.service.food') !!}</label>
</div>
<div class="content-ft">
    <div class="content-1">
    @foreach($services as $key => $service)
        @if ($service->type == 1)
		<div class="text-1">
			<h2>{{ $service->title_vi }}</h2>
			{!! $service->content_vi !!}
		</div>
        @endif

        @if ($service->type == 2)
        <div class="text-2">
			<h2>{{ $service->title_vi }}</h2>
			{!! $service->content_vi !!}
		</div>
        @endif

        @if ($service->type == 3)
		<div class="text-3">
			<h2>{{ $service->title_vi }}</h2>
			{!! $service->content_vi !!}
		</div>
		@endif
    @endforeach
    </div>
</div>
<script type="text/javascript" src="{{ URL::asset('/js/thucphamnongtrai.js') }}"></script>
@stop
