@extends('frontend.masterpage.masterpage')
@section('title')
      Register
@endsection
@section('content')
<div class="banner-top">
   <div class="container">
      <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Login</h2>
      <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Register</h3>
      <div class="clearfix"> </div>
   </div>
</div>
<!-- contact -->
<div class="login">
   <div class="container">
      <form method="POST">
         {{ csrf_field() }}
         <div class="login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
            <div class="login-mail">
               <input type="text" name="firstname" placeholder="Firstname" value="{{ old('firstname') }}">
               <i class="glyphicon glyphicon-envelope"></i>
               @if ($errors->has('firstname'))
                  <span class="help-block">
                        <strong style="color: red;">{{ $errors->first('firstname') }}</strong>
                  </span>
               @endif
            </div>
            <div class="login-mail">
               <input type="text" name="lastname" placeholder="Lastname" value="{{ old('lastname') }}">
               <i class="glyphicon glyphicon-envelope"></i>
               @if ($errors->has('lastname'))
                  <span class="help-block">
                        <strong style="color: red;">{{ $errors->first('lastname') }}</strong>
                  </span>
               @endif
            </div>
            <div class="login-mail">
               <input type="text" name="username" placeholder="Username" value="{{ old('username') }}">
               <i class="glyphicon glyphicon-envelope"></i>
               @if ($errors->has('username'))
                  <span class="help-block">
                        <strong style="color: red;">{{ $errors->first('username') }}</strong>
                  </span>
               @endif
            </div>
            <div class="login-mail">
               <input type="text" name="email" placeholder="Email" value="{{ old('email') }}">
               <i class="glyphicon glyphicon-envelope"></i>
               @if ($errors->has('email'))
                  <span class="help-block">
                        <strong style="color: red;">{{ $errors->first('email') }}</strong>
                  </span>
               @endif
            </div>
            <div class="login-mail">
               <input type="password" name="password" placeholder="Password" value="{{ old('password') }}">
               <i class="glyphicon glyphicon-envelope"></i>
               @if ($errors->has('password'))
                  <span class="help-block">
                        <strong style="color: red;">{{ $errors->first('password') }}</strong>
                  </span>
               @endif
            </div>
            <div class=" login-mail">
               <input type="password" name="password_confirmation" placeholder="Confirm password">
               <i class="glyphicon glyphicon-envelope"></i>
            </div>
            <button type="submit" style=" margin-right: 185px "class=" col-md-5 btn btn-primary">Register</button>
            <button type="submit" class=" col-md-5 btn btn-primary">Login</button>
         </div>
         
         <div class="clearfix"> </div>
      </form>
   </div>
</div>
@endsection