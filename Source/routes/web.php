<?php

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

Route::get('/', function () {
    return view('layouts\pages\invoice_issued');
});

Route::get('/invoices','Controller@invoices');

Route::get('/dang-nhap','Auth\LoginController@getLogin');

Route::post('/dang-nhap','Auth\LoginController@postLogin');

Route::get('/dang-ky','Auth\RegisterController@getRegister');

Route::post('/dang-ky','Auth\RegisterController@postRegister');

Route::get('/dang-ky-khach','Auth\RegisterController@getRegisterGuest');

Route::post('/dang-ky-khach','Auth\RegisterController@postRegisterGuest');