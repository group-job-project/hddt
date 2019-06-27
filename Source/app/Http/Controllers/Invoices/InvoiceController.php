<?php
namespace App\Http\Controllers\Invoices;

use App\Http\Controllers\Controller;


class InvoiceController extends Controller
{
    public function invoices()
    {
        // return $invoices;
        return view('layouts.pages.create_invoice');
    }
}