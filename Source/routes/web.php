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

/**
 * Create Invoice
 */
Route::get('/lap-hoa-don', 'Invoices\InvoiceController@getInvoice');
Route::post('/lap-hoa-don','Invoices\InvoiceController@findByInvoiceId');
Route::put('/lap-hoa-don','Invoices\InvoiceController@updInformationCompany');