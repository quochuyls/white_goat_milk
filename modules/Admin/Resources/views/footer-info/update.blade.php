@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Cập nhật thông tin dưới footer</h2>
				<div class="clearfix"></div>
			</div>
			{!! Form::open(['class' => 'form-horizontal form-label-left']) !!}
			<div class="x_content">
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_vi">Email:</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'email',
						$info['email'],
						[
							'id' => 'email',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_en">Website:</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'website',
						$info['website'],
						[
							'id' => 'website',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_vi">Địa chỉ (việt):</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'address_vi',
						$info['address_vi'],
						[
							'id' => 'address_vi',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="address_vi">Địa chỉ (Eng):</label>
					<div class="col-md-7 col-sm-7 col-xs-12">
					{!! Form::text(
						'address_en',
						$info['address_en'],
						[
							'id' => 'address_en',
							'class' => 'form-control col-md-7 col-xs-12'
						]
					) !!}
					</div>
				</div>
				<br />
				<div class="row text-center" style="margin-top: 30px;">
                    {!! Form::submit('Thay đổi thông tin', ['class' => 'btn btn-primary']) !!}
                </div>
			</div>
			{!! Form::close() !!}
		</div>
	</div>
</div>
@stop