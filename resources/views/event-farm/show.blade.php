@extends('layouts.service')

@section('content')
<div class="content-top">
    <div class="content-1">
        <h2>{{ $event->{trans('event.title')} }}</h2><br />
        {!! $event->{trans('event.content')} !!}
    </div>
</div>
<div class="box-link-baiviet">
    <a href="{{ $event->link_face }}"><img title="hình ảnh" src="{{ URL::asset('/images/fb.png') }}"></a>
    <a href="{{ $event->link_face }}"><img title="hình ảnh" src="{{ URL::asset('/images/flick.png') }}"></a>
</div>
@stop