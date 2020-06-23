<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});


Route::get('/admin/login', function () {
    return view('admin.login');
});
Route::get('/admin/register', function () {
    return view('admin.register');
});
Route::get('/admin/password', function () {
    return view('admin.password');
});

Route::get('/home', 'HomeController@index')->name('home');
