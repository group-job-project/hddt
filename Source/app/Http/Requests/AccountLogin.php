<?php
/**
PHP versions 7.3

Copyright (c) 2003-2019

Author:  	thueso company
Version:  	1.0
Copyright:  2019-2020
License:  	LGPL
 */

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * Navigation Menu
 *
 * @author binhna
 */
class AccountLogin extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'taxcode'=>'required|min:5|max:20',
            'password'=>'required|min:5|max:30',
        ];
    }

    /**
     * Get the validation messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'taxcode.required'=>'Mã số thuế không được để trống.',
            'taxcode.min'=>'Mã số thuế không được quá ngắn.',
            'taxcode.max'=>'Mã số thuế không được quá dài.',
            'password.required'=>'Mật khẩu không được để trống.',
            'password.min'=>'Mật khẩu không được ngắn hơn 8 ký tự.',
            'password.max'=>'Mật khẩu không được dài quá 30 ký tự.',
        ];
    }
}
