@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-offset-1 col-md-10 col-xs-10 col-sm-10">
		<div class="x_panel">
			<div class="x_title">
				<h2>
				@if ($type == "edu")
					Nông trại giáo dục
				@endif

				@if ($type == "experiment")
					Du lịch thực nghiệm
				@endif

				@if ($type == "food")
					Thực phẩm nông trại
				@endif
				</h2>
				<div class="text-right">
					<a href="{{ URL::to('/admin/service/update/'.$type) }}" class="btn btn-success">Chỉnh sửa</a>
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
                                            <span>Tiêu đề</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <h1 class="service_title">{{ $service['title_vi'] }}</h1>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Mô tả</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_description">
                                            <p>{!! nl2br($service['description_vi']) !!}</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Nội dung</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_content">
                                            {!! $service['content_vi'] !!}
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
                                            <span>Tiêu đề</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <h1 class="service_title">{{ $service['title_en'] }}</h1>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Mô tả</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_description">
                                            <p>{!! nl2br($service['description_en']) !!}</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="block">
                                    <div class="tags">
                                        <a href="" class="tag">
                                            <span>Nội dung</span>
                                        </a>
                                    </div>
                                    <div class="block_content">
                                        <div class="service_content">
                                            {!! $service['content_en'] !!}
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