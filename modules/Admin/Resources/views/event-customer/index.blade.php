@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Danh sách sự kiện khách hàng</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="example" class="table table-striped responsive-utilities jambo_table">
                    <thead>
                        <tr class="headings">
                            <th style="width: 75px;"> ID </th>
                            <th style="width: 200px;"> Tiêu đề </th>
                            <th style="width: 300px;"> Mô tả </th>
                            <th style="width: 150px;"> Thời gian</th>
                            <th class=" no-link last" style="width: 150px;"><span class="nobr">Action</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($events as $key => $event)
                        <tr class="even pointer">
                            <td class="a-center ">
                                {{ $event->id }}
                            </td>
                            <td class=" ">
                                {{ $event->title_vi }}
                            </td>
                            <td class=" ">
                                {{ $event->description_vi }}
                            </td>
                            <td class=" ">
                                {{ $event->month }} / {{ $event->year }}
                            </td>
                            <td class=" last">
	                            <a class="btn btn-success btn-xs" href="{{ URL::to('/admin/event-customer/view/' . $event->id) }}">Xem</a>
	                            <a class="btn btn-info btn-xs" href="{{ URL::to('/admin/event-customer/update/' . $event->id) }}">Sửa</a>
	                            <a class="btn btn-danger btn-xs" data-confirm="Bạn có chắc chắn muốn xóa khách hàng?"
	                            data-method="post"
	                            href="{{ URL::to('/admin/event-customer/delete/' . $event->id) }}">Xóa</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>

                </table>
            </div>
		</div>
	</div>
</div>
@stop