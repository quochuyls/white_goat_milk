@extends('layouts.main')

@section('content')
<div id="contact">
	<div id="tittle">
		<h2> Địa Chỉ: {{ $contact->address_vi }}</h2>
	</div>
	<div id="text-contact">
		<label><strong>Email:</strong>{{ $contact->email }}</label>
		<label><strong>Hotline:</strong>{{ $contact->phone }}</label>
	</div>
		<a rel href="http://www.facebook.com/detrangfarm"><img title="nongtraidetrang" src="{{ URL::asset('/images/fb.png') }}"/></a>
		<a rel href="http://www.facebook.com/detrangfarm"><img title="nongtraidetrang" src="{{ URL::asset('/images/flick.png') }}"/></a>
<div>
<div id="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3717.034906601685!2d105.59170999999999!3d21.309637!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134f0002de973ab%3A0xd3b996eae4631264!2zQ8O0bmcgVHkgVHLDoWNoIE5oaeG7h20gSOG7r3UgSOG6oW4gVMawIFbhuqVuIFbDoCBYw6J5IEThu7FuZyBOw7RuZyBUaMO0biBN4bubaQ!5e0!3m2!1svi!2s!4v1431234424440" width="200" height=200" frameborder="0" style="border-radius:100% " type="2""></iframe>
</div>
@stop