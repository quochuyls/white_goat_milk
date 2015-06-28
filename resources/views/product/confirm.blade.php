<!DOCTYPE html>
<html>
<head>
	<title>Xác nhận thông tin khách hàng!</title>
	<style>
	table, th, td {border: 1px solid #cdcdcd;}
	table td { padding: 5px 10px; color: #333;}
	</style>
</head>
<body>
	<div style="text-align: center; font-size: 24px; color: #333;">Thông tin đã được khách hàng xác nhận!</div>
	<div id="customer-info">
		<div style="font-size: 24px; font-weight: bold; color: #0074d9; margin-left: 280px;">Thông tin khách hàng</div>
		<table style="background-color: #e5e5e5; border-collapse: collapse; width: 946px;">
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Họ và tên</td>
				<td>{{ $data['name'] }}</td>
			</tr>
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Email</td>
				<td>{{ $data['email'] }}</td>
			</tr>
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Số điện thoại</td>
				<td>{{ $data['phone'] }}</td>
			</tr>
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Tỉnh / Thành phố</td>
				<td>{{ $data['city'] }}</td>
			</tr>
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Địa chỉ</td>
				<td>{{ $data['address'] }}</td>
			</tr>
			<tr>
				<td style="background-color: #3C72DC; color: #fff; width: 40%;">Ghi chú</td>
				<td>{{ $data['note'] }}</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<div id="products-info">
		<div style="font-size: 24px; font-weight: bold; color: #0074d9; margin-left: 280px;">Thông tin sản phẩm</div>
		<table style="background-color: #E5E5E5; color: #fff;">
			<thead>
				<tr style="text-align: center;">
					<td style="width: 50px;">Ảnh</td>
					<td style="width: 200px;">Tên sản phẩm</td>
					<td style="width: 100px;">Đơn vị</td>
					<td style="width: 150px;">Giá</td>
					<td style="width: 100px;">Số lượng</td>
					<td style="width: 200px;">Tổng</td>
				</tr>
			</thead>
			<tbody>
				<?php $totalPrice = 0; ?>
				@foreach ($products as $key => $product)
				<tr>
					<td>
						<img src="{{ $message->embed(URL::asset('/images/products/' . $product['thumbnail']) ) }}" style="width: 50px;">
					</td>
					<td>
						<label>{{ $product['title_vi'] }}</label>
					</td>
					<td>
						<span>{{ $product['product_code_vi'] }}</span>
					</td>
					<td style="text-align: right;">
						<span>{{ number_format($product['price_vi']) }} VNĐ</span>
					</td>
					<td style="text-align: right;">
						<span>{{ $product['quantity'] }}</span>
					</td>
					<td style="text-align: right;">
						<span>{{ number_format($product['quantity'] * $product['price_vi']) }} VNĐ</span>
					</td>
				</tr>
				<?php $totalPrice += ($product['quantity'] * $product['price_vi']); ?>
				@endforeach
				<tr>
					<td colspan="5" style="text-align: center;">Tổng</td>
					<td style="text-align: right;">
						<span>{{ number_format($totalPrice) }} VNĐ</span>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<br />
</body>
</html>