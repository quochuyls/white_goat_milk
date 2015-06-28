@extends('admin::layouts.main')

@section('content')
	<div class="row">
		<div class="col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Thông tin khách hàng {!! $product['name_vi'] !!}</h2>

					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="col-xs-10">
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="general">
								<p class="lead">Thông tin chung</p>
								<div class="row">
									<div class="col-xs-12 item-info">
										<div class="row">
											<div class="col-xs-2 text-right"><label>Ảnh sản phẩm:</label></div>
											<div class="col-xs-10"><img src="{!!url('images/products/' . $product->thumbnail)!!}" style="max-width: 240px;" alt="{!!$product->title_vi!!}" /></div>
										</div>
										<div class="row">
											<div class="col-xs-2 text-right"><label>Icon sản phẩm:</label></div>
											<div class="col-xs-10"><img src="{!!url('images/products/' . $product->icon)!!}" style="max-width: 100px;" alt="{!!$product->title_vi!!}" /></div>
										</div>
										<div class="row">
											<div class="col-xs-2 text-right"><label>Ngày phát hành:</label></div>
											<div class="col-xs-10">
												<img src="{!!url('images/admin/calendar.png')!!}" alt="{!!$product->publish_at!!}" />
												{!!strtotime($product->publish_at) ? date('d-m-Y', strtotime($product->publish_at)) : ''!!}
											</div>
										</div>
										<div class="row">
											<div class="col-xs-2 text-right"><label>Khuyến mãi:</label></div>
											<div class="col-xs-10"><img src="{!!$product->sale_flg ? url('images/admin/check_icon_24.png') : url('images/admin/info_icon_24.png')!!}" style="max-width: 100px;" alt="{!!$product->title_vi!!}" /></div>
										</div>
										<div class="row">
											<div class="col-xs-2 text-right"><label>Hàng mới:</label></div>
											<div class="col-xs-10"><img src="{!!$product->new_flg ? url('images/admin/check_icon_24.png') : url('images/admin/info_icon_24.png')!!}" style="max-width: 100px;" alt="{!!$product->title_vi!!}" /></div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="vi">
								<p class="lead">Tiếng việt</p>

								<div class="row">
									<div class="col-xs-12 item-info">
										<div class="row">
											<div class="col-xs-2 text-right"><label>Tên:</label></div>
											<div class="col-xs-10">{!! $product->title_vi !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Mô tả:</label></div>
											<div class="col-xs-10">{!! $product->description_vi !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Nội dung</label></div>
											<div class="col-xs-10">{!! $product->content_vi !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Giá bán</label></div>
											<div class="col-xs-10">{!! number_format($product->price_vi) !!} ₫</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Giá khuyến mãi</label></div>
											<div class="col-xs-10">{!! number_format($product->sale_price_vi) !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Đơn vị</label></div>
											<div class="col-xs-10">{!! $product->unit_vi !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Quy cách đóng gói</label></div>
											<div class="col-xs-10">{!! $product->product_code_vi !!}</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="en">
								<p class="lead">Tiếng anh</p>

								<div class="row">
									<div class="col-xs-10 item-info">
										<div class="row">
											<div class="col-xs-2 text-right"><label>Tên:</label></div>
											<div class="col-xs-10">{!! $product->title_en !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Mô tả:</label></div>
											<div class="col-xs-10">{!! $product->description_en !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Nội dung</label></div>
											<div class="col-xs-10">{!! $product->content_en !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Giá bán</label></div>
											<div class="col-xs-10">{!! number_format($product->price_en) !!} {!!$product->uni_vi!!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Giá khuyến mãi</label></div>
											<div class="col-xs-10">{!! number_format($product->sale_price_en) !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Đơn vị</label></div>
											<div class="col-xs-10">{!! $product->unit_en !!}</div>
										</div>

										<div class="row">
											<div class="col-xs-2 text-right"><label>Quy cách đóng gói</label></div>
											<div class="col-xs-10">{!! $product->product_code_en !!}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-xs-2 pull-right text-right">
						<!-- required for floating -->
						<!-- Nav tabs -->
						<ul class="nav nav-tabs tabs-left">
							<li class="active">
								<a href="#general" data-toggle="tab" class="btn btn-default">Thông tin chung</a>
							</li>
							<li>
								<a href="#vi" data-toggle="tab" class="btn btn-default">Tiếng việt</a>
							</li>
							<li>
								<a href="#en" data-toggle="tab" class="btn btn-default">Tiếng anh</a>
							</li>
						</ul>
						<a class="btn btn-primary btn-action" href="{!!route('admin.product.edit', ['id'=>$product->id])!!}"> Sửa sản phẩm</a>


					</div>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
@stop
