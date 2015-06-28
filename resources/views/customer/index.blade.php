@extends('layouts.main')

@section('content')
<div class="content-section-2-left-link">
  @include('elements.new-events')
</div>
<div class="content-section-2-right-business">
	@foreach($customers as $key => $items)
	<div class="content-section-2-right-business">
		@foreach($items as $k => $customer)
			@if ($k == 0)
			<div class="bsn-left">
                <div class="top"><img src="{{ URL::asset('/images/boy-bsn.png') }}"/></div>
                <div class="bt">
                    @if($customer->thumbnail != NULL)
                    <img src="{{ URL::asset('/images/customer/'.$customer->thumbnail) }}" width="200" height="105">
                    @endif
                </div>
            </div>
			@endif

			@if ($k == 1)
            <div class="bsn-m">
                <div class="top"><img src="{{ URL::asset('/images/boy-bsn.png') }}"/></div>
                <div class="bt">
                    @if($customer->thumbnail != NULL)
                    <img src="{{ URL::asset('/images/customer/'.$customer->thumbnail) }}" width="200" height="105">
                    @endif
                </div>
            </div>
            @endif

            @if ($k == 2)
            <div class="bsn-right">
                <div class="top"><img src="{{ URL::asset('/images/boy-bsn.png') }}"/></div>
                <div class="bt">
                    @if($customer->thumbnail != NULL)
                    <img src="{{ URL::asset('/images/customer/'.$customer->thumbnail) }}" width="200" height="105">
                    @endif
                </div>
            </div>
            @endif

		@endforeach
    </div>
	@endforeach
</div>
@stop
