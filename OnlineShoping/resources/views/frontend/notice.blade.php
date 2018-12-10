@extends('frontend.masterpage.masterpage')
@section('title')
    Welcome
@endsection
@section('content')

    <div class="banner-top">
    <div class="container">
    <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Welcome</h2>
    <div class="clearfix"> </div>
    </div>
    </div>
    <!-- contact -->
    <div class="check-out">	 
    <div class="container">	 

        <script>$(document).ready(function(c) {
            $('.close1').on('click', function(c){
                $('.cross').fadeOut('slow', function(c){
                    $('.cross').remove();
                });
                });	  
            });
        </script>
    <script>$(document).ready(function(c) {
            $('.close2').on('click', function(c){
                $('.cross1').fadeOut('slow', function(c){
                    $('.cross1').remove();
                });
                });	  
            });
        </script>	
        <script>$(document).ready(function(c) {
            $('.close3').on('click', function(c){
                $('.cross2').fadeOut('slow', function(c){
                    $('.cross2').remove();
                });
                });	  
            });
        </script>	
        <h1 style="    color: blue;font-size: 3em;font-style: italic;text-align: center;">Bạn đã đăng ký thành công! Mời bạn đăng nhập...</h1>

    </div>
    </div>
                <!--quantity-->
    <script>
    $('.value-plus').on('click', function(){
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
        if(newVal>=1) divUpd.text(newVal);
    });
    </script>
<!--quantity-->
@endsection	