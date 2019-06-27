@extends('layouts.layout')

@section('title', 'Lập Hóa Đơn')
@section('content')
	<div class="container-fluid"
		style="padding-right: 0px !important; padding-left: 0px !important;width: 98%">

		<div class="jumbotron-custom jumbotron-fluid">
			
				<h2 class="display-4">TÌM THEO MÃ SỐ THUẾ DOANH NGHIỆP</h2>
				<div class="row">
					<div class="col-4">
						<input type="text" class="form-control-custom size-text-id"
							id="exampleFormControlInput1">
					</div>
					<div class="col-2">
						<button type="submit" class="btn btn-save-craft">
							<i class="fas fa-search"></i> Truy xuất thông tin
						</button>
					</div>

				</div>
			
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
								<span class="badge badge-primary">0</span> <span
									class="badge badge-primary">3</span> <span
									class="badge badge-primary">0</span> <span
									class="badge badge-primary">2</span> <span
									class="badge badge-primary">6</span> <span
									class="badge badge-primary">0</span> <span
									class="badge badge-primary">1</span> <span
									class="badge badge-primary">9</span> <span
									class="badge badge-primary">4</span> <span
									class="badge badge-primary">5</span>
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Họ tên
								người mua hàng (Buyer)</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="staticEmail" value="">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tên
								Doanh nghiệp (Company Name) <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" readonly="false"
									class="form-control-plaintext" id="staticEmail"
									value="Công ty TNHH Dịch Vụ - Thương Mại A.T&amp;T">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Địa chỉ
								(Address) <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" class="form-control-plaintext"
									id="staticEmail"
									value="285 Lô 99 Cách Mạng Tháng Tám, Phường 12, Q.10">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tỉnh/Thành
								phố <span style="color: red;">*</span>
							</label>
							<div class="col-sm-3">
								<select class="form-control-plaintext" id="inputGroupSelect01">
									<option selected>TP.Hồ Chí Minh</option>
									<option value="1">TP.Hà Nội</option>
									<option value="2">TP.Cần Thơ</option>
									<option value="3">TP.Cà Mau</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Điện
								thoại (Tel) <span style="color: red;">*</span>
							</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="staticEmail" value="+84 (028) 38634980">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Email <span
								style="color: red;">*</span></label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="staticEmail" value="info@attvn.vn">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Số TK
								ngân hàng (A/C Bank Number)</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="staticEmail" value="">
							</div>
						</div>

						<div class="form-group row">
							<label for="staticEmail" class="col-sm-3 col-form-label">Tên ngân
								hàng (A/C Bank Name)</label>
							<div class="col-sm-9">
								<input type="text" readonly="" class="form-control-plaintext"
									id="staticEmail" value="">
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
@endsection
