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
                                <form method="POST" action="/dang-ky">
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
                                    <button type="submit" class="btn btn-sign">Đăng ký</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
