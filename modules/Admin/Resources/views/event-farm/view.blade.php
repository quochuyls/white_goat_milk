@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Thông tin sự kiện {{ $event['title_vi'] }}</h2>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="col-xs-9">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <p class="lead">Tiếng việt</p>
                                <div class="row">
                                    <div class="col-xs-3">
                                        @if ($event['thumbnail'] != '')
                                            <img src="{{ URL::asset('/images/event-farm/' . $event['thumbnail']) }}"
                                             class="img-responsive">
                                        @else
											<img src="{{ URL::asset('/images/admin/no-img.gif') }}"
                                                                                         class="img-responsive">
                                        @endif
                                    </div>
                                    <div class="col-xs-9">
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Tiêu đề:</label></div>
                                            <div class="col-xs-10">{{ $event['title_vi'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Link Facebook:</label></div>
                                            <div class="col-xs-10">{{ $event['link_face'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Link Flick:</label></div>
                                            <div class="col-xs-10">{{ $event['link_flick'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Mô tả:</label></div>
                                            <div class="col-xs-10">{!! nl2br($event['description_vi']) !!}</div>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                                <br />
                                 <div class="row">
                                    <div class="col-xs-12"><label>Nội dung:</label></div>
                                    <div class="col-xs-12">{!! $event['content_vi'] !!}</div>
                                </div>
                            </div>
                            <div class="tab-pane" id="profile">
								<p class="lead">Tiếng anh</p>
                                <div class="row">
                                    <div class="col-xs-3">
                                        @if ($event['thumbnail'] != '')
                                            <img src="{{ URL::asset('/images/event-farm/' . $event['thumbnail']) }}"
                                             class="img-responsive">
                                        @else
                                            <img src="{{ URL::asset('/images/admin/no-img.gif') }}"
                                            class="img-responsive">
                                        @endif
                                    </div>
                                    <div class="col-xs-9">
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Title:</label></div>
                                            <div class="col-xs-10">{{ $event['title_en'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Lnik Facebook:</label></div>
                                            <div class="col-xs-10">{{ $event['link_face'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Link Flick:</label></div>
                                            <div class="col-xs-10">{{ $event['link_flick'] }}</div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-xs-2 text-right"><label>Description:</label></div>
                                            <div class="col-xs-10">{!! nl2br($event['description_en']) !!}</div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-xs-12"><label>Content:</label></div>
                                    <div class="col-xs-12">{!! $event['content_en'] !!}</div>
                                </div>
                            </div>
                        </div>
                    </div>

					<div class="col-xs-3">
                        <!-- required for floating -->
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tabs-left">
                            <li class="active"><a href="#home" data-toggle="tab">Tiếng việt</a></li>
                            <li><a href="#profile" data-toggle="tab">Tiếng anh</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
@stop