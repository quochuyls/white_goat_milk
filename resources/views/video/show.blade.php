@extends('layouts.main')

@section('content')
@if (count($videos) > 0)
	<iframe class="box-clip" width="600" height="366" src="https://www.youtube.com/embed/{{ $video->youtube_id }}" frameborder="0" allowfullscreen></iframe>
	<div class="content-section-2-right-video">
		<h2>{!! trans('menu.video_header') !!}</h2>
		@for($i = 0; $i < count($videos); $i++)
			@if ($videos[$i]->id != $video->id)
			<div class="video">
	            <a href="{{ route('video.show', ['id' => $videos[$i]->id, 'slug' => $videos[$i]->slug]) }}" style="background:url( 'http://img.youtube.com/vi/{{ $videos[$i]->youtube_id }}/1.jpg') center center;"></a>
	            <div class="video-right" style="width: 189px;">
	                <h4 title="{{ $videos[$i]->title }}">{{ mb_substr($videos[$i]->title, 0, 60) . "..." }}</h4>
	                <p>{!! trans('menu.calendar.day') !!} {{ date('d/m/y', strtotime($videos[$i]->updated_at)) }}</p>
	            </div>
	        </div>
	        @endif
		@endfor
	</div>
@endif
@stop
