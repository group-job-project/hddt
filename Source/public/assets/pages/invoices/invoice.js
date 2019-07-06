/**
 Author:  	thueso company
 Version:  	1.0
 Copyright:  2019-2020
 License:  	LGPL
 */
var invoice = {

    url: "/thueso/Source/public/lap-hoa-don",
    title_info: "Thông báo",
    title_error: "Thông báo lỗi",
    _find: "find",
    _update: "update",

    /**
     * Push data to controller
     * @param name
     */
    findByTaxCode: function(taxcode, id) {
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
                    invoice.message(taxcode, invoice._find, invoice.title_error, "red");
                }
                $(id).attr('disabled', false);
                $(id).html("<i class='fas fa-search'></i> Truy xuất thông tin");
            }
        });
    },

    update_company_information: function(data, id) {
        $.ajax({
            type:'PUT',
            url: invoice.url,
            data:{'data': data},
            success:function(data) {
                invoice.message(data.id_tax, invoice._update, invoice.title_info, "#003b4d");
                $(id).attr('disabled', false);
                $(id).html("<i class='fas fa-save'></i> Cập nhật thông tin");
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
     * @param active
     * @param title
     */
    message: function (content, active, title, color) {

        let dialog_message = $('<div class="dialog-message" style="color: '+ color +'; font-weight: bold" title="'+ title +'"></div>');

        if (content == "" && active == invoice._find) {
            dialog_message.append("Vui lòng nhập mã số thuế.");
        }
        if (content != "" && active == invoice._find) {
            dialog_message.append("Mã số thuế ".concat(content, " không tìm thấy trong hệ thống. Hãy tiến hành thêm mới."));
        }
        if (content != "" && active == invoice._update) {
            dialog_message.append("Cập nhật mã số thuế ".concat(content, " thành công."));
        }

        return invoice.dialog_func(dialog_message, 1000);
    },

    /**
     * Common dialog message
     *
     * @param dialog_message
     * @param duration
     */
    dialog_func:function (dialog_message, duration) {

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
    },

    /**
     * Common dialog message
     *
     * @param dialog_message
     * @param duration
     */
    dialog_func_focus:function (dialog_message, duration, id) {

        dialog_message.dialog({
            modal: true,
            show: {
                effect: "fade",
                duration: duration
            },
            buttons: {
                OK: function() {
                    $( this ).dialog( "close" );
                    $(id).focus();
                }
            }
        });
    },
};