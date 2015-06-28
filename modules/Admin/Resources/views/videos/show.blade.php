@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Thông tin khách hàng: <strong>{{ $video['title'] }}</strong></h2>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="col-xs-9">
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="home">
								<div class="row">
									<div class="col-xs-9 item-info">
										<div class="row">
											<div class="col-xs-3 text-right"><label>Tên:</label></div>
											<div class="col-xs-9">{{ $video['title'] }}</div>
										</div>
										<div class="row">
											<div class="col-xs-3 text-right"><label>Đường dẫn:</label></div>
											<div class="col-xs-9"><a href="{{ $video['url'] }}" target="_blank">{{ $video['url'] }}</a></div>
										</div>
										<div class="row">
											<div class="col-xs-3 text-right"><label>Hình ảnh:</label></div>
											<div class="col-xs-9"><img src="{{ $video['thumbnail'] }}" alt="{{ $video['title'] }}"/></div>
										</div>
										<div class="row">
											<div class="col-xs-3 text-right"><label>Trạng thái:</label></div>
											<div class="col-xs-9">
												<img src="{{strtotime($video->publish_at) ? url('images/admin/check_icon_24.png') : url('images/admin/info_icon_24.png')}}" alt="{{$video->publish_at}}" />
											</div>
										</div>
										<div class="row">
											<div class="col-xs-3 text-right"><label>Ngày đăng:</label></div>
											<div class="col-xs-9">
												<img src="{{url('images/admin/calendar.png')}}" alt="{{$video->publish_at}}" />
												{{strtotime($video->created_at) ? date('d-m-Y', strtotime($video->created_at)) : ''}}
											</div>
										</div>
										<div class="row">
											<div class="col-xs-3 text-right"><label>Ngày phát hành:</label></div>
											<div class="col-xs-9">
												<img src="{{url('images/admin/calendar.png')}}" alt="{{$video->publish_at}}" />
												{{strtotime($video->publish_at) ? date('d-m-Y', strtotime($video->publish_at)) : ''}}
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-3 pull-right text-right">
						<a class="btn btn-primary" href="{{route('admin.video.edit', ['id'=>$video->id])}}"> Sửa video</a>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
@stop
