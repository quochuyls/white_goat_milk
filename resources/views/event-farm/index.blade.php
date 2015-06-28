@extends('layouts.main')

@section('content')
<div class="content-section-2-left-link">
	@include('elements.new-events')
</div>
@foreach($events as $key => $event)
<div class="content-section-2-right-new">
	<a alt="{!! $event->{trans('event.title')} !!}" href="{{ route('event-farm.show', ['id' => $event->id, 'slug' => $event->slug]) }}">
	@if ($event->thumbnail != NULL)
	<img alt="{!! $event->{trans('event.title')} !!}" src="{{ URL::asset('/images/event-farm/' . $event->thumbnail) }}"/>
	@else
	<img alt="{!! $event->{trans('event.title')} !!}" src="{{ URL::asset('/images/admin/no-img.gif') }}"/>
	@endif
	</a>
	<div class="new-text" >
		<h3>
			<a class="event-title" alt="{!! $event->{trans('event.title')} !!}" href="{{ route('event-farm.show', ['id' => $event->id, 'slug' => $event->slug]) }}">
				{!! $event->{trans('event.title')} !!}
			</a>
		</h3>
		<p>{!! $event->{trans('event.description')} !!}</p>
		<a alt="readmore" href="{{ route('event-farm.show', ['id' => $event->id, 'slug' => $event->slug]) }}">{!! trans('menu.detail') !!}</a>
	</div>
</div>
@endforeach

@stop