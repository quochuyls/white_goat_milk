@extends('admin::layouts.auth')

@section('content')
<div class="">
	<a class="hiddenanchor" id="toregister"></a>
	<a class="hiddenanchor" id="tologin"></a>

	<div id="wrapper">
		<div id="login" class="animate form">
			<section class="login_content">
				@if (count($errors) > 0)
					<div class="alert alert-danger">
						<strong>Whoops!</strong> There were some problems with your input.<br><br>
						<ul>
							@foreach ($errors->all() as $error)
								<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
				@endif
				{!! Form::open(array('url' => 'admin/auth')) !!}
					<h1>Đăng nhập</h1>
					<div>
						{!! Form::text('username', old('username'), ['type' => 'username', 'class' => 'form-control', 'placeholder' => 'Username']) !!}
					</div>
					<div>
						{!! Form::password('password', [ 'class' => 'form-control', 'placeholder' => 'Password']) !!}
					</div>
					<div>
						{!! Form::submit('Đăng nhập', ['class' => 'btn btn-primary']) !!}
						{{--<a class="btn btn-default submit" href="index.html">Log in</a>--}}
						<a class="reset_pass" href="{!! url('admin/password/email') !!}">Quên mật khẩu ?</a>
					</div>
					<div class="clearfix"></div>
					<div class="separator">

						{{--<p class="change_link">New to site?
							<a href="{!! url('admin/register') !!}" class="to_register"> Create Account </a>
						</p>--}}
						<div class="clearfix"></div>
						<br />
						@include('admin::auth.auth_footer')
					</div>
				{!! Form::close() !!}
				<!-- form -->
			</section>
			<!-- content -->
		</div>
	</div>
</div>
@endsection
