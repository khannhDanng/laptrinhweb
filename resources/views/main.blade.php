<html lang="en">
<head>
    @include('parts.head')
</head>
<body>
    <!-- header -->
    @include('parts.header')

    <!-- content -->
     @yield('content')
    
    <!-- hot-product -->
    @include('parts.hotproduct')
    <!-- popular-product -->
    
    <!-- <section class="hot-products">
        <div class="container">
            <div class="row-grid">
                <p class="heading-text">Sản Phẩm Phổ Biến</p>
            </div>
            <div class="row-grid row-grid-hot-product">
                <div class="hot-product-item">
                    <img src="{{asset('frontend/asset/images/khachsan/SheratonNhaTrang/hot-product-item.svg')}}" alt=""></a>
                    <p><a href="">Sheraton Nha Trang</a></p>
                    <span>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                    </span>
                    <div class="product-item-price">
                        <p>3,740,799<sup>đ</sup> <span>2,357,452</span><sup>đ</sup></p>
                    </div>
                </div>
                <div class="hot-product-item">
                    <img src="{{asset('frontend/asset/images/khachsan/StellaMarisBeach/hot-product-item.svg')}}" alt=""></a>
                    <p><a href="">Stella Maris Beach</a></p>
                    <span>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                    </span>
                    <div class="product-item-price">
                        <p>884,044<sup>đ</sup> <span>1,079,933</span><sup>đ</sup></p>
                    </div>
                </div>
                <div class="hot-product-item">
                    <img src="{{asset('frontend/asset/images/khachsan/NikkoSG/hot-product-item.svg')}}" alt=""></a>
                    <p><a href="">Nikko Sài Gòn</a></p>
                    <span>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>                        
                    </span>
                    <div class="product-item-price">
                        <p>2,946,815<sup>đ</sup> <span>3,339,999</span><sup>đ</sup></p>
                    </div>
                </div>
                <div class="hot-product-item">
                    <img src="{{asset('frontend/asset/images/khachsan/DeLaSeaHaLong/hot-product-item.svg')}}" alt=""></a>
                    <p><a href="">DeLaSea Hạ Long</a></p>
                    <span>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                    </span>
                    <div class="product-item-price">
                        <p>3,001,358<sup>đ</sup> <span>946,059</span><sup>đ</sup></p>
                    </div>
                </div>
                <div class="hot-product-item">
                    <img src="{{asset('frontend/asset/images/khachsan/SheratonNhaTrang/hot-product-item.svg')}}" alt=""></a>
                    <p><a href="">Sheraton Nha Trang</a></p>
                    <span>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                        <img src="{{asset('frontend/asset/images/icon/ngoisao.svg')}}" alt=""></a>
                    </span>
                    <div class="product-item-price">
                        <p>3,740,799<sup>đ</sup> <span>3,740,799</span><sup>đ</sup></p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->

    <!-- popular-product1 -->
    <!-- footer -->
    @include('parts.footer')
</body>
</html>