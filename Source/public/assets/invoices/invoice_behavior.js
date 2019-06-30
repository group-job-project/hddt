$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

$("#btn-find-by-tax-code").click(function(e) {

    // stop mutiple click event
    e.stopImmediatePropagation();
    e.preventDefault();
    var tax_code = $("#txt_tax_code").val();

    if (tax_code == "") {
        invoice.error_message(tax_code, "find", invoice.title_error);
        invoice.clear_form();
        return;
    }

    invoice.findByTaxCode(tax_code);
});

$("#btn_update_information").click(function (e) {

    // stop mutiple click event
    e.stopImmediatePropagation();
    e.preventDefault();

    var accountid = 100;
    var upd_tax_code = $("#view_tax_code").val();
    var upd_buyer_name = $("#view_buyer_name").val();
    var upd_comp_name = $("#view_company_name").val();
    var upd_address = $("#view_address").val();
    var upd_city = $("#view_city").val();
    var upd_tel_phone = $("#view_telephone").val();
    var upd_email = $("#view_email").val();
    var upd_bank_account = $("#view_account_bank").val();
    var upd_bank_name = $("#view_bank_name").val();

    var data = {
        account_id: accountid,
        tax_code: upd_tax_code,
        buyer_name: upd_buyer_name,
        company_name: upd_comp_name,
        address: upd_address,
        city: upd_city,
        tel_phone: upd_tel_phone,
        email: upd_email,
        bank_account: upd_bank_account,
        bank_name: upd_bank_name
    };

    invoice.update_company_information(data);

});
