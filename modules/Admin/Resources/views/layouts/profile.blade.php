@if( Auth::admin()->user() )
<li class="">
	<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
		<img src="{{ URL::asset('/images/admin/user.png') }}" alt="">{!! Auth::admin()->user()->username !!}
		<span class=" fa fa-angle-down"></span>
	</a>
	<ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
		<li><a href="{{ url('admin/logout')  }}"><i class="fa fa-sign-out pull-right"></i> Đăng xuất</a></li>
	</ul>
</li>
	@endif
