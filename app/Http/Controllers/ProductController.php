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

class ProductController extends Controller
{

    public function index()
    {
        return ProductCollection::collection(Product::orderBy('updated_at', 'desc')->get());
    }

    public function create()
    {
        //
    }

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

    public function show(Product $product)
    {
        return new ProductResource($product);
    }

    public function edit(Product $product)
    {
        //
    }

    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
    }

    public function destroy(Product $product)
    {
        //
    }
}
