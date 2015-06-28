{!! Form::hidden('id', old('id'), ['id' => 'id']) !!}
{!! Form::hidden('youtube_id', old('youtube_id'), ['id' => 'youtube_id']) !!}
{!! Form::hidden('thumbnail', old('thumbnail'), ['id' => 'thumbnail']) !!}
<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="url">Đường dẫn video <span class="required">*</span></label>
	<div class="col-md-6 col-sm-6 col-xs-12">
		{!! Form::text('url',old('url'), ['id' => 'url', 'class' => 'form-control col-md-7 col-xs-12', 'type' => 'url', 'placeholder' => 'Đường dẫn youtube của video']) !!}
		<div class="row">
			<div id="url-loading" class="col-md-6 ajax-loading"><img src="{{URL::asset('/images/admin/ajax-loader.gif')}}" alt="loading..."/></div>
		</div>
		<p id="url_err" class="text-left parsley-error" style="display: none"> Bạn cân nhập đường dẫn của video </p>
		@if($errors->has('url'))
			<p class="text-left parsley-error"> {{ $errors->first('url') }} </p>
		@endif
	</div>
	<div class="col-md-3"><button id="checkVideoBtn" class="btn btn-info">Kiểm tra</button></div>
</div>

<div class="form-group">
	{!! Form::label( 'title', 'Tên video', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
	<div class="col-md-6 col-sm-6 col-xs-12">
		{!! Form::text('title',old('title'), ['id' => 'title', 'class' => 'form-control col-md-7 col-xs-12',]) !!}
		@if($errors->has('title'))
			<p class="text-left parsley-error"> {{ $errors->first('title') }} </p>
		@endif
	</div>
</div>

<div class="form-group">
	{!! Form::label( 'thumbnail', 'Hình ảnh video', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
	<div class="col-md-7 col-sm-7 col-xs-12">
		<img src="{{ $video->thumbnail ? $video->thumbnail : URL::asset('/images/admin/no-img.gif') }}" id="prev_input_thumbnail" style="margin-top: 15px; height: 230px;" class="img-responsive">
		@if($errors->has('thumbnail'))
			<p class="text-left parsley-error"> {{ $errors->first('thumbnail') }} </p>
		@endif
	</div>
</div>

<div class="form-group">
	{!! Form::label( 'position', 'Vị trí', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
	<div class="col-md-1 col-sm-6 col-xs-12">
		{!! Form::text('position',old('position'), ['id' => 'position', 'class' => 'form-control col-md-7 col-xs-12',]) !!}
	</div>
</div>

<div class="form-group">
	{!! Form::label( 'publish_at', 'Ngày phát hành', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) !!}
	<div class="col-md-3 col-sm-6 col-xs-12">
		{!! Form::text( 'publish_at', strtotime($video->publish_at) ? date('d-m-Y', strtotime($video->publish_at)) : old('publish_at'), [ 'id' => 'publish_at', 'placeholder'=> 'Ngày phát hành', 'class' => 'has-date-picker form-control has-feedback-left col-md-7 col-xs-12', 'aria-describedby' =>
		'inputSuccess2Status2' ]) !!}

		<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
		<span id="inputSuccess2Status2" class="sr-only">(success)</span>
		@if($errors->has('publish_at'))
			<p class="text-left parsley-error"> {{ $errors->first('publish_at') }} </p>
		@endif
	</div>
</div>

<div class="ln_solid"></div>
<div class="form-group">
	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
		<a type="button" href="{!! URL::to('/admin/video') !!}" class="btn btn-default">Hủy</a>
		<button type="submit" class="btn btn-success">{{$submitText}}</button>
	</div>
</div>
</div>
</div>
