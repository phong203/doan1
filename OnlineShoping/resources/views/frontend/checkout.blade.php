@extends('frontend.masterpage.masterpage')
@section('title')
    Check out
@endsection
@section('content')

    <div class="banner-top">
    <div class="container">
    <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Check out</h2>
    <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Check out</h3>
    <div class="clearfix"> </div>
    </div>
    </div>
    <!-- contact -->
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
 <table class="table animated wow fadeInLeft" data-wow-delay=".5s">
		  <tr>
			<th class="t-head head-it ">Item</th>
			<th class="t-head">Price</th>
			<th class="t-head">Quantity</th>
			<th class="t-head">Total</th>
		  </tr>
		  
		  
		  <tr class="cross2">
		  <td class="t-data ring-in"><a href="single.html" class="at-in"><img src="images/pcc1.jpg" class="img-responsive" alt=""></a>
			
				
		  </tr>
	</table>
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