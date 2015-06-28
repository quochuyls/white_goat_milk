@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
			    <div class="x_title">
			        <h2>Thay đổi ảnh banner</h2>
			        <div class="clearfix"></div>
			    </div>
			    <div class="x_content">
					<p>Thay đổi ảnh banner với kích thước 350px x 173px hoặc cùng tỷ lệ kích thước để hình ảnh không
					bị bóp méo </p>

					{!! Form::open(array(
						'url' => 'admin/banner-icon/banner-upload',
						'files' => true,
						'id' => 'form-banner'
					)) !!}
						<div style="border: 1px solid #e5e5e5; height: 358px;">
							{!! Form::file('banner', ['style' => 'display: none;', 'id' => 'input_file', 'required' => 'required']) !!}
							<div class="select-image" id="select_image">
								<span>Chọn ảnh banner</span>
							</div>
							<div class="preview-image text-center">
								<img src="{{ URL::asset('/images/admin/banner-default.png') }}" class="banner-default" >
								@if ($banner == "")
									<img src="#" id="previewImgBanner" style="display: none;">
								@else
									<img src="{{ URL::asset('/images/banner-icon') . "/" . $banner . "?" . time() }}" id="previewImgBanner" style="display: block;">
								@endif
							</div>
						</div>
						<div class="row text-center" style="margin-top: 30px;">
							{!! Form::submit('Thay đổi Banner', ['class' => 'btn btn-primary']) !!}
						</div>
					{!! Form::close() !!}
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function () {
			$(document).on('click', '#select_image', function () {
				$("#input_file").click();
			});

			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function (e) {
						$('#previewImgBanner').attr('src', e.target.result);
						$('#previewImgBanner').attr('style', 'display: block;');
					};

					reader.readAsDataURL(input.files[0]);
				}
			}

			$("#input_file").change(function(){
				readURL(this);
			});
		});
	</script>
@stop