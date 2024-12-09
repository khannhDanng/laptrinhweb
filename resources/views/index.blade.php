<html lang="en">
<head>
    @include('parts.head')
</head>
<body>
    <!-- header -->
    @include('parts.header')
    <!-- slider -->
    <section class="slider">
        <div class="slider-items">
            <div class="slider-item">
                <img src="{{asset('frontend/asset/images/banner/banner1.svg')}}" alt="">
            </div>
            <div class="slider-item">
                <img src="{{asset('frontend/asset/images/banner/banner2.svg')}}" alt="">
                
            </div>
            <div class="slider-item">
            <img src="{{asset('frontend/asset/images/banner/banner3.svg')}}" alt="">
               
            </div>
        </div>
        <div class="slider-arrow">
            <i class="ri-arrow-right-fill"></i>
            <i class="ri-arrow-left-fill"></i>
        </div>
    </section>
    <!-- hot-product -->
    <section class="hot-products">
        <div class="container">
            <div class="row-grid">
                <p class="heading-text">Khách Sạn</p>
            </div>
            <div class="row-grid row-grid-hot-product">
                @foreach ($products as $product)
                    <div class="hot-product-item">
                        <a href="/product/{{$product -> id}}"><img src="{{asset($product -> image)}}" alt=""></a>
                        <p><a href="/product/{{$product -> id}}">{{$product -> name}}</a></p>
                        <span>{{$product -> material}}</span>
                        <div class="product-item-price">
                            <p>{{number_format($product -> price_sale)}}<sup>đ</sup> <span>{{number_format($product -> price_nomal)}}</span><sup>đ</sup></p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
      <!-- footer -->
    @include('parts.footer')
</body>
</html>