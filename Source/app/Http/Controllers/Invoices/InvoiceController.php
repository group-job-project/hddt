<?php
namespace App\Http\Controllers\Invoices;

use App\Http\BusinessLogic\Invoices;
use App\Http\Controllers\Controller;
use http\Exception;
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
        return view('layouts.pages.find_invoice');
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

        $response = null;

        try {
            $taxcode = $request->input('data.tax_code');
            $accountid = $request->input('data.account_id');
            $buyername = $request->input('data.buyer_name');
            $compname = $request->input('data.company_name');
            $address = $request->input('data.address');
            $city = $request->input('data.city');
            $telphone = $request->input('data.tel_phone');
            $fax = $request->input('data.fax');
            $mobile = $request->input('data.mobile');
            $email = $request->input('data.email');
            $website = $request->input('data.website');
            $bankaccount = $request->input('data.bank_account');
            $bankname = $request->input('data.bank_name');
            $description = $request->input('data.description');

            $updInforComp = $this->getInstance()->updateInformationCompany(
                $taxcode,
                $accountid,
                $buyername,
                $compname,
                $address,
                $city,
                $telphone,
                $fax,
                $mobile,
                $email,
                $website,
                $bankaccount,
                $bankname,
                $description
            );

            $response = ["status" => "OK", "id_tax" => $taxcode];
        } catch (Exception $ex) {
            $response = ["status" => "Fail", "id_tax" => $taxcode];
            return response()->json($response);
        }

        return response()->json($response);
    }
}