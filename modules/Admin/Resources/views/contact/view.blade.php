@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Thông tin liên hệ</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Địa chỉ(việt):</label></div>
					<div class="col-xs-8">{{ $contact['address_vi'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Địa chỉ(anh):</label></div>
					<div class="col-xs-8">{{ $contact['address_en'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Email:</label></div>
					<div class="col-xs-8">{{ $contact['email'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Số điện thoại:</label></div>
					<div class="col-xs-8">{{ $contact['phone'] }}</div>
				</div>
			</div>
		</div>
	</div>
</div>
@stop