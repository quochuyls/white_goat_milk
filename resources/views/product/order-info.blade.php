@extends('layouts.main')

@section('content')
<div class="simple-checkout-left">
    <h2>Thông tin khách hàng</h2>
    <div class="simple-checkout-content">
        {!! Form::open(array(
            'url' => route('product.orderInfo'),
            'id' => 'form-checkout',
        )) !!}
        <table>
            <tbody>
                <tr>
                    <td class="simplecheckout-customer-left">
                        <span class="simplecheckout-required">*</span>
                        Họ và tên
                    </td>
                    <td class="simplecheckout-customer-right">
                        <input type="text" class="simplecheckout-red-border" id="name" name="name" value="" required="true">
                    </td>
                </tr>
                <tr>
                    <td class="simplecheckout-customer-left">
                        <span class="simplecheckout-required">*</span>
                        Số điện thoại
                    </td>
                    <td class="simplecheckout-customer-right">
                        <input type="text" pattern="([0-9]{10,11})" class="simplecheckout-red-border" id="phone" name="phone" value="" required="true">
                    </td>
                </tr>
                <tr>
                    <td class="simplecheckout-customer-left">
                        <span class="simplecheckout-required">*</span>
                        Email
                    </td>
                    <td class="simplecheckout-customer-right">
                        <input type="email" class="simplecheckout-red-border" id="email" name="email" value="" required="true">
                    </td>
                </tr>
                <tr class="simple_table_row ">
                    <td class="simplecheckout-customer-left">
                        <span class="simplecheckout-required">*</span>
						Tỉnh/ thành
                    </td>
                    <td class="simplecheckout-customer-right">
                        <select id="city" name="city" reload="checkout_customer_changed" required="true">
                            <option value=""> --- Chọn --- </option>
                            <option value="1" selected="selected">Ha Noi</option>
                            <option value="2">Ho Chi Minh City</option>
                        </select>
                    </td>
                </tr>
                <tr class="simple_table_row ">
                    <td class="simplecheckout-customer-left">
                        <span class="simplecheckout-required">*</span>
						Địa chỉ
                    </td>
                    <td class="simplecheckout-customer-right">
                        <input type="text" id="address" name="address"  reload="checkout_customer_changed" required="true">
                    </td>
                </tr>
                <tr class="simple_table_row ">
                    <td class="simplecheckout-customer-left">
					Ghi chú
                    </td>
                    <td class="simplecheckout-customer-right">
                        <textarea id="note" name="note" rows="3"></textarea>
                    </td>
                 </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="simple-checkout-right">
    <div class="simplecheckout-block" id="simplecheckout_cart">
        <table class="simplecheckout-cart">
            <thead>
                <tr>
                    <th class="image">Ảnh</th>
                    <th class="name">Sản phẩm</th>
                    <th class="quantity">Số lượng</th>
                    <th class="price">Giá</th>
                    <th class="total">Tổng</th>
                </tr>
            </thead>
            <tbody>
                <?php $totalPrice = 0;?>
                @foreach(Session::get('order') as $key => $product)
                <tr>
                    <td class="image">
                        <a href="">
                            <img style="width: 50px; height: 50px;" src="{{ URL::asset('/images/products/' . $product['thumbnail']) }}" alt="{{ $product['title_vi'] }}" title="{{ $product['title_vi'] }}">
                        </a>
                    </td>
                    <td class="name">
                        <a href="">{{ $product['title_vi'] }}</a>
                    </td>
                    <td class="quantity">{{ $product['quantity'] }}</td>
                    <td class="price"><nobr>{{ number_format($product['price_vi']) }} ₫</nobr></td>
                    <td class="total"><nobr>{{ number_format(($product['price_vi'] * $product['quantity'])) }} ₫</nobr></td>

                <?php $totalPrice += ($product['price_vi'] * $product['quantity']);?>
                @endforeach
             </tbody>
        </table>
        <div class="simplecheckout-cart-total" id="total_sub_total">
            <span><b>Thành tiền:</b></span>
            <span class="simplecheckout-cart-total-value"><nobr>{{ number_format($totalPrice) }} ₫</nobr></span>
            <span class="simplecheckout-cart-total-remove">
            </span>
        </div>
        <div class="simplecheckout-cart-total" id="total_total">
            <span><b>Tổng cộng :</b></span>
            <span class="simplecheckout-cart-total-value"><nobr>{{ number_format($totalPrice) }} ₫</nobr></span>
            <span class="simplecheckout-cart-total-remove">
            </span>
        </div>
        <div class="simplecheckout-block" id="simplecheckout_payment">
            <div class="simplecheckout-block-heading">Phương thức thanh toán</div>
            <div class="simplecheckout-block-content">
                <table class="simplecheckout-methods-table">
                    <tbody>
                        <tr>
                            <td class="code">
                                <input type="radio" name="payment_method" value="cod" id="cod" checked="checked" onchange="simplecheckout_reload('payment_changed')">
                            </td>
                            <td class="title">
                                <label for="cod">Thu tiền khi giao hàng</label>
                            </td>
                        </tr>
                     </tbody>
                </table>
            </div>
        </div>
        <div class="simplecheckout-button-block buttons" id="buttons">
            <div class="simplecheckout-button-right">
                <button type="submit" class="button btn" id="checkout"><span>Đặt hàng</span></button>
            </div>
        </div>
        {!! Form::close() !!}
</div>
<script>
$(document).ready(function () {
	$('#form-checkout').submit(function(){
        $('#checkout').attr('disabled', 'disabled');
    });
});
</script>
@stop
