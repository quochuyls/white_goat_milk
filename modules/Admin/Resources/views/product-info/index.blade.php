@extends('admin::layouts.main')

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Danh sách thông tin về sản phẩm nông trại</h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                        <thead>
                        <tr class="headings">
                            <th style="width: 75px;"> ID </th>
                            <th style="width: 200px;"> Tiêu đề </th>
                            <th style="width: 300px;"> Mô tả </th>
                            <th class=" no-link last" style="width: 100px;"><span class="nobr">Action</span>
                            </th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($infos as $key => $info)
                            <tr class="even pointer">
                                <td class="a-center ">
                                    {{ $info->id }}
                                </td>
                                <td class=" ">
                                    {{ $info->title_vi }}
                                </td>
                                <td class=" ">
                                    {{ $info->description_vi }}
                                </td>
                                <td class=" last">
                                    <a class="btn btn-success btn-xs" href="{{ URL::route('admin.product-info.view', array('id' => $info->id)) }}">Xem</a>
                                    <a class="btn btn-info btn-xs" href="{{ URL::route('admin.product-info.update', array('id' => $info->id)) }}">Sửa</a>
                                    <a class="btn btn-danger btn-xs" data-confirm="Bạn có chắc chắn muốn xóa khách hàng?"
                                       data-method="post"
                                       href="{{ URL::route('admin.product-info.delete', array('id' => $info->id)) }}">Xóa</a>
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