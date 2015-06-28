<div class="menu-bar">
    <div class="menu-bar-main">
        <div class="logo">
            <a href="{{ route('home') }}"><img src="{{ URL::asset('/images/logo.png') }}"/></a>
        </div>
        <div class="nav-menu">
            <ul class="show-nav-menu">
                <li class="dichvu">
                    @if (in_array(Route::currentRouteName(), [
                        'home',
                        'service.edu',
                        'service.experiment',
                        'service.food',
                    ]))
                    <a class="dacbiet" rel href="{{ route('home') }}">{{trans('menu.service')}}</a>
                    @else
                    <a rel href="{{ route('home') }}">{{trans('menu.service')}}</a>
                    @endif
                    <ul class="childmenu">
                        <li><a class="noidung1a" rel href="{{ route('service.edu') }}">{{trans('menu.service.edu')}}</a></li>
                        <li><a class="noidung2a" rel href="{{ route('service.experiment') }}">{{trans('menu.service.experiment')}}</a></li>
                        <li><a class="noidung3a" rel href="{{ route('service.food') }}">{{trans('menu.service.food')}}</a></li>
                    </ul>
                </li>
                <li>
                    <a class="{{ (Route::currentRouteName() == "introduction") ? "dacbiet" : "" }}" rel href="{{ route('introduction') }}"><span>{{trans('menu.intro')}}</span></a>
                </li>
                <li>
                    <a class="{{ (Route::currentRouteName() == "customer") ? "dacbiet" : "" }}" rel href="{{ route('customer') }}"><span>{{trans('menu.customer')}}</span></a>
                </li>
                <li>
                    <a class="{{ (in_array(Route::currentRouteName(), ['event-farm.show', 'event.farm'])) ? "dacbiet" : "" }}" rel href="{{ route('event.farm') }}"><span>{{trans('menu.event')}}</span></a>
                </li>
                <li>
                    <a class="{{ (Route::currentRouteName() == "contact") ? "dacbiet" : "" }}" rel href="{{ route('contact') }}"><span>{{trans('menu.contact')}}</span></a>
                </li>
                <li>
                    <a class="{{ in_array(Route::currentRouteName(), ['video', 'video.show']) ? "dacbiet" : "" }}" rel href="{{ route('video') }}"><span>{{trans('menu.video')}}</span></a>
                </li>
                <li>
                    @if (in_array(Route::currentRouteName(), [
                        'order'
                    ]))
                    <a class="datsua dacbiet" rel href="{{ route('order') }}"><span>{{trans('menu.order')}}</span></a>
                    @else
					<a class="datsua" rel href="{{ route('order') }}"><span>{{trans('menu.order')}}</span></a>
                    @endif
                </li>
            </ul>
        </div>
        <div class="fb">
            <a rel href="http://www.facebook.com/detrangfarm"><img title="nongtraidetrang facebook" src="{{ URL::asset('/images/fb.png') }}"/></a>
            <a rel href="http://www.facebook.com/detrangfarm"><img title="nongtraidetrang flickr" src="{{ URL::asset('/images/flick.png') }}"/></a>
        </div>
    </div>

</div>
