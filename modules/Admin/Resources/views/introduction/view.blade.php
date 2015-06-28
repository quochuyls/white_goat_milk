@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-offset-1 col-md-10 col-xs-10 col-sm-10">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					Giới thiệu về nông trại
				</h2>
				<div class="text-right">
					<a href="{{ URL::to('/admin/introduction/update') }}" class="btn btn-success">Chỉnh sửa</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<!-- Vi -->
				<div class="row">
					<div class="col-xs-12">
						<h2>Tiếng việt</h2>
						<ul class="list-unstyled timeline">
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Nội dung</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        {!! $intro['content_vi'] !!}
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Hình ảnh</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_description">
											<div class="row">
												<div class="col-xs-3">
												@if ($intro['intro_img_top'] != '' && $intro['intro_img_top'] != null)
													<img src="{{ URL::to('/images/banner-icon/'
													.$intro['intro_img_top']) }}" class="img-responsive border-cricle">
												@else
													<img src="{{ URL::to('/images/admin/no-img.gif') }}"
													class="img-responsive border-cricle">
												@endif
												</div>
												<div class="col-xs-3">
												@if ($intro['intro_img_right'] != '' && $intro['intro_img_right'] != null)
                                                    <img src="{{ URL::to('/images/banner-icon/'
                                                    .$intro['intro_img_right']) }}" class="img-responsive border-cricle">
                                                @else
                                                    <img src="{{ URL::to('/images/admin/no-img.gif') }}"
                                                    class="img-responsive border-cricle">
                                                @endif
												</div>
												<div class="col-xs-3">
												@if ($intro['intro_img_bottom'] != '' && $intro['intro_img_bottom'] != null)
                                                    <img src="{{ URL::to('/images/banner-icon/'
                                                    .$intro['intro_img_bottom']) }}" class="img-responsive border-cricle">
                                                @else
                                                    <img src="{{ URL::to('/images/admin/no-img.gif') }}"
                                                    class="img-responsive border-cricle">
                                                @endif
												</div>
												<div class="col-xs-3">
												@if ($intro['intro_img_left'] != '' && $intro['intro_img_left'] != null)
                                                    <img src="{{ URL::to('/images/banner-icon/'
                                                    .$intro['intro_img_left']) }}" class="img-responsive border-cricle">
                                                @else
                                                    <img src="{{ URL::to('/images/admin/no-img.gif') }}"
                                                    class="img-responsive border-cricle">
                                                @endif
												</div>
											</div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Quản lý</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_content">
                                            {!! nl2br($intro['manager_vi']) !!}
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
					</div>
				</div>
				<!-- End Vi -->
				<hr />
				<!-- En -->
				<div class="row">
                    <div class="col-xs-12">
                        <h2>Tiếng anh</h2>
                        <ul class="list-unstyled timeline">
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Nội dung</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        {!! $intro['content_en'] !!}
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Hình ảnh</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_description">
											<div class="row">
		                                        <div class="col-xs-3">
		                                        @if ($intro['intro_img_top'] != '' && $intro['intro_img_top'] != null)
		                                            <img src="{{ URL::to('/images/banner-icon/'
		                                            .$intro['intro_img_top']) }}" class="img-responsive border-cricle">
		                                        @else
		                                            <img src="{{ URL::to('/images/admin/no-img.gif') }}"
		                                            class="img-responsive border-cricle">
		                                        @endif
		                                        </div>
		                                        <div class="col-xs-3">
		                                        @if ($intro['intro_img_right'] != '' && $intro['intro_img_right'] != null)
		                                            <img src="{{ URL::to('/images/banner-icon/'
		                                            .$intro['intro_img_right']) }}" class="img-responsive border-cricle">
		                                        @else
		                                            <img src="{{ URL::to('/images/admin/no-img.gif') }}"
		                                            class="img-responsive border-cricle">
		                                        @endif
		                                        </div>
		                                        <div class="col-xs-3">
		                                        @if ($intro['intro_img_bottom'] != '' && $intro['intro_img_bottom'] != null)
		                                            <img src="{{ URL::to('/images/banner-icon/'
		                                            .$intro['intro_img_bottom']) }}" class="img-responsive border-cricle">
		                                        @else
		                                            <img src="{{ URL::to('/images/admin/no-img.gif') }}"
		                                            class="img-responsive border-cricle">
		                                        @endif
		                                        </div>
		                                        <div class="col-xs-3">
		                                        @if ($intro['intro_img_left'] != '' && $intro['intro_img_left'] != null)
		                                            <img src="{{ URL::to('/images/banner-icon/'
		                                            .$intro['intro_img_left']) }}" class="img-responsive border-cricle">
		                                        @else
		                                            <img src="{{ URL::to('/images/admin/no-img.gif') }}"
		                                            class="img-responsive border-cricle">
		                                        @endif
		                                        </div>
		                                    </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Quản lý</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_content">
                                            {!! nl2br($intro['manager_en']) !!}
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
				<!-- End En-->
			</div>
		</div>
	</div>
</div>
@stop