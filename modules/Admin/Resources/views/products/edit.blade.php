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
								<div class="alert alert-success alert-dismissible fade in" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
									</button>
									<strong>Sảy ra lỗi trong quá trình nhập liệu,</strong> Bạn vui lòng kiểm tra lại các thông tin.
								</div>

							</div>
						</div>
					@endif
					<div class="clearfix"></div>
				</div>

				<div class="x_content">
					<br/>
					{!! Form::model($product, [
					'method' => 'PUT',
					'route' => 'admin.product.update',
					'class' => 'form-horizontal form-label-left',
					'files' => true,
					'enctype' => 'multipart/form-data',
					'id' => 'form-create-customer',
					]) !!}
					{!! Form::hidden( 'id', $product->id) !!}
					<div id="wizard" class="form_wizard wizard_horizontal">
						<ul class="wizard_steps">
							<li>
								<a href="#step-1">
									<span class="step_no">1</span>
									<span class="step_descr">Step 1<br/><small>Step 1 Tiếng Việt</small></span>
								</a>
							</li>
							<li>
								<a href="#step-2">
									<span class="step_no">2</span>
									<span class="step_descr">Step 2<br/><small>Step 2 Tiếng Anh</small></span>
								</a>
							</li>
							<li>
								<a href="#step-3">
									<span class="step_no">3</span>
									<span class="step_descr">Step 3<br/><small>Step 3 Ảnh sản phẩm</small></span>
								</a>
							</li>
						</ul>
						<div id="step-1">
							<div class="form-group">
								{!! Form::label( 'title_vi', 'Tên sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text('title_vi',old('title_vi'), ['id' => 'title_vi', 'class' => 'form-control col-md-7 col-xs-12',]) !!}
									@if($errors->has('title_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('title_vi') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'description_vi', 'Mô tả sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::textarea('description_vi', old('description_vi'), [ 'id' => 'description_vi', 'class' => 'form-control col-md-7 col-xs-12', 'rows' => 3]) !!}
									@if($errors->has('description_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('description_vi') }} </p>
									@endif
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'content_vi', 'Bài viết sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::textarea( 'content_vi', old('content_vi'), [ 'id' => 'content_vi', 'class' => 'editor form-control col-md-7 col-xs-12', 'rows' => 3, 'contenteditable' => true]) !!}
									@if($errors->has('content_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('content_vi') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'price_vi', 'Giá bán', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}

								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'price_vi', old('price_vi'), [ 'id' => 'price_vi', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
									@if($errors->has('price_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('price_vi') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'price_sale_vi', 'Giá khuyến mãi', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'price_sale_vi', old('price_sale_vi'), [ 'id' => 'price_sale_vi', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'unit_vi', 'Đơn vị', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'unit_vi', old('unit_vi'), [ 'id' => 'unit_vi', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
									@if($errors->has('unit_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('unit_vi') }} </p>
									@endif
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'product_code_vi', 'Quy cách đóng gói', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'product_code_vi', old('product_code_vi'), [ 'id' => 'product_code_vi', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
									@if($errors->has('product_code_vi'))
										<p class="text-left parsley-error"> {{ $errors->first('product_code_vi') }} </p>
									@endif
								</div>
							</div>
						</div>

						<div id="step-2">
							<div class="form-group">
								{!! Form::label( 'title_en', 'Tên sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text('title_en',old('title_en'), ['id' => 'title_en', 'class' => 'form-control col-md-7 col-xs-12',]) !!}
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'description_en', 'Mô tả sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::textarea('description_en', old('description_en'), [ 'id' => 'description_en', 'class' => 'form-control col-md-7 col-xs-12', 'rows' => 3]) !!}
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'content_en', 'Bài viết sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::textarea( 'content_en', old('content_en'), [ 'id' => 'content_en', 'class' => 'editor form-control col-md-7 col-xs-12', 'rows' => 3, 'contenteditable' => true]) !!}
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'price_en', 'Giá bán', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}

								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'price_en', old('price_en'), [ 'id' => 'price_en', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'price_sale_en', 'Giá khuyến mãi', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'price_sale_en', old('price_sale_en'), [ 'id' => 'price_sale_en', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'unit_en', 'Đơn vị', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'unit_en', old('unit_en'), [ 'id' => 'unit_en', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
								</div>
							</div>
							<div class="form-group">
								{!! Form::label( 'product_code_en', 'Quy cách đóng gói', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12'] ) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'product_code_en', old('product_code_en'), [ 'id' => 'product_code_en', 'class' => 'form-control col-md-7 col-xs-12' ]) !!}
								</div>
							</div>
						</div>
						<div id="step-3">
							<div class="form-group">
								{!! Form::label( 'categories_id', 'Danh mục sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::select('categories_id', $categoriesVi, $product->categories_id, ['id' => 'categories_id', 'class' => 'form-control col-md-7 col-xs-12',]) !!}
									@if($errors->has('categories_id'))
										<p class="text-left parsley-error"> {{ $errors->first('categories_id') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'publish_at', 'Ngày phát hành', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="ccol-md-7 col-sm-7 col-xs-12">
									{!! Form::text( 'publish_at', date('d-m-Y', strtotime($product->publish_at)) , [ 'id' => 'product_code_en', 'placeholder'=> 'Ngày phát hành', 'class' => 'has-date-picker form-control has-feedback-left col-md-7 col-xs-12', 'aria-describedby' =>
									'inputSuccess2Status2' ]) !!}

									<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
									<span id="inputSuccess2Status2" class="sr-only">(success)</span>
									@if($errors->has('publish_at'))
										<p class="text-left parsley-error"> {{ $errors->first('publish_at') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'thumbnail', 'Hình ảnh sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::file('thumbnail', ['id' => 'input_thumbnail', 'class' => 'thumbnail-get-prev']) !!}
									<img src="{{$product->thumbnail ? URL::asset('/images/products/' . $product->thumbnail) : URL::asset('/images/admin/no-img.gif')}}" id="prev_input_thumbnail" alt="{{$product->title_vi}}" style="margin-top: 15px; height: 230px;" class="img-responsive">
									@if($errors->has('thumbnail'))
										<p class="text-left parsley-error"> {{ $errors->first('thumbnail') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'icon', 'Icon sản phẩm', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::file('icon', ['id' => 'input_icon', 'class' => 'thumbnail-get-prev']) !!}
									<img src="{{$product->icon ? URL::asset('/images/products/' . $product->icon) : URL::asset('/images/admin/no-img.gif')}}" id="prev_input_icon" alt="{{$product->title_vi}}" style="margin-top: 15px; height: 230px;" class="img-responsive">
									@if($errors->has('icon'))
										<p class="text-left parsley-error"> {{ $errors->first('icon') }} </p>
									@endif
								</div>
							</div>

							<div class="form-group">
								{!! Form::label( 'sale', 'Khuyến mãi', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::checkbox('sale_flg', 1, $product->sale_flg ? true : false, ['id' => 'switch-offColor', 'data-size' =>"small", 'data-on-color' => 'success']) !!}
								</div>

							</div>

							<div class="form-group">
								{!! Form::label( 'new_flg', 'Hàng mới', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
								<div class="col-md-7 col-sm-7 col-xs-12">
									{!! Form::checkbox('new_flg', 1, $product->new_flg ? true : false, ['id' => 'switch-offColor', 'data-size' =>"small", 'data-on-color' => 'success']) !!}
								</div>

							</div>
						</div>

					</div>
				</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
	</div>
	<script>
		$(document).ready(function () {
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					var prviewId = 'prev_' + $(input).attr('id');
					reader.onload = function (e) {
						$('#' + prviewId).attr('src', e.target.result);
					};

					reader.readAsDataURL(input.files[0]);
				}
			}

			$(".thumbnail-get-prev").change(function () {
				readURL(this);
			});
		});
	</script>
@stop
