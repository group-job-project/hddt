@extends('layouts.layout')

@section('title', 'Lập Hóa Đơn')
@section('content')
	<div class="container-fluid"
		style="padding-right: 0px !important; padding-left: 0px !important;width: 98%">

		<div class="jumbotron-custom jumbotron-fluid">
			
				<h2 class="display-4">TÌM THEO MÃ SỐ THUẾ DOANH NGHIỆP</h2>
			<form >
				<div class="row">
					<div class="col-4">
						<input type="text" class="form-control-custom size-text-id"
							id="txt_tax_code" value="6300251710">
					</div>
					<div class="col-2">

						<button type="submit" id="btn-find-by-tax-code" class="btn btn-save-craft size-button">

						</button>
					</div>

				</div>
			</form>
			
		</div>
		<div class="my-3 p-3 bg-white rounded shadow-sm">
			<div style="margin-bottom: 30px;">
				<h6>
					<b>THÔNG TIN TÀI KHOẢN KHÁCH HÀNG</b>
				</h6>
			</div>
			<div class="row">
				<div class="col-12">
					<form id="frm_invoice">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Mã số
								thuế <span style="color: red;">*</span>
							</label>
							<div class="col-sm-3">
								<input type="text" maxlength="11" autocomplete="off" class="form-control-plaintext"
									   id="view_tax_code">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Người mua hàng</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext" maxlength="150"
									id="view_buyer_name" value="">
							</div>
						</div>
						<div class="form-group row">
							<label autocomplete="off" class="col-sm-2 col-form-label">Tên Doanh Nghiệp <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" maxlength="150"
									class="form-control-plaintext" id="view_company_name"
									value="">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Địa chỉ <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" maxlength="150" class="form-control-plaintext"
									id="view_address"
									value="">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Tỉnh/Thành
								phố <span style="color: red;">*</span>
							</label>
							<div class="col-sm-3">
								<select class="form-control-plaintext" id="view_city">
									<option value="-1">Chọn Thành Phố</option>
									<option value="TP.HCM">TP.Hồ Chí Minh</option>
									<option value="TP.HA NOI">TP.Hà Nội</option>
									<option value="TP.CAN THO">TP.Cần Thơ</option>
									<option value="TP.CA MAU">TP.Cà Mau</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Điện thoại <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="view_telephone" maxlength="15"/>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Fax</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									   id="view_fax" maxlength="15"/>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Di động</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									   id="view_mobile" maxlength="11"/>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="view_email" maxlength="50">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Webiste</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									   id="view_website" maxlength="50">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Số TK Ngân Hàng</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="view_account_bank" maxlength="25">
							</div>
						</div>

						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Tên Ngân Hàng</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="view_bank_name" value="" maxlength="50">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Ghi chú</label>
							<div class="col-sm-9">
								<textarea type="are" class="form-control-plaintext"
									   id="view_description" value="" rows="3" maxlength="300"></textarea>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" style="text-align: left;">
					<button type="button" class="btn btn-save-craft" id="btn_update_information">

					</button>

					<button type="button" class="btn btn-save-craft"
						onclick="window.location.href='exportHD.html'">
						<i class="fas fa-save"></i> Lập hoá đơn
					</button>
				</div>
			</div>
		</div>
	</div>
@endsection
@section("javascript")
	<script type="text/javascript" src="{{ asset('assets/pages/invoices/invoice.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/pages/invoices/invoice_behavior.js') }}"></script>
@endsection
