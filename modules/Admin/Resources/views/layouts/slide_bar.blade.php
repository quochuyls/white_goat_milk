<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

	<div class="menu_section">
		<h3>Quản lý</h3>
		<ul class="nav side-menu">
			<li class="active">
				<a>
					<i class="fa fa-home"></i>Banner - Icon
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/banner-icon/banner') }}">Banner</a></li>
					<li><a href="{{ URL::to('/admin/banner-icon/service-edu') }}">Icon - Nông trại giáo dục</a></li>
					<li><a href="{{ URL::to('/admin/banner-icon/service-experiment') }}">Icon - Du lịch thực nghiệm</a></li>
					<li><a href="{{ URL::to('/admin/banner-icon/service-food') }}">Icon - Thực phẩm nông trại</a></li>
					<li><a href="{{ URL::to('/admin/banner-icon/introduct') }}">Icon - Giới thiệu</a></li>
					{{--<li><a href="{{ URL::to('/admin/banner-icon/customer') }}">Icon - Khách hàng</a></li>--}}
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-edit"></i> Dịch vụ
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/service/view/edu') }}">Nông trại giáo dục</a></li>
					<li><a href="{{ URL::to('/admin/service/view/experiment') }}">Du lịch thực nghiệm</a></li>
					<li><a href="{{ URL::to('/admin/service/view/food') }}">Thực phẩm nông trại</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-desktop"></i> Giới thiệu
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/introduction/view') }}">Thông tin</a></li>
					<li><a href="{{ URL::to('/admin/introduction/update') }}">Chỉnh sửa</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-table"></i> Khách hàng
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/customer/list') }}">Danh sách khách hàng</a></li>
					<li><a href="{{ URL::to('/admin/customer/create') }}">Thêm khách hàng</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-bar-chart-o"></i> Sự kiện Farm
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/event-farm/list') }}">Danh sách sự kiện farm</a></li>
					<li><a href="{{ URL::to('/admin/event-farm/create') }}">Thêm sự kiện farm</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-home"></i> Sự kiện khách hàng
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/event-customer/list') }}">Danh sách sự kiện khách hàng</a></li>
					<li><a href="{{ URL::to('/admin/event-customer/create') }}">Thêm sự kiện khách hàng</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-home"></i> Liên hệ
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{{ URL::to('/admin/contact/view') }}">Thông tin liên hệ</a></li>
					<li><a href="{{ URL::to('/admin/contact/update') }}">Chỉnh sửa thông tin</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-home"></i> Video
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{!! URL::to('/admin/video') !!}">Danh sách video</a></li>
					<li><a href="{!! URL::to('/admin/video/create') !!}">Thêm video</a></li>
				</ul>
			</li>
			<li>
				<a>
					<i class="fa fa-home"></i> Sản phẩm nông trại
					<span class="fa fa-chevron-down"></span>
				</a>
				<ul class="nav child_menu" style="display: none">
					<li><a href="{!! URL::to('/admin/product') !!}">Danh sách sản phẩm</a></li>
					<li><a href="{!! URL::to('/admin/product/create') !!}">Thêm sản phẩm</a></li>
				</ul>
			</li>
            <li>
                <a>
                    <i class="fa fa-home"></i> Thông tin header
                    <span class="fa fa-chevron-down"></span>
                </a>
                <ul class="nav child_menu" style="display: none">
                    <li><a href="{!! URL::route('admin.header-info.view') !!}">Thông tin</a></li>
                    <li><a href="{!! URL::route('admin.header-info.update') !!}">Chỉnh sửa thông tin</a></li>
                </ul>
            </li>
            <li>
                <a>
                    <i class="fa fa-home"></i> Thông tin footer
                    <span class="fa fa-chevron-down"></span>
                </a>
                <ul class="nav child_menu" style="display: none">
                    <li><a href="{!! URL::route('admin.footer-info.view') !!}">Thông tin</a></li>
                    <li><a href="{!! URL::route('admin.footer-info.update') !!}">Chỉnh sửa thông tin</a></li>
                </ul>
            </li>
            <li>
                <a>
                    <i class="fa fa-home"></i> Bài viết sản phẩm
                    <span class="fa fa-chevron-down"></span>
                </a>
                <ul class="nav child_menu" style="display: none">
                    <li><a href="{!! URL::route('admin.product-info.index') !!}">Danh sách bài viết</a></li>
                    <li><a href="{!! URL::route('admin.product-info.create') !!}">Thêm bài viết</a></li>
                </ul>
            </li>
		</ul>
	</div>
</div>
