@extends('admin::layouts.main')

@section('content')
	<h1 style="margin-left: 50px;">Xin chào Admin! </h1>
	<ul>
		<li>
			<label>Tổng số khách hàng: </label>
			<span>{{ $customer }}</span>
		</li>
		<li>
			<label>Tổng số sự kiện Farm: </label>
			<span>{{ $eventFarm }}</span>
		</li>
		<li>
			<label>Tổng số sự kiện khách hàng: </label>
			<span>{{ $eventCustomer }}</span>
		</li>
		<li>
			<label>Tổng số video: </label>
			<span>{{ $video }}</span>
		</li>
		<li>
			<label>Tổng số sản phẩm nông trại: </label>
			<span>{{ $product }}</span>
		</li>
	</ul>
@stop