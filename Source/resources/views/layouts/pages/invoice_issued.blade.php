@extends('layouts.layout')

@section('title', 'Xuất hóa đơn')

@section('content')

    <div class="jumbotron jumbotron-custom">
        <div class="container">
            <nav aria-label="breadcrumb ">
                <ol class="breadcrumb-custom">
                    <li class="breadcrumb-item"><a class="color-breadcrumb" href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a class="color-breadcrumb" href="#"><b>Hoá đơn đã phát hành</b></a></li>
                </ol>
            </nav>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="staticEmail" class="col-sm-3 col-form-label"><b>Mã tra cứu hoá đơn</b></label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control-plaintext" id="staticEmail" value="XXXXXXXXXXXXXXX6666">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="staticEmail" class="col-sm-3 col-form-label"><b>Mã số thuế</b></label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control-plaintext" id="staticEmail" value="985555545555">
                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="staticEmail" class="col-sm-2 col-form-label"><b>Tên đơn vị mua hàng</b></label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control-plaintext" id="staticEmail" value="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                    <button type="submit" class="btn btn-save-craft"><i class="fas fa-search"></i> Truy xuất thông tin</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="padding-right: 5px !important; padding-left: 5px !important;">
        <table class="table table-bordered table-hover table-center table-font-size">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Ngày phát hành</th>
                <th scope="col">Mã tra cứu</th>
                <th scope="col">Mẫu số</th>
                <th scope="col">Ký hiệu</th>
                <th scope="col">Số hoá đơn</th>
                <th scope="col">Tên khách hàng</th>
                <th scope="col">MST</th>
                <th scope="col">Tổng tiền</th>
                <th scope="col" class="td-center">Trạng thái</th>
                <th scope="col" colspan="4">Tác vụ</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ AT&T</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#" data-toggle="modal" data-target="#sendmessenger" title="Gửi hoá đơn qua email"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><a href="" data-toggle="modal" data-target="#messenger"><i style="color: red;" class="far fa-bell"></i></a></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH KIÊN GIANG COMPOSITE</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            <tr>
                <th scope="row">1</th>
                <td class="td-center">25/11/2018</td>
                <td class="td-center">88888888</td>
                <td class="td-center">01GTKT0/025</td>
                <td class="td-center">GP/17E</td>
                <td class="td-center">0000028</td>
                <td>CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ GIA LÊ GLOBAL</td>
                <td class="td-center">6300251710</td>
                <td class="td-right">999999999999</td>
                <td class="td-center">Đã phát hành</td>
                <!-- tac vu -->
                <td class="td-center"><a href="" data-toggle="modal" data-target="#exampleModalCenter"><i class="far fa-eye"></i></a></td>
                <td class="td-center"><a href="#"><i class="fas fa-envelope text-danger"></i></a></td>
                <td class="td-center"><i class="far fa-comment"></i></td>
                <td class="td-center"><i class="fas fa-flag text-danger" title="Hoá đơn chưa thanh toán"></i></td>

            </tr>
            </tbody>
        </table>


    </div>


    <!-- Modal Preview VAT -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg-custom" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-12" style="text-align: center;background-color: #b92b27;padding: 20px 20px 5px 20px; color: #ffffff;">
                                <h4><b>HOÁ ĐƠN ĐÃ PHÁT HÀNH</b></h4>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="background-color: #FAE6E8; margin-bottom: 2cm; padding-top: 10px; padding-bottom: 10px;">
                        <div class="row">
                            <div class="col-2 img-logo-size" style="background-image:url('/images/logo.jpg'); background-repeat: no-repeat;background-size: contain;background-position: top;"></div>
                            <div class="col-10 content-hd">
                                <h4>Công ty Cổ phần đầu tư công nghệ và thương mại SDS</h4>
                                <h6>Mã số thuế (Tax Code): 0 1 0 5 9 8 7 4 3 2 - 9 9 9</h6>
                                <h6>Địa chỉ (Address): Phòng 923, tòa nhà CT5, khu đô thị Sông Đà, Mễ Trì, Bắc Từ Liêm,
                                    Hà Nội</h6>
                                <h6>Điện thoại (Tel): 0164397527  - Fax: 03513824988</h6>
                                <h6>Email: tannamhai@gmail.com  - Website: mynghedaibai.com</h6>
                                <h6>Tài khoản (A/C Bank number): 14023967248013 Chi nhánh TECHCOMBANK Q5</h6>


                            </div>
                        </div>
                        <hr style="border-top: 1px dotted #8c8b8b;" />
                        <div class="row">

                            <div class="col" style="text-align: center !important;position:relative;">
                                <h2><b>HOÁ ĐƠN GIÁ TRỊ GIA TĂNG</b></h2>
                                <h5> (VAT Invoice)</h5>
                                <h6>Ngày 04 Tháng 10 Năm 2018</h6>

                                <div class="col-md-4 offset-md-8" style="position:absolute;top:0px;text-align: right;padding-right: 30px;">

                                    <h6>Mẫu số (Form): 01GTKT0/032</h6>
                                    <h6>Ký hiệu (Serial): AA/18E</h6>
                                    <h6>Số (No.): 0000036</h6>


                                </div>


                            </div>

                        </div>

                        <!--  <div class="row"> -->

                        <div class="row">
                            <label for="staticEmail" class="col-sm-3 col-form-label">Họ tên người mua hàng (Buyer):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="staticEmail" value="">
                            </div>
                        </div>
                        <div class="row">
                            <label for="inputPassword" class="col-sm-3 col-form-label">Tên đơn vị (Company name):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="companyName" value="Công ty TNHH MTV TMDV PAVIETNAM">
                            </div>
                        </div>

                        <div class="row">
                            <label for="inputPassword" class="col-sm-3 col-form-label">Địa chỉ (Address):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="address" value="Lô BIV, CI-10, Khu công nghiệp Tân Hương, Xã Tân Hương, Huyện Châu Thành, Tỉnh Tiền Giang, Việt Nam">
                            </div>
                        </div>

                        <div class="row">
                            <label for="inputPassword" class="col-sm-3 col-form-label">Mã số thuế (Tax Code):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" disabled="true" class="form-control-plaintext word-spacing-text" id="address" value="6300251710">
                            </div>
                        </div>

                        <div class="row">


                            <label for="inputPassword" class="col-sm-3 col-form-label">Số tài khoản (A/C Bank number):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="address" value="0095565644543">
                            </div>
                        </div>

                        <div class="row">
                            <label for="inputPassword" class="col-sm-3 col-form-label">Tại ngân hàng (Bank Name):</label>
                            <div class="col-sm-9 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="address" value="VietComBank Chi nhánh Trường Chinh, Quận Tân Bình, TP.HCM">
                            </div>
                        </div>

                        <div class="row">
                            <label for="inputPassword" class="col-sm-3 col-form-label">Hình thức thanh toán (Payment by):</label>
                            <div class="col-sm-3 border-bottom-content">
                                <input type="text" class="form-control-plaintext" id="address" value="CK/TM">
                            </div>
                        </div>

                        <div class="row" style="background-image:url('/images/Temp1.png'); background-repeat: no-repeat; background-position: center;background-size: auto;margin-top: 20px;">
                            <div class="col">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr style="text-align: center;">
                                        <th scope="col" style="width:35px">STT <br /> (No.)</th>
                                        <th scope="col">Tên hàng hóa, dịch vụ <br /> (Items description)</th>
                                        <th scope="col">Đơn vị tính<br /> (Unit)</th>
                                        <th scope="col">Số lượng<br /> (Quantity)</th>
                                        <th scope="col">Đơn giá<br /> (Price)</th>
                                        <th scope="col">Thành tiền<br /> (Amount)</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">1</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">2</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">3</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>

                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">4</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">5</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width: 35px">6</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width:35px">7</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width: 35px">8</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width: 35px">9</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="form-align-center col-identify" style="width: 35px">10</th>
                                        <td>Từ Trung Hòa đến Công ty Dụ Đức</td>
                                        <td class="form-align-center">Chiếc</td>
                                        <td class="form-align-center">2</td>
                                        <td class="col-align-right-sum">20.800.000</td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" class="col-align-right-sum"><b>Cộng tiền hàng (Total Amount):</b></td>
                                        <td class="col-align-right-sum">41.600.000</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="col-align-right-sum"><b>Thuế suất GTGT (Tax Rate):</b> 10%</td>

                                        <td colspan="3" class="col-align-right-sum"><b>Tiền thuế GTGT (Total Tax):</b></td>

                                        <td class="col-align-right-sum">4.160.000</td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" class="col-align-right-sum"><b>Tổng cộng tiền thanh toán (Invoice Total):</b></td>
                                        <td class="col-align-right-sum">45.600.000</td>
                                    </tr>
                                    <tr>

                                        <td colspan="2" class="col-align-right-sum" style="vertical-align: middle;"><b>Số tiền viết bằng chữ (Amount in word):</b></td>
                                        <td colspan="6">Chín mươi chín tỷ chín trăm chín mươi chín triệu chín trăm chín mươi chín nghìn đồng.</td>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="row" style="min-height: 200px;">
                            <div class="col form-align-center">
                                <b>Người mua hàng</b>
                                <small></small>
                            </div>
                            <div class="col form-align-center">
                                <b>Người bán hàng</b>
                                <small></small>
                            </div>
                        </div>
                        <div class="row" style="text-align: center;color: #d93025;">
                            <div class="col-12">
    <span style="font-size: 0.7rem;">
        <b>Đăng nhập tra cứu tại: https://hdgtgt.com/hd | Mã tra cứu: 999999999</b><br>
        <b>Cung cấp giải pháp hệ thống: Công ty TNHH MTV Quảng Cáo- Thương mại Nam Phuong - MST: 0309234853</b>
    </span>
                            </div>
                        </div>
                    </div>
                    <div class="container my-3 p-3 bg-white rounded shadow-sm">

                        <div class="row justify-content-center">
                            <div class="col-4">

                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Hoá đơn chưa thanh toán</label>
                                </div>

                            </div>

                            <div class="col-8" style="text-align: right;">
                                <button type="button" class="btn btn-save-craft"><i class="fas fa-print"></i> In</button>
                                <button type="button" class="btn btn-save-craft"><i class="far fa-file-pdf"></i> Tải về (.pdf)</button>
                                <button type="button" class="btn btn-save-craft"><i class="fas fa-file-signature"></i> Tải về (.xml)</button>
                                <button type="button" class="btn btn-accept" data-toggle="modal" data-target="#exampleModalCenter1"><i class="fas fa-ban"></i> Huỷ hoá đơn</button>
                                <button type="button" class="btn btn-save-craft"><i class="fas fa-times"></i> Đóng lại</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Tải biên bản huỷ hoá đơn</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">

                            <input type="file" class="form-control-file" id="exampleFormControlFile1">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Huỷ hoá đơn</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Messenger -->
    <div class="modal fade" id="messenger" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title" id="exampleModalLabel"><b>THÔNG BÁO TỪ KHÁCH HÀNG</b></h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="container">
                            <span class="time-right" style="font-weight: bold; color: #b92b27;">ATTVN | 12/02/2019 11:02</span>
                            <p>Tôi muốn bỏ giá trị tấm kim loại được không ? không cần xuất hoá đơn cho kim loại</p>
                        </div>
                        <hr/>
                        <div class="container">
                            <span style="font-weight: bold; color: #b92b27;">KGC | 12/02/2019 11:02</span>
                            <p>Dạ, được ạ, để em xuất lại cho a, và gửi lại cho a kiểm tra nhé.</p>
                        </div>
                        <hr/>
                        <div class="container">
                            <span class="time-right" style="font-weight: bold; color: #b92b27;">ATTVN | 12/02/2019 11:02</span>
                            <p>OK, Thanks em.</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1"><b>Gửi tin nhắn cho khách hàng:</b></label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-accept">Gửi tin nhắn</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal  email-->
    <div class="modal fade" id="sendmessenger" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title" id="exampleModalLabel"><b>GỬI THÔNG TIN HOÁ ĐƠN CHO KHÁCH HÀNG</b></h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Email người nhận:</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="example@hdgtgt.com">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-save-craft">Gửi</button>
                </div>
            </div>
        </div>
    </div>

@endsection