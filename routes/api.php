<?php

use App\Http\Controllers\CartController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/products','ProductController'); 

// cart
Route::post('cart', 'CartController@store');
Route::get('cart', 'CartController@index');
Route::post('cart_item_delete', 'CartController@destroy');
Route::post('cart_item_update', 'CartController@update');

// order
Route::post('order', 'OrderController@store');

Route::group(['prefix'=>'products'], function(){
	Route::apiResource('/{product}/reviews','ReviewController');
});