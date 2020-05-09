<?php

namespace App\Http\Controllers;

use App\Model\Product;
use Illuminate\Http\Request;
use \Illuminate\Http\Response;
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;


use Illuminate\Support\Facades\Auth;

use App\Exceptions\ProductNotBelongsToUser;
use App\Http\Requests\ProductRequest;

//use Symfony\Component\HttpFoundation\Response;


class ProductController extends Controller
{
    /*public function __construct()
    {
        $this->middleware('auth:api')->except('index','show');
    }*/
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       //return Product::all();
        /*return ProductResource::collection( Product::all());*/

        return ProductCollection::collection(Product::orderBy('updated_at', 'desc')->get());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $product = new Product;
        $product->name = $request->name;
        $product->price = $request->price;
        $product->discount = $request->discount;
        $product->gender_id = $request->gender_id;
        $product->product_type_id = $request->product_type_id;
        $product->custom = $request->custom;
        $product->number = $request->number;
        $product->size = $request->size;
        $product ->description = $request->description;
        $product->image = $request->image;
        $product->color = $request->color;
        $product->save();

        return response([
            'data' => new ProductResource($product)
        ],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return new ProductResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }
}
