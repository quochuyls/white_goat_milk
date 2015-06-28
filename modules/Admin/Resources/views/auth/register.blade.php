@extends('admin::layouts.auth')

@section('content')
	<div class="">
		<div id="wrapper">
			<div  class="animate form">
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
					{!! Form::open(array('url' => 'admin/register', 'autocomplete'=>'off')) !!}
					<h1>Create Account</h1>

					<div>
						{!! Form::text('username', old('username'), ['class' => 'form-control', 'placeholder' =>
						'Username', 'autocomplete'=>'off']) !!}

					</div>
					<div>
						{!! Form::text('email', old('email'), ['type' => 'email', 'class' => 'form-control',
						'placeholder' => 'Email', 'autocomplete'=>'off']) !!}

					</div>
					<div>
						{!! Form::password('password', ['class' => 'form-control', 'placeholder' => 'Password']) !!}

					</div>
					<div>
						{!! Form::password('password_confirmation', ['class' => 'form-control', 'placeholder' => 'Confirm password']) !!}

					</div>
					<div>
						{!! Form::submit('Register', ['class' => 'btn btn-primary']) !!}
						<a class="reset_pass" href="#">Lost your password?</a>
					</div>
					<div class="clearfix"></div>
					<div class="separator">
						<p class="change_link">Already a member ?
							<a href="{!! url('admin/login') !!}" class="to_login">Login</a>
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
	</div>
@endsection
