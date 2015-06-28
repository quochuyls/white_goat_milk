@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
			    <div class="x_title">
			        <h2>Thay đổi icon - giới thiệu</h2>
			        <div class="clearfix"></div>
			    </div>
			    <div class="x_content">
					<p>Thay đổi icon - giới thiệu với kích thước 110px x 110px hoặc cùng tỷ lệ kích thước để hình ảnh không bị bóp méo </p>

					{!! Form::open(array(
						'url' => 'admin/banner-icon/upload-introduct',
						'files' => true,
						'id' => 'form-banner'
					)) !!}
						<div style="border: 1px solid #e5e5e5; height: 315px;">
							{!! Form::file('introduct', ['style' => 'display: none;', 'id' => 'input_file', 'required' => 'required']) !!}
							<div class="select-image" id="select_image">
								<span>Chọn ảnh Icon giới thiệu</span>
							</div>
							<div class="preview-image text-center">
								<img src="{{ URL::asset('/images/admin/introduct-default.png') }}"
								class="introduct-default" >
								@if ($introduct == "")
									<img src="#" id="previewImgIntroduct" style="display: none;">
								@else
									<img src="{{ URL::asset('/images/banner-icon') . "/" . $introduct . "?" . time() }}" id="previewImgIntroduct" style="display: block;">
								@endif
							</div>
						</div>
						<div class="row text-center" style="margin-top: 30px;">
							{!! Form::submit('Thay đổi Icon', ['class' => 'btn btn-primary']) !!}
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
						$('#previewImgIntroduct').attr('src', e.target.result);
						$('#previewImgIntroduct').attr('style', 'display: block;');
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