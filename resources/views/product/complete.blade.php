@extends('layouts.main')

@section('content')
<h1 style="height:400px; line-height:150px" class="uppeprcase">{!! Session::get('message') !!}</h1>
@stop
