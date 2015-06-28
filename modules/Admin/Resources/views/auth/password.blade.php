@extends('admin::layouts.auth')

@section('content')
	<div id="wrapper">
		<div id="reset-password" class="animate form">
			<section class="login_content">
				@if (session('status'))
					<div class="alert alert-success">
						{{ session('status') }}
					</div>
				@endif

				@if (count($errors) > 0)
					<div class="alert alert-danger alert-dismissible fade in" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
						</button>
						<strong>Whoops!</strong> There were some problems with your input.<br><br>
						<ul>
							@foreach ($errors->all() as $error)
								<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
				@endif
				{!! Form::open(array('url' => 'admin/password/email')) !!}
				<h1>Reset password</h1>

				<div>
					{!! Form::text('email', old('email'), ['type' => 'email', 'class' => 'form-control', 'placeholder' => 'Email']) !!}
				</div>
				<div>
					{!! Form::submit('Reset password', ['class' => 'btn btn-primary']) !!}
				</div>
				<div class="clearfix"></div>
				<div class="separator">

					<p class="change_link">Have an account?
						<a href="{!! url('admin/login') !!}" class="to_login">Login </a>
					</p>

					<div class="clearfix"></div>
					<br/>
					@include('admin::auth.auth_footer')
				</div>
				{!! Form::close() !!}
				<!-- form -->
			</section>
			<!-- content -->
		</div>
	</div>
@endsection
