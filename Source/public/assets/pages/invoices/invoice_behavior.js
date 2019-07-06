$( document ).ready(function() {
    $("#btn-find-by-tax-code").html("<i class='fas fa-search'></i> Truy xuất thông tin");
    $("#btn_update_information").html("<i class='fas fa-save'></i> Cập nhật thông tin");
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
});

$("#btn-find-by-tax-code").click(function(e) {

    // stop mutiple click event
    e.stopImmediatePropagation();
    e.preventDefault();
    var tax_code = $("#txt_tax_code").val();

    if (tax_code == "") {
        invoice.message(tax_code, invoice._find, invoice.title_error, "red");
        invoice.clear_form();
        return;
    }

    var $this = $(this);
    $this.html("<i class='fas fa-stroopwafel fa-spin'></i> Đang xử lý");
    $this.attr('disabled', true);
    setTimeout(function() {
        invoice.findByTaxCode(tax_code, "#btn-find-by-tax-code");
    }, 3000);


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

    let dialog_message = $('<div class="dialog-message" style="color: red;" title="'+ invoice.title_info +'"></div>');

    // tax code
    if (upd_tax_code == "") {
        dialog_message.append("Vui lòng nhập mã số thuế.");

        return invoice.dialog_func_focus(dialog_message, 1000, "#view_tax_code");
    }

    // company name
    if (upd_comp_name == "") {
        dialog_message.append("Vui lòng nhập tên doanh nghiệp.");

        return invoice.dialog_func_focus(dialog_message, 1000, "#view_company_name");
    }

    // address
    if (upd_address == "") {
        dialog_message.append("Vui lòng nhập địa chỉ.");

        return invoice.dialog_func_focus(dialog_message, 1000, "#view_address");
    }

    // city
    if (upd_city == "-1") {
        dialog_message.append("Vui lòng chọn thành phố.");

        return invoice.dialog_func_focus(dialog_message, 1000, "#view_city");
    }

    //telephone
    if (upd_tel_phone == "") {
        dialog_message.append("Vui lòng nhập số điện thoại.");

        return invoice.dialog_func_focus(dialog_message, 1000, "#view_telephone");
    }

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

    var $this = $(this);
    $this.html("<i class='fas fa-stroopwafel fa-spin'></i> Đang xử lý");
    $this.attr('disabled', true);
    setTimeout(function() {
        invoice.update_company_information(data, "#btn_update_information");
    }, 5000);
});


