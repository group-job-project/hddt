<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
    <a class="navbar-brand mr-lg-0" href="#"><b>A.T&T</b> </a>
    <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#" title="Profile"><i class="fas fa-info-circle"></i> Thông tin doanh nghiệp</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="https://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cài đặt hoá đơn</a>
                <div class="dropdown-menu" aria-labelledby="dropdown01">
                    <a class="dropdown-item" href="#">Khởi tạo & khai báo mẫu hoá đơn</a>
                    <a class="dropdown-item" href="#">Kích hoạt sử dụng mẫu hoá đơn</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="dropdown044" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tình hình sử dụng hoá đơn</a>
                <div class="dropdown-menu" aria-labelledby="dropdown044">
                    <a class="dropdown-item" href="#">Tình hình sử dụng và mua hoá đơn</a>
                    <a class="dropdown-item" href="#">Lịch sử mua & nhận hoá đơn</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="dropdown045" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản phẩm dịch vụ</a>
                <div class="dropdown-menu" aria-labelledby="dropdown045">
                    <a class="dropdown-item" href="#">Nhập sản phẩm dịch vụ</a>
                    <a class="dropdown-item" href="#">Danh mục sản phẩm dịch vụ</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="dropdown046" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tiện ích</a>
                <div class="dropdown-menu" aria-labelledby="dropdown046">
                    <a class="dropdown-item" href="#">Thư mục mẫu hoá đơn</a>
                    <a class="dropdown-item" href="#">Hỗ trợ trực tuyến </a>
                    <a class="dropdown-item" href="#">Cài đặt teamviwer</a>
                    <a class="dropdown-item" href="#">Zalo: 0941 xxx </a>
                    <a class="dropdown-item" href="#">Tài liệu hướng dẫn </a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    {{ __('Thoát') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </li>
        </ul>
    </div>
</nav>