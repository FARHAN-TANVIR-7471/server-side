<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Order;
use App\OrderItem;
use Illuminate\Http\Request;

class OrderController extends Controller
{

    public function index()
    {
        $orders = Order::orderBy('updated_at', 'DESC')->with('orderitems')->get();

        return response()->json([
            //'success' => true,
            'orders' => $orders
        ]);
    }


    public function store(Request $request)
    {
        $order = new Order();
        $order->user_id = $request->user_id;
        $order->name = $request->name;
        $order->email = $request->email;
        $order->phone = $request->phone;
        $order->address = $request->address;
        $order->save();

        $carts = Cart::where('ip_address', $request->ip_address)->get();
        foreach ($carts as $cart)
        {
            $ordeitem = new OrderItem();
            $ordeitem->user_id = $cart->user_id;
            $ordeitem->order_id = $order->id;
            $ordeitem->ip_address = $cart->ip_address;
            $ordeitem->product_id = $cart->product_id;
            $ordeitem->product_quantity = $cart->product_quantity;
            $ordeitem->total_amount = floor($cart->product_quantity * ($cart->product->price - ($cart->product->price/100 * $cart->product->discount)));
            $ordeitem->save();
        }

        $carts = Cart::where('ip_address', $request->ip_address)->get();
        foreach ($carts as $cart)
        {
            $cart->delete();
        }
        
        return $ordeitem;
    }
}
