@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
			    <div class="x_title">
			        <h2>Thay đổi icon - du lịch thực nghiệm</h2>
			        <ul class="nav navbar-right panel_toolbox">
			            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			            </li>
			            <li class="dropdown">
			                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
			                <ul class="dropdown-menu" role="menu">
			                    <li><a href="#">Settings 1</a>
			                    </li>
			                    <li><a href="#">Settings 2</a>
			                    </li>
			                </ul>
			            </li>
			            <li><a class="close-link"><i class="fa fa-close"></i></a>
			            </li>
			        </ul>
			        <div class="clearfix"></div>
			    </div>
			    <div class="x_content">
					<p>Thay đổi icon - du lịch thực nghiệm với kích thước 110px x 110px hoặc cùng tỷ lệ kích thước để hình ảnh không bị bóp méo </p>

					{!! Form::open(array(
						'url' => 'admin/banner-icon/upload-service-experiment',
						'files' => true,
						'id' => 'form-banner'
					)) !!}
						<div style="border: 1px solid #e5e5e5; height: 315px;">
							{!! Form::file('service_experiment', ['style' => 'display: none;', 'id' => 'input_file', 'required' => 'required']) !!}
							<div class="select-image" id="select_image">
								<span>Chọn ảnh Icon nông trại thực nghiệm</span>
							</div>
							<div class="preview-image text-center">
								<img src="{{ URL::asset('/images/admin/service-experiment-default.png') }}"
								class="service-edu-default" >
								@if ($serviceExperiment == "")
									<img src="#" id="previewImgService" style="display: none;">
								@else
									<img src="{{ URL::asset('/images/banner-icon') . "/" . $serviceExperiment . "?" . time() }}" id="previewImgService" style="display: block;">
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
						$('#previewImgService').attr('src', e.target.result);
						$('#previewImgService').attr('style', 'display: block;');
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