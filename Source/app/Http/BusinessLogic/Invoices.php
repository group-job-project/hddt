<?php
/**
PHP versions 7.3

Copyright (c) 2003-2019

Author:  	thueso company
Version:  	1.0
Copyright:  2019-2020
License:  	LGPL
*/
namespace App\Http\BusinessLogic;

use Illuminate\Support\Facades\DB;

class Invoices {

    /**
     * Find by tax code in company infomation
     *
     */
    public function findByTaxCode($taxcode) {

        $findTaxCode = DB::select('CALL FIND_BY_TAX_CODE(?)', array($taxcode));

        return $findTaxCode;
    }

    /**
     * Update information company
     */
    public function updateInformationCompany(
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
        ) {

        $updInfor = DB::select("CALL UPDATE_COMPANY_INFOMATION(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
            array(
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
            ));

        return $updInfor;
    }
}