@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class=" col-md-12 col-xs-12 col-sm-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
				@if ($type == "edu")
					Chỉnh sửa nội dung dịch vụ nông trại giáo dục
				@endif

				@if ($type == "experiment")
					Chỉnh sửa nội dung dịch vụ du lịch thực nghiệm
				@endif

				@if ($type == "food")
					Chỉnh sửa nội dung dịch vụ thực phẩm nông trại
				@endif
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<!-- Vi -->
				{!! Form::open(['class' => 'form-horizontal form-label-left']) !!}
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
                    </ul>

                    <div id="step-11">
                        <h2 class="StepTitle">Bước 1 Tiếng việt</h2>
                        <div  class="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="first-name">Tiêu đề</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::text('title_vi', $service['title_vi'], ['class' => 'form-control col-md-7 col-xs-12']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="last-name">Mô tả</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('description_vi', $service['description_vi'], ['rows'=> 3, 'class' => 'form-control col-md-7 col-xs-12']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="middle-name" class="control-label col-md-1 col-sm-1">Nội dung</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('content_vi', $service['content_vi'], ['rows'=> 3, 'class' => 'editor form-control col-md-7 col-xs-12', 'id' => 'content_vi']) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="step-22">
                        <h2 class="StepTitle">Bước 2 Tiếng anh</h2>
                        <div  class="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="first-name">Tiêu đề</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::text('title_en', $service['title_en'], ['class' => 'form-control col-md-7 col-xs-12']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-1 col-sm-1" for="last-name">Mô tả</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('description_en', $service['description_en'], ['rows'=> 3, 'class' => 'form-control col-md-7 col-xs-12']) !!}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="middle-name" class="control-label col-md-1 col-sm-1">Nội dung</label>
                                <div class="col-md-11 col-sm-11">
                                    {!! Form::textarea('content_en', $service['content_en'], ['rows'=> 3, 'class' => 'editor form-control col-md-7 col-xs-12', 'id' => 'content_en']) !!}
                                </div>
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
@stop