@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class=" col-md-12 col-xs-12 col-sm-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					Chỉnh sửa nôi dung trang giới thiệu
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<!-- Vi -->
				{!! Form::open(['class' => 'form-horizontal form-label-left', 'files' => true]) !!}
				<div id="wizard_verticle" class="form_wizard wizard_verticle">
                    <ul class="list-unstyled wizard_steps">
                        <li>
                            <a href="#step-11">
                                <span class="step_no">1</span>
                            </a>
                        </li>
                        <li>
                            <a href="#step-22">
                                <span class="step_no">2</span>
                            </a>
                        </li>
                        <li>
                            <a href="#step-33">
                                <span class="step_no">3</span>
                            </a>
                        </li>
                    </ul>

                    <div id="step-11">
                        <h2 class="StepTitle">Bước 1 Tiếng việt</h2>
                        <div  class="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="first-name">Nội dung</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('content_vi', $intro['content_vi'],
                                    ['class' => 'editor form-control col-md-7 col-xs-12', 'id' => 'content_vi']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="middle-name" class="control-label col-md-1 col-sm-1">Quản lý</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('manager_vi', $intro['manager_vi'], ['rows'=> 3,
                                    'class' => 'form-control col-md-7 col-xs-12', 'style' => 'resize: none;']) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="step-22">
                        <h2 class="StepTitle">Bước 2 Tiếng anh</h2>
                        <div  class="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="first-name">Nội dung</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('content_en', $intro['content_en'],
                                    ['class' => 'editor form-control col-md-7 col-xs-12', 'id' => 'content_en']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="middle-name" class="control-label col-md-1 col-sm-1">Quản lý</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('manager_en', $intro['manager_en'], ['rows'=> 3,
                                    'class' => 'form-control col-md-7 col-xs-12', 'style' => 'resize: none;']) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="step-33">
                        <h2 class="StepTitle">Bước 3 Hình ảnh</h2>
                        <div class="row">
                            <div class="col-xs-offset-4 col-xs-4">
                                {!! Form::file('intro_img_top', ['id' => 'intro_img_top']) !!}
                                <img src="{{ URL::asset('/images/admin/no-img.gif') }}" id="preview_intro_img_top" class="img-responsive border-cricle">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4">
                                {!! Form::file('intro_img_left', ['id' => 'intro_img_left']) !!}
                                <img src="{{ URL::asset('/images/admin/no-img.gif') }}" id="preview_intro_img_left" class="img-responsive border-cricle">
                            </div>
                            <div class="col-xs-offset-4 col-xs-4">
                                {!! Form::file('intro_img_right', ['id' => 'intro_img_right']) !!}
                                <img src="{{ URL::asset('/images/admin/no-img.gif') }}" id="preview_intro_img_right" class="img-responsive border-cricle">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-offset-4 col-xs-4">
                                {!! Form::file('intro_img_bottom', ['id' => 'intro_img_bottom']) !!}
                                <img src="{{ URL::asset('/images/admin/no-img.gif') }}" id="preview_intro_img_bottom" class="img-responsive border-cricle">
                            </div>
                        </div>
                    </div>
                </div>
				<!-- End En-->
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function () {

		function readURL(input) {
			var $id = $(input).attr('id');
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function (e) {
					$('#preview_' + $id).attr('src', e.target.result);
				};

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#intro_img_top, #intro_img_left, #intro_img_right, #intro_img_bottom").change(function(){
			readURL(this);
		});
	});
</script>
@stop