/**
 Author:  	thueso company
 Version:  	1.0
 Copyright:  2019-2020
 License:  	LGPL
 */
var invoice = {

    /**
     * Push data to controller
     * @param name
     */
    findByTaxCode: function(taxcode) {
        $.ajax({
            type:'POST',
            url:'/thueso/Source/public/lap-hoa-don',
            data:{'tax_code': taxcode},
            success:function(data) {
                try {
                    invoice.setData(data.success[0]);
                }
                catch (e) {
                    invoice.clearForm();
                    $( "#dialog").dialog();
                }
            }
        });
    },

    /**
     * Set Data for Form
     * @param result
     */
    setData: function(result) {

        $("#view_tax_code").val(result.company_tax_code);
        $("#view_buyer_name").val(result.buyer_name);
        $("#view_company_name").val(result.company_name);
        $("#view_address").val(result.company_address);
        $("#view_city").val(result.company_city).change();
        $("#view_telephone").val(result.company_phone);
        $("#view_email").val(result.company_email);
        $("#view_account_bank").val(result.company_bank_account);
        $("#view_bank_name").val(result.company_bank_name);

    },

    /**
     * Clear form
     */
    clearForm: function () {
        $("#view_tax_code").val("");
        $("#view_buyer_name").val("");
        $("#view_company_name").val("");
        $("#view_address").val("");
        $("#view_city").val("-1").change();
        $("#view_telephone").val("");
        $("#view_email").val("");
        $("#view_account_bank").val("");
        $("#view_bank_name").val("");
    }
};