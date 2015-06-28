@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Thông tin liên hệ</h2>
				<div class="clearfix"></div>
			</div>
			{!! Form::open(['class' => 'form-horizontal form-label-left']) !!}
			<div class="x_content">
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_vi">Địa chỉ (việt):</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'address_vi',
						$contact['address_vi'],
						[
							'id' => 'address_vi',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_en">Địa chỉ (anh):</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'address_en',
						$contact['address_en'],
						[
							'id' => 'address_en',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="email">Email:</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'email',
						$contact['email'],
						[
							'id' => 'email',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="phone">Số điện thoại:</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'phone',
						$contact['phone'],
						[
							'id' => 'phone',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<div class="row text-center" style="margin-top: 30px;">
                    {!! Form::submit('Thay đổi thông tin', ['class' => 'btn btn-primary']) !!}
                </div>
			</div>
			{!! Form::close() !!}
		</div>
	</div>
</div>
@stop