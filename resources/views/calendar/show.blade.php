@extends('layouts.main')

@section('content')
<h1 class="uppeprcase"> {{trans('menu.calendar.event_month')}}  {{ $month }} {{ strtoupper(trans('menu.calendar.year'))  }} {{ $year }}</h1>
@foreach($events as $key => $event)
<div class="content-calendar">
	<a href="{{ $event->link_face }}">
		@if ($event->thumbnail != NULL)
		<img id="img-calendar" title="hinhanh" src="{{ URL::asset('/images/event-customer/' . $event->thumbnail) }}"/>
		@else
		<img id="img-calendar" title="hinhanh" src="{{ URL::asset('/images/admin/no-img.gif') }}"/>
		@endif

	</a>
	<p>
		<strong>{{ $event->title_vi }}</strong> <br/>
		<em>{{ trans('menu.calendar.day')  }} {{ date('d/m/y', strtotime($event->updated_at)) }}</em>
		<br/><br/>
		{!! $event->{trans('event.description')} !!}
	</p>
	<a class="link-more" href="{{ $event->link_face }}">{!! trans('menu.detail') !!}</a>
</div>
@endforeach
@stop