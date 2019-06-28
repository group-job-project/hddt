<?php
namespace App\Http\Controllers\Invoices;

use App\Http\BusinessLogic\Invoices;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class InvoiceController extends Controller
{

    public function getInvoice() {
        return view('layouts.pages.create_invoice');
    }

    public function findByInvoiceId(Request $request)
    {
        $name = $request->input('tax_code');

        $invoices = new Invoices();
        $result = $invoices->findByTaxCode($name);

        return response()->json(['success'=>$result]);
    }
}