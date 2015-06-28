@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2> Thông tin về website bên dưới footer </h2>
				<div class="text-right">
					<a href="{{ URL::to('/admin/footer-info/update/') }}" class="btn btn-success">Chỉnh sửa</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Email:</label></div>
					<div class="col-xs-8">{{ $info['email'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Website:</label></div>
					<div class="col-xs-8">{{ $info['website'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Địa chỉ (Việt):</label></div>
					<div class="col-xs-8">{{ $info['address_vi'] }}</div>
				</div>
				<div class="row">
					<div class="col-xs-offset-2 col-xs-2 text-right"><label>Địa chỉ (Eng):</label></div>
					<div class="col-xs-8">{{ $info['address_en'] }}</div>
				</div>
			</div>
		</div>
	</div>
</div>
@stop