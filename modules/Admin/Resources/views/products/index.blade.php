@extends('admin::layouts.main')
@section('content')
	<div class="">
		<div class="row">

			<div class="col-md-12 col-sm-12 col-xs-12">

				<div class="x_panel">
					<div class="x_title">
						<h3>Danh sách sản phẩm</h3>
						@if(Session::has('message'))
							<div class="row">
								<div class="x_content bs-example-popovers">
									<div class="alert alert-success alert-dismissible fade in" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
										</button>
										<strong>{!!Session::get('message')!!}</strong>
									</div>
								</div>
							</div>
						@endif
						<div class="clearfix"></div>
					</div>

					<div class="x_content">
						@if(isset($products) && $products->count())

						<table class="table table-striped responsive-utilities jambo_table bulk_action">
							<thead>
							<tr class="headings">
								<th class="col-md-1 column-title">#</th>
								<th class="col-md-3 column-title">Tên sản phẩm</th>
								<th class="col-md-2 column-title">Loại sản phẩm</th>
								<th class="col-md-3 column-title">Ảnh</th>
								<th class="col-md-1 column-title">Giá</th>
								<th class="col-md-2 olumn-title">Ngày đăng</th>
								<th class="col-md-2 column-title no-link last"><span class="nobr">Action</span></th>
							</tr>
							</thead>

							<tbody>
							@foreach($products as $index=>$product)
							<tr class="{!!$index % 2 ? 'even' : 'odd'!!} pointer">
								<td class="">{!!$index + 1!!}</td>
								<td class="">{!!$product->title_vi!!}</td>
								<td class=" a-right ">{!!$product->category->name_vi!!}</td>
								<td class=""><img src="{!!url('images/products/' . $product->thumbnail)!!}" style="max-width: 240px;" alt="{!!$product->title_vi!!}" /></td>
								<td class=" a-right ">{!!number_format($product->price_vi)!!}/{!!$product->unit_vi!!}</td>
								<td class="">{!!date('d-m-Y H:i:s', strtotime($product->created_at))!!}</td>
								<td class="last">
									<a href="{!! route('admin.product.show', ['id'=>$product->id])!!}" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> Xem </a>
									<a href="{!! route('admin.product.edit', ['id'=>$product->id])!!}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Sửa</a>
									<a href="{!! route('admin.product.delete', ['id'=>$product->id])!!}" class="btn btn-danger btn-xs" data-confirm="Bạn có chắc chắn muốn xóa?"><i class="fa fa-trash-o"></i> Xóa</a>
								</td>
							</tr>
								@endforeach
							</tbody>
						</table>
						@else
							<h3>Không có dữ liêu về sản phẩm</h3>
						@endif
					</div>
				</div>
			</div>
		</div>

	</div>
@stop

