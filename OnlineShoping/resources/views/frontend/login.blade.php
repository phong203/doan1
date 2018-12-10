@extends('frontend.masterpage.masterpage')
@section('title')
      Login
@endsection
@section('content')
<div class="banner-top">
   <div class="container">
      <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Login</h2>
      <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Login</h3>
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
               <input name="username" type="text" placeholder="Username" value="{{ old('username') }}">
               <i class="glyphicon glyphicon-envelope"></i>
            </div>
            <div class="login-mail">
               <input name="password" type="password" placeholder="Password">
               <i class="glyphicon glyphicon-lock"></i>
            </div>
            
         </div>
         <div class="login-do animated wow fadeInRight" data-wow-delay=".5s">
            <span class="help-block">
                  <strong style="color: red;">{{ $errors->first() }}</strong>
            </span>
            <label class="hvr-sweep-to-top login-sub">
            <input type="submit" value="login">
            </label>
            <p>Do not have an account?</p>
            <a href="{{ url('register') }}" class="hvr-sweep-to-top">Signup</a>           
         </div>
         <div class="clearfix"> </div>
      </form>
   </div>
</div>
@endsection