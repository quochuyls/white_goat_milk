@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Thêm sản phẩm mới!</h2>
					@if($errors->has())
						<div class="row">
							<div class="x_content bs-example-popovers">
								<div class="alert alert-danger alert-dismissible fade in" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
									<strong>Sảy ra lỗi trong quá trình nhập liệu,</strong> Bạn vui lòng kiểm tra lại các thông tin.
								</div>
							</div>
						</div>
					@endif
					<div class="clearfix"></div>
				</div>

				<div class="x_content">
					<br/>
					{!! Form::open([
					'method' => 'POST',
					'route' => 'admin.video.store',
					'class' => 'form-horizontal form-label-left',
					'files' => true,
					'enctype' => 'multipart/form-data',
					'id' => 'form-create-video',
					]) !!}
						@include('admin::videos._form', ['submitText' => 'Thêm video'])
			{!! Form::close() !!}
		</div>
	</div>
	</div>
	</div>
	<script src="{{ URL::asset('js/admin/video.js')}}"></script>
@stop
