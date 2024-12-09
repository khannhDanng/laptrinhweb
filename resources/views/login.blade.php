
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
    <!-- Login -->
     <div class="login">
        <h1>Đăng Nhập</h1>
        <form action="/check_login" method="post">
            <input type="text" name="email" placeholder="Nhập email">
            <input type="password" name="password" placeholder="Nhập password">
            <button type="submit">Login</button>
            @csrf
        </form>
     </div>
    
      <!-- footer -->
    @include('parts.footer')
</body>
</html>