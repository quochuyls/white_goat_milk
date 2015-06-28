@extends('layouts.main')

@section('content')
<div class="product-left">
    <img class="img-milk-1" alt="sữa thanh trùng" src="{!! URL::asset('/images/products/' . $product->thumbnail) !!}"/>
</div>

<div class="product-right">
    <div class="tab-content">
        <h1>{!! $product->{trans('product.title')}  !!}</h1>
        <p class="price"> {!! trans('product.price_label') !!} ({!! trans('product.vat_has') !!}):&nbsp;&nbsp;&nbsp;{!! $product->{trans('product.price')} !!} ₫<br/></p>
        <p class="modeldesc">
                {!! trans('product.product_code_label') !!}: &nbsp;&nbsp;&nbsp;<em>{!! $product->{trans('product.product_code')} !!}</em>
        </p>
        <p class="modeldesc2">
                <strong>{!! trans('product.availability_text') !!}:</strong> <em>{!! trans('product.instock_text') !!}</em>
        </p>
        <div class="buttons">
            <p class="text-price">{!! trans('product.choose_quantity') !!}</p>
            {!! Form::open(array(
                'url' => route('product.addOrder'),
                'class' => 'number',
            )) !!}
                <input type="hidden" name="product_id" value="{!!$product->id!!}" />
                <input type="hidden" name="product_slug" value="{!!$product->slug!!}" />
                <input type="number" name="quantity" min="1" required="true" />
                <button type="submit" class="button">{!! trans('product.add_to_cart_text') !!}</button>
			{!! Form::close() !!}
        </div>
    </div>
    <div class="tab-content-1">
        {!! $product->{trans('product.content')} !!}
    </div>
</div>
@stop
