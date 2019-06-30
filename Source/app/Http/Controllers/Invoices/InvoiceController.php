<?php
namespace App\Http\Controllers\Invoices;

use App\Http\BusinessLogic\Invoices;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class InvoiceController extends Controller
{

    /**
     * Get instance
     *
     * @return Invoices
     */
    public function getInstance() {
       $invoices = new Invoices();
       return $invoices;
    }

    /**
     * Get page invoice
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getInvoice() {
        return view('layouts.pages.create_invoice');
    }

    /**
     * Find by invoice id
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function findByInvoiceId(Request $request)
    {
        $name = $request->input('tax_code');

        $result = $this->getInstance()->findByTaxCode($name);

        return response()->json(['success'=>$result]);
    }

    /**
     * Update information company
     */
    public function updInformationCompany(Request $request) {

        $data = $request->all();

        $updInforComp = $this->getInstance()->updateInformationCompany($data);
        return response()->json(['success'=> $data]);
    }
}