@extends('admin::layouts.main')

@section('content')
<div class="row">
	<div class="col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Danh sách khách hàng</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="example" class="table table-striped responsive-utilities jambo_table">
                    <thead>
                        <tr class="headings">
                            <th style="width: 75px;"> ID </th>
                            <th style="width: 152px;"> Tên </th>
                            <th style="width: 152px;"> Email </th>
                            <th style="width: 152px;"> SĐT </th>
                            <th style="width: 250px;"> Địa chỉ </th>
                            <th class=" no-link last" style="width: 150px;"><span class="nobr">Action</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($customers as $key => $customer)
                        <tr class="even pointer">
                            <td class="a-center ">
                                {{ $customer->id }}
                            </td>
                            <td class=" ">
                                {{ $customer->name_vi }}
                            </td>
                            <td class=" ">
                                {{ $customer->email }}
                            </td>
                            <td class=" ">
                                {{ $customer->phone }}
                            </td>
                            <td class=" ">
                                {{ $customer->address_vi }}
                            </td>
                            <td class=" last">
	                            <a class="btn btn-success btn-xs" href="{{ URL::to('/admin/customer/view/' . $customer->id) }}">Xem</a>
	                            <a class="btn btn-info btn-xs" href="{{ URL::to('/admin/customer/update/' . $customer->id) }}">Sửa</a>
	                            <a class="btn btn-danger btn-xs" data-confirm="Bạn có chắc chắn muốn xóa khách hàng?"
	                            data-method="post"
	                            href="{{ URL::to('/admin/customer/delete/' . $customer->id) }}">Xóa</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>

                </table>
            </div>
			</div>
		</div>
	</div>
</div>
@stop