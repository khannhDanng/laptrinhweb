<?php
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\Admin\OrderController;
use App\Models\product;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//login
Route::get('/login',[FrontendController::class,'show_login']) -> name('login');
Route::post('/check_login',[FrontendController::class,'check_login']);


//admin

Route::middleware('auth') -> group(function(){
    
    Route::get('/',[FrontendController::class,'index']);

    Route::prefix('admin')-> group(function(){

        Route::get('/', function () {return view('admin.home');});
        Route::get('product/list', [ProductController::class,'list_product']);

    });

});
//product
Route::post('/admin/product/add',[ProductController::class,'insert_product']);
Route::get('/admin/product/create', [ProductController::class,'add_product']);

Route::get('/admin/product/delete',[ProductController::class,'delete_product']);
Route::get('/admin/product/edit/{id}',[ProductController::class,'edit_product']);
Route::post('/admin/product/edit/{id}',[ProductController::class,'update_product']);



//order
Route::get('/admin/order/list',[OrderController::class,'list_order']);

Route::get('/admin/order/detail/{order_detail}', [OrderController::class,'detail_order']);

//upload
Route::post('/upload',[UploadController::class,'uploadImage']);
Route::post('/uploads',[UploadController::class,'uploadImages']);


//frontend

Route::get('/product/{id}', [FrontendController::class,'show_product']);


Route::get('/order/confirm', function () {return view('order.confirm');});
Route::get('/order/succes', function () {return view('order.succes');});

//Cart
Route::post('/cart/add',[FrontendController::class,'add_cart']);
Route::get('/cart', [FrontendController::class,'show_cart']);
Route::get('/card/delete/{id}', [FrontendController::class,'delete_cart']);
Route::post('/cart/update', [FrontendController::class,'update_cart']);
Route::post('/cart/send', [FrontendController::class,'send_cart']);
