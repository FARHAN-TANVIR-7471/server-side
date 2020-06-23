<?php

use App\Http\Controllers\CartController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/products','ProductController');
Route::post('/productadd','ProductController@store'); 

// cart
Route::post('cart', 'CartController@store');
Route::get('cart', 'CartController@index');
Route::post('cart_item_delete', 'CartController@destroy');
Route::post('cart_item_update', 'CartController@update');

// order
Route::post('order', 'OrderController@store');
Route::get('order', 'OrderController@index');

Route::group(['prefix'=>'products'], function(){
	Route::apiResource('/{product}/reviews','ReviewController');
});

//Route::post('login', 'loginController@login');
Route::post('login', 'loginController@login');

Route::post('loginAdmin', 'loginController@loginAdmin');
Route::post('/usersignin', 'loginController@usersignin');

/*Contruct*/
Route::post('/contructinsert', 'ContactController@store');
Route::get('/contruct', 'ContactController@index');