@extends('main')
@section('content')
<section class="product-detail p-to-top">
    <form action="/cart/add" method="post">
        <div class="container">
            <div class="row-flex row-flex-product-detail">
                <p><a href="/">Khách Sạn</a></p><i class="ri-arrow-right-double-fill"></i>
                <p>{{$product -> name}}</p>
            </div>
            <div class="row-grid">
                <div class="product-detail-left">
                    <img class="main-image" src="{{asset($product -> image)}}" alt="">
                    <div class="product-images-items">
                        @php
                            $product_images = explode('*',$product -> images)
                        @endphp
                        @foreach ($product_images as $product_image)
                            <img src="{{asset($product_image)}}" alt=""></a>

                        @endforeach
                    </div>

                </div>
                <div class="product-detail-right">
                    <div class="product-detail-right-infor">
                        <h1>{{$product -> name}}</h1>
                        <span>{{$product -> material}}</span>
                        <div class="product-item-price">
                            <p>{{number_format($product -> price_sale)}}<sup>đ</sup> <span>{{number_format($product -> price_nomal)}}</span><sup>đ</sup></p>
                        </div>
                    </div>
                    <div class="row-flex h2-heading">
                        <h2>Đặc điểm nổi bật</h2>
                    </div>
                    <div class="product-detail-right-des">
                        {!!$product -> description!!}
                        <!-- <ul>
                            <li>Chất liệu: 100% Cotton</li>
                            <li>Định lượng vải 220gsm dày dặn</li>
                            <li>Vải được xử lí hoàn thiện giúp bề mặt vải ít xù lông, mềm mịn và bền màu hơn</li>
                            <li>Độ dày vải vừa phải, thoải mái, thoáng mát</li>
                            <li>Phù hợp mặc hàng ngày</li>
                            <li>Sản xuất tại Nhà máy Tessellation (TGV), Việt Nam. Xem nhà máy</li>
                            <li>Người mẫu: 186cm - 77kg, mặc áo 2XL</li>
                        </ul> -->
                    </div>
                    <div class="product-detail-right-quantity">
                        <h2>Số lượng:</h2>
                        <div  class="product-detail-right-quantity-input">
                            <i class="ri-subtract-line"></i>
                            <input onKeyDown="return false" class="quantity-input" name="product_qty" type="number" value="1">
                            <input type="hidden" value="{{$product -> id}}"  name="product_id" >
                            <i class="ri-add-line"></i>
                        </div>
                    </div>
                    <div class="product-detail-right-addcart">
                        <button type="submit" class="main-btn">Thêm vào giỏ hàng</button>
                    </div>
                </div>
            </div>
            <div class="row-flex h2-heading">
                <h2>Chi Tiết Sản Phẩm</h2>
            </div>
            <div class="row-flex">
                
                <div class="product-detail-content">
                    {!!$product -> content!!}
                    
                </div>
            </div>
        </div>


        @csrf
    </form>

    
</section>


@endsection
