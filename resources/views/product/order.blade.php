@extends('layouts.main')

@section('content')
<h1 style="margin-top:40px; margin-bottom:20px; font-size:25px">Giỏ hàng</h1>
@if (Session::has('order'))
<table class="table" width="960">
    <thead>
        <tr>
            <td class="image">Hình ảnh</td>
            <td class="name">Tên sản phẩm</td>
            <td class="model">Mã hàng</td>
            <td class="quantity">Số lượng</td>
            <td class="price">Đơn Giá</td>
            <td class="total">Tổng cộng</td>
        </tr>
    </thead>
    <tbody>

        @foreach(Session::get('order') as $key => $product)
        <tr>
	        <td class="image">
	            <a href="#"><img src="{{ URL::asset('/images/products/' . $product['thumbnail']) }}" alt="{{ $product['title_vi'] }}"
	            title="{{ $product['title_vi'] }}"></a>
	        </td>
	        <td class="name">
	            <a href="#">{{ $product['title_vi'] }}</a>
	        </td>
            <td class="model">{{ $product['product_code_vi'] }}</td>
	        <td class="quantity">
                {!! Form::open(array(
                    'url' => route('product.addOrder'),
                    'class' => 'number',
                )) !!}
                    <input type="hidden" name="product_id" value="{{ $product['product_id'] }}" />
                    <input type="hidden" name="product_slug" value="{{ $product['product_slug'] }}" />
                    <input type="number" required="true" name="quantity" value="{{ $product['quantity'] }}" min="1">
                    &nbsp;
                    <button type="submit" style="border: none; background-color: #fff; cursor: pointer">
                        <img src="{{ URL::asset('/images/capnhat.png') }}">
                    </button>
                     <a href="{{ route('product.delOrderProduct', ['id' => $product['product_id']]) }}">
                        <img src="{{ URL::asset('/images/loaibo.png') }}" alt="Loại bỏ" title="Loại bỏ">
                     </a>
                {!! Form::close() !!}
	        </td>
	        <td class="price">{{ number_format($product['price_vi']) }} ₫</td>
	        <td class="total">{{ number_format( ($product['price_vi'] * $product['quantity']) ) }} ₫</td>
      </tr>
      @endforeach
  </tbody>
</table>
<div class="buttons">
    <div class="button-left"><a href="{{ route('product.orderInfo') }}" class="button">Đặt hàng</a></div>
    <div class="button-right"><a href="{{ route('order') }}" class="button">Tiếp tục mua hàng</a></div>
</div>
@endif
@stop