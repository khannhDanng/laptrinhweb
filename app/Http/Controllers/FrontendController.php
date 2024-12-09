<?php

namespace App\Http\Controllers;

use App\Mail\TestMail;
use App\Models\order;
use App\Models\product;
use App\Notifications\EmailNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
//test


class FrontendController extends Controller
{
    public function index(){
        $products = product::all();
        //dd($products);
        return view('index',[
            'products' => $products

        ]);
    }
    public function show_product(Request $request){
        $product = product::find($request -> id);
        return view('product',[
            'product' => $product

        ]);
    }
    //cart
    public function add_cart(Request $request){
        //dd($request -> all());
        $product_id = $request -> product_id;
        $product_qty = $request -> product_qty;
        if(is_null(Session::get('cart')))
        {
            Session::put('cart',[
                $product_id => $product_qty
            ]);
            return redirect('/cart');
        }
        else{
            $cart = Session::get('cart');
            if (Arr::exists($cart,$product_id)) {
                $cart[$product_id] = $cart[$product_id] + $product_qty;
                Session::put('cart',$cart);
                return redirect('/cart');
            }
            else{
                $cart[$product_id] = $product_qty;
                Session::put('cart',$cart);
                return redirect('/cart');
            }
        } 
    }
    public function show_cart(){
        $cart = Session::get('cart');
        $product_id = array_keys($cart);
        $products = product::whereIn('id', $product_id) -> get();
        return view('cart',[
            'products' => $products
        ]);
    }
    public function delete_cart(Request $request){
        $cart = Session::get('cart');
        $product_id = $request -> id;
        unset($cart[$product_id]);
        Session::put('cart',$cart);
        return redirect('/cart');

    }
    public function  update_cart(Request $request){
        $cart = $request -> product_id;
        Session::put('cart',$cart);
        return redirect('/cart');
    }
    public function send_cart(Request $request){
        //$Mail = Mail::to('phuoctrung1905@gmail.com') -> sent(new TestMail());
        //dd();
        $token = Str::random(12);
        $order = new order;
        $order -> name = $request -> input('name');
        $order -> phone = $request -> input('phone');
        $order -> email = $request -> input('email');
        $order -> city = $request -> input('city');
        $order -> district = $request -> input('district');
        $order -> ward = $request -> input('ward');
        $order -> address = $request -> input('address');
        $order -> note = $request -> input('note');
        $order_detail = json_encode($request -> input('product_id'));
        $order -> order_detail = $order_detail;
        $order -> token = $request -> $token;
        $order -> save();
        return redirect('/order/confirm');
    }
    public function show_login(){
        return view ('login');
    }
    public function check_login(Request $request){
        //dd($request -> all());
        if(Auth::attempt(
            [
            'email' => $request -> input('email'), 
            'password' => $request -> input('password')
            ]
        ))
        {
           
            return redirect('/');
        }
        return redirect() -> back();
    }
}
