@extends('layouts.main')

@section('content')
<div class="section-milk">
	@foreach($products as $key => $product)
		@if (($key % 2) == 0)
	    <div class="section-milk-left" style="margin-bottom: 20px;">
	        <div class="frontpager">
	            <img class="icon-fr" src="{!! URL::asset('/images/products/' . $product->thumbnail) !!}"/>
	            <h2>{!! $product->{trans('product.title')} !!}</h2>
	            @if ($product->new_flg == 1)
	            <p class="uppeprcase">{!! trans('menu.order_new') !!}</p>
	            @endif
	        </div>
	        <img class="img-milk" src="{!! URL::asset('/images/products/' . $product->thumbnail) !!}"/>
	        <a href="{!! route('product.show', ['id' => $product->id, 'slug' => $product->slug]) !!}" class="link-milk">
	            <span>{!! trans('product.price_label') !!}: &nbsp; {!! $product->{trans('product.price')} . " vnđ / " . $product->{trans('product.unit')} !!}&emsp;{!! trans('menu.order_text') !!}</span>
	        </a>
	    </div>
	    @else
	    <div class="section-milk-right" style="margin-bottom: 20px;">
            <div class="frontpager">
                <img class="icon-fr" src="{!! URL::asset('/images/products/' . $product->thumbnail) !!}"/>
                <h2>{!! $product->{trans('product.title')} !!}</h2>
                @if ($product->new_flg == 1)
                <p class="uppeprcase">{!!trans('menu.order_new') !!}</p>
                @endif
            </div>
            <img class="img-milk" src="{!! URL::asset('/images/products/' . $product->thumbnail) !!}"/>
            <a href="{!! route('product.show', ['id' => $product->id, 'slug' => $product->slug]) !!}" class="link-milk">
                <span>{!! trans('product.price_label') !!}: &nbsp; {!! $product->{trans('product.price')} . " vnđ / " . $product->{trans('product.unit')} !!} &emsp;{!! trans('menu.order_text') !!}</span>
            </a>
        </div>
	    @endif
    @endforeach
</div>
@stop
