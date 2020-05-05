<?php

namespace App\Http\Resources\Product;

use App\Cart;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

     
    public function totalProduct()
    {
      
       $carts = Cart::where('ip_address', request()->ip())->get();

       $total_item = 0;

       foreach ($carts as $cart)
       {
           $total_item += $cart->product_quantity; 
       }

       return $total_item;
    }


    public function toArray($request)
    {
        return [
            'data' => [
                'id' => $this->id,
                'name' => $this->name,
                'price' => $this->price,
                'discount' => $this->discount,
                'discount' => $this->discount,
                'totalPrice' => round((1 - ($this->discount/100)) * $this->price, 2),
                'gender_id' => $this->gender_id,
                'product_type_id' => $this->product_type_id,
                'custom' => $this->custom,
                'number' => $this->number ==0 ? 'Out of Stock' : $this->number,
                'size' => $this->size,
                'description' => $this->description,
                'image' => $this->image,
                'color' => $this->color,
                'trend' => $this->trend,
                'status' => $this->status,

                'rating' =>$this->reviews->count() > 0 ? round( $this->reviews->sum('star')/$this->reviews->count(),2) : 'No rating',

                'href' => [
                    'reviews' => route('reviews.index',$this->id)
                ]
            ],
            'totalproduct' => $this->totalProduct(),    
        ];  
    }
}
