/**
 Author:  	thueso company
 Version:  	1.0
 Copyright:  2019-2020
 License:  	LGPL
 */
var invoice = {

    url: "/thueso/Source/public/lap-hoa-don",

    /**
     * Push data to controller
     * @param name
     */
    findByTaxCode: function(taxcode) {
        $.ajax({
            type:'POST',
            url: invoice.url,
            data:{'tax_code': taxcode},
            success:function(data) {
                try {
                    invoice.setData(data.success[0]);
                }
                catch (e) {
                    invoice.clear_form();
                    invoice.error_message(taxcode, 500);
                }
            }
        });
    },

    update_company_information: function(data) {
        console.log(data);

        $.ajax({
            type:'PUT',
            url: invoice.url,
            data:{'data': data},
            success:function(data) {
                console.log(data.success);
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
    clear_form: function () {
        $("#view_tax_code").val("");
        $("#view_buyer_name").val("");
        $("#view_company_name").val("");
        $("#view_address").val("");
        $("#view_city").val("-1").change();
        $("#view_telephone").val("");
        $("#view_email").val("");
        $("#view_account_bank").val("");
        $("#view_bank_name").val("");
    },

    /**
     * Error message
     *
     * @param content
     * @param duration
     */
    error_message: function (content, duration) {

        let dialog_message = $('<div class="dialog-message" style="color: red;" title="Thông báo lỗi"></div>');
        if (content == "") {
            dialog_message.append("Vui lòng nhập mã số thuế.");
        } else {
            dialog_message.append("Mã số thuế ".concat(content, " không tìm thấy trong hệ thống. Hãy tiến hành thêm mới."));
        }
        dialog_message.dialog({
            modal: true,
            show: {
                effect: "fade",
                duration: duration
            },
            buttons: {
                OK: function() {
                    $( this ).dialog( "close" );
                }
            }
        });
    }
};