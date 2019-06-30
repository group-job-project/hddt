@extends('auth.layout')

@section('content')
    <div class="container-fluid">
        <!-- Logo -->
        <div class="row">
            <div class="col">
                <div class="block_logo">
                    <div class="logo">
                        <a href="#">THUESO</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Block Input-->
        <div class="container">
            <div class="d-flex justify-content-center d-flex-margin">
                <div class="row">
                    <div class="col">
                        <div class="block_login">
                            <h3>Hệ thống quản lý hoá đơn</h3>
                            <div class="signOnCreds">
                                <form method="POST" action="/dang-nhap">
                                    @csrf
                                    <div class="form-group">
                                        <input id="taxcode" type="text" class="form-control form-control-lg @error('taxcode') is-invalid @enderror" name="taxcode" value="{{ old('taxcode') }}" required autocomplete="taxcode" autofocus placeholder="Mã số thuế...">
                                        @error('taxcode')
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <input id="password" type="password" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" required autocomplete="Mật khẩu" placeholder="Mật khẩu...">
                                        @error('password')
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Ghi nhớ đăng nhập') }}
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-sign">Đăng nhập</button>
                                </form>
                                <!-- lost password -->
{{--                                @if (Route::has('password.request'))--}}
{{--                                    <a class="btn btn-link" href="{{ route('password.request') }}">--}}
{{--                                        {{ __('Quên mật khẩu ?') }}--}}
{{--                                    </a>--}}
{{--                                @endif--}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Send Request -->
            <div class="d-flex justify-content-center d-flex-margin">
                <div class="row">
                    <div class="col">
                        <div class="block_login">
                            <h3>Bạn chưa có tài khoản ?</h3>
                            <div class="signOnCreds">
                                <form autocomplete="off">
                                    <button type="button" class="btn btn-sign-new">Liên hệ với chúng tôi</button>
                                </form>
                                <div class="term-of-use">
                                    <ul>
                                        <li>
                                            <a href="#">© NMP </a>
                                        </li>
                                        <li>
                                            <a href="#">Điều khoản sử dụng</a>
                                        </li>
                                        <li>
                                            <a href="#">Chính sách bảo mật</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="ss-modal-lost-password"></section>
@endsection
