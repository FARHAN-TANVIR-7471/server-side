<?php
namespace App\Http\Controllers;

use App\Cart;
use App\Product;
use App\Http\Resources\CartCollection;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        $carts = Cart::where('ip_address', request()->ip())->with('product')->get();
        $total = 0;
        
        foreach($carts as $cart){
            $total += floor($cart->product_quantity *( $cart->product->price - ($cart->product->price/100 * $cart->product->discount)));
        }
        return response()->json([
            'success' => true,
            'carts' => $carts,
            'total' => $total,
        ]);
    }
    public function store(Request $request)
    {

        $cart = new Cart();

        $cart = Cart::where('ip_address', $request->ip_address)
        ->where('product_id', $request->product_id)->first();
        if($cart != null)
        {
            $cart->increment('product_quantity');
        }else{
            $cart = new Cart();
            $cart->user_id = $request->user_id;
            $cart->ip_address = request()->ip();
            $cart->product_id = $request->product_id;
            $cart->save();
        }
        return $cart;
    }

    public function update(Request $request)
    {
        $cart = Cart::findOrFail($request->id);
        $cart->product_quantity = $request->get('product_quantity');
        $cart->save();
        return response()->json([
            'success' => true,
        ]);
    }

    public function destroy(Request $request)
    {
        $cart = Cart::where('id', $request->id);
        $cart->delete();
        return response()->json([
            'success' => true,
        ]);
    }
}
