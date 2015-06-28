<h3>{!! trans('menu.latest_article') !!}</h3>
<ul>
	@foreach(\App\Helpers\NewEvents::newEvents() as $key => $event)
    <li>
        <a href="{{ route('event-farm.show', ['id' => $event->id, 'slug' => $event->slug]) }}" title="{{ $event->title_vi }}">
        {{ mb_substr($event->title_vi, 0, 30)."..." }}
        </a>
    </li>
    @endforeach
</ul>