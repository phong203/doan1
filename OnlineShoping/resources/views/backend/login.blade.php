<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login</title>

    <!-- Bootstrap CSS -->    
    <link href="{{ URL::asset('public_backend/public-index/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="{{ URL::asset('public_backend/public-index/css/bootstrap-theme.css') }}" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="{{ URL::asset('public_backend/public-index/css/elegant-icons-style.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('public_backend/public-index/css/font-awesome.css') }}" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="{{ URL::asset('public_backend/public-index/css/style.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('public_backend/public-index/css/style-responsive.css') }}" rel="stylesheet" />

   
</head>

  <body class="login-img3-body">

    <div class="container">

      <form method="POST" class="login-form" >    
        {{ csrf_field() }}    
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input name="username" type="text" class="form-control" placeholder="Email or Username" value="{{ old('username') }}">
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input name="password" type="password" class="form-control" placeholder="Password" value="">
            </div>
            <span class="help-block">
                  <strong style="color: red;">{{ $errors->first() }}</strong>
            </span>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Đăng Nhập</button>
        </div>
      </form>
    <div class="text-right">
            
        </div>
    </div>


  </body>
</html>
