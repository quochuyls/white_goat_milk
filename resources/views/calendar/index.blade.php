@extends('layouts.main')

@section('content')
<div class="date">
    <div id="nhanlich">
        <hr class="hr" noshade="noshade" color="#73a81f" style="margin-top:0px !important" />
        <p>{!! trans('menu.calendar.header') !!}</p>
    </div>
    <div class="date1" id="calendar-year">
        <a href="javascript: void(0);" id="Prev"></a>
        <p>{!! trans('menu.calendar.year') !!} <span id="year">{{ date('Y') }}</span></p>
        <a href="javascript: void(0);" id="Next"></a>
    </div>
    <table class="date3" id="calendar-month" border="1"; bordercolor="#73a81f" cellspacing="0" height="500" width="960">
        <tbody>
            <tr>
                <td class="weekend">1</td>
                <td class="weekend">2</td>
                <td class="weekend">3</td>
                <td class="weekend">4</td>
                <td class="weekend">5</td>
                <td class="weekend">6</td>
            </tr>
            <tr>
                <td>
                    <a class="" data-href="{{ route('calendar.show', ['month' => 1]) }}">
                        <img src="{{URL::asset('images/dan.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 2]) }}">
                        <img src="{{URL::asset('images/mao.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 3]) }}">
                        <img src="{{URL::asset('images/thin.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 4]) }}">
                        <img src="{{URL::asset('images/ti.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 5]) }}">
                        <img src="{{URL::asset('images/ngo.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 6]) }}">
                        <img src="{{URL::asset('images/mui.png')}}"/>
                    </a>
                </td>
            </tr>
            <tr>
                <td class="weekend">7</td>
                <td class="weekend">8</td>
                <td class="weekend">9</td>
                <td class="weekend">10</td>
                <td class="weekend">11</td>
                <td class="weekend">12</td>
            </tr>
            <tr>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 7]) }}">
                        <img src="{{URL::asset('images/than.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 8]) }}">
                        <img src="{{URL::asset('images/dau.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 9]) }}">
                        <img src="{{URL::asset('images/tuat.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 10]) }}">
                        <img src="{{URL::asset('images/hoi.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 11]) }}">
                        <img src="{{URL::asset('images/tí.png')}}"/>
                    </a>
                </td>
                <td>
                    <a data-href="{{ route('calendar.show', ['month' => 12]) }}">
                        <img src="{{URL::asset('images/suu.png')}}"/>
                    </a>
                </td>
            </tr>
        </tbody>
    </table>
</div>
@stop