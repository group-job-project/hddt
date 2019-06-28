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

						<button type="submit" id="btn-find-by-tax-code" class="btn btn-save-craft">
							<i class="fas fa-search"></i> Truy xuất thông tin
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
					<form>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Mã số
								thuế <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" readonly="true" class="form-control-plaintext"
									   id="view_tax_code">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Người mua hàng</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="view_buyer_name" value="">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tên Doanh Nghiệp <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" readonly="false"
									class="form-control-plaintext" id="view_company_name"
									value="">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Địa chỉ <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="view_address"
									value="">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tỉnh/Thành
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
							<label for="staticEmail" class="col-sm-3 col-form-label">Điện thoại <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="view_telephone" />
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Email <span
								style="color: red;">*</span></label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="view_email">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Số TK Ngân Hàng</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="view_account_bank">
							</div>
						</div>

						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tên Ngân Hàng</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="view_bank_name" value="">
							</div>
						</div>
					</form>
				</div>
			</div>

			<div style="margin-bottom: 30px; margin-top: 50px;">
				<h6>
					<b>THÔNG TIN ĐĂNG NHẬP TÀI KHOẢN</b>
				</h6>
			</div>
			<div class="row" style="margin-bottom: 40px;">
				<div class="col-12">
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">Đường dẫn
							đăng nhập</label>
						<div class="col-sm-10">
							<a href="">https://hdgtgt.com/hd/</a>
						</div>
					</div>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">Email
							đăng nhập <span style="color: red;">*</span>
						</label>
						<div class="col-sm-5">
							<input type="text" class="form-control-plaintext"
								id="staticEmail" value="">
						</div>
					</div>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">Mật khẩu
							đăng nhập <span style="color: red;">*</span>
						</label>
						<div class="col-sm-5">
							<input type="text" class="form-control-plaintext"
								id="staticEmail" value="">
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-md-12" style="text-align: left;">
					<button type="button" class="btn btn-save-craft"
						onclick="window.location.href='exportHD.html'">
						<i class="fas fa-save"></i> Tạo tài khoản phân cấp
					</button>
					<button type="button" class="btn btn-save-craft"
						onclick="window.location.href='exportHD.html'">
						<i class="fas fa-save"></i> Cập nhật thông tin
					</button>
					<button type="button" class="btn btn-save-craft"
						onclick="window.location.href='exportHD.html'">
						<i class="fas fa-save"></i> Lập hoá đơn
					</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Information error -->
	<div id="dialog" title="Thông báo lỗi">
		<p>Không tìm thấy mã số thuế của doanh nghiệp trong hệ thống.</p>
	</div>
@endsection
@section("javascript")


	<script type="text/javascript" src="{{ asset('assets/invoices/invoice.js') }}"></script>
	<script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $("#btn-find-by-tax-code").click(function(e) {
            e.preventDefault();
            var tax_code = $("#txt_tax_code").val();
			invoice.findByTaxCode(tax_code);
        });

	</script>

@endsection
