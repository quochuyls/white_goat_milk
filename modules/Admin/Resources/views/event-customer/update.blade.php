@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Chỉnh sửa thông tin sự kiện khách hàng!</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<br />
				{!! Form::open([
					'class' => 'form-horizontal form-label-left',
					'files' => true,
					'id' => 'form-create-event',
				]) !!}
					<div id="wizard" class="form_wizard wizard_horizontal">
	                    <ul class="wizard_steps">
	                        <li>
	                            <a href="#step-1">
	                                <span class="step_no">1</span>
	                                <span class="step_descr">Step 1<br /><small>Step 1 Tiếng Việt</small></span>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#step-2">
	                                <span class="step_no">2</span>
	                                <span class="step_descr">Step 2<br /><small>Step 2 Tiếng Anh</small></span>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#step-3">
	                                <span class="step_no">3</span>
	                                <span class="step_descr">Step 3<br /><small>Step 3 Ảnh đại diện</small></span>
	                            </a>
	                        </li>
	                    </ul>
	                    <div id="step-1">

	                            <div class="form-group">
	                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_vi">Tiêu đề</label>
	                                <div class="col-md-7 col-sm-7 col-xs-12">
	                                    {!! Form::text(
	                                        'title_vi',
	                                        $event['title_vi'],
                                            [
	                                            'id' => 'title_vi',
	                                            'class' => 'form-control col-md-7 col-xs-12'
                                            ]
                                        ) !!}
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label for="description_vi" class="control-label col-md-3 col-sm-3
	                                col-xs-12">Mô tả</label>
	                                <div class="col-md-7 col-sm-7 col-xs-12">
	                                    {!! Form::textarea(
	                                        'description_vi',
	                                        $event['description_vi'],
	                                        [
	                                            'id' => 'description_vi',
	                                            'class' => 'form-control col-md-7 col-xs-12',
	                                            'rows' => 3
	                                        ]
	                                    ) !!}
	                                </div>
	                            </div>
	                    </div>
	                    <div id="step-2">
	                        <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title_en">Title</label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    {!! Form::text(
                                        'title_en',
                                        $event['title_en'],
                                        [
                                            'id' => 'title_en',
                                            'class' => 'form-control col-md-7 col-xs-12'
                                        ]
                                    ) !!}
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="description_en" class="control-label col-md-3 col-sm-3
                                col-xs-12">Description</label>
                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    {!! Form::textarea(
                                        'description_en',
                                        $event['description_en'],
                                        [
                                            'id' => 'description_en',
                                            'class' => 'form-control col-md-7 col-xs-12',
                                            'rows' => '3',
                                        ]
                                    ) !!}
                                </div>
                            </div>
	                    </div>
	                    <div id="step-3">
	                        <div class="form-group">
                                <div class="col-xs-offset-1 col-xs-3">
                                    {!! Form::file('thumbnail', ['id' => 'input_thumbnail']) !!}
                                    <img src="{{ URL::asset('/images/admin/no-img.gif') }}" id="thumbnail"
                                    style="margin-top: 15px;" class="img-responsive">
                                </div>
                                <div class="col-xs-7">
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                        for="link-face">Link Facebook</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            {!! Form::text(
                                                'link_face',
                                                $event['link_face'],
                                                [
                                                    'id' => 'link_face',
                                                    'class' => 'form-control col-md-9 col-xs-12',
                                                ]
                                            ) !!}
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="month">Thời gian sự kiện</label>
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            {!! Form::input(
                                            'number',
                                            'month',
                                            $event['month'],
                                            [
                                            'id' => 'month',
                                            'class' => 'form-control col-md-9 col-xs-12',
                                            'placeholder' => 'tháng',
                                            'min' => 1,
                                            'max' => 12,
                                            'required' => 'true'
                                            ]
                                            ) !!}
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            {!! Form::input(
                                            'number',
                                            'year',
                                            $event['year'],
                                            [
                                            'id' => 'year',
                                            'class' => 'form-control col-md-9 col-xs-12',
                                            'placeholder' => 'năm',
                                            'min' => 1970,
                                            'required' => 'true'
                                            ]
                                            ) !!}
                                        </div>
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

				reader.onload = function (e) {
					$('#thumbnail').attr('src', e.target.result);
				};

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#input_thumbnail").change(function(){
			readURL(this);
		});
	});
</script>
@stop