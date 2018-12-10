@extends('frontend.masterpage.masterpage')
@section('title')
      Contact
@endsection
@section('content')
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Contact</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Contact</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
<div class="contact">
	<div class="container">
		<div class="col-md-8 contact-grids1 animated wow fadeInRight" data-wow-delay=".5s">
			<form method="POST">
				{{ csrf_field() }}
				<div class="contact-form2">
					<h4>Name</h4>
					<input name="name" type="text" placeholder="" required="" value="{{ old('name') }}">
				</div>
				<div class="contact-form2">
					<h4>Email</h4>
					<input name="email" type="email" placeholder="" required="" value="{{ old('email') }}">
				</div>
				<div class="contact-form2">
					<h4>Subject</h4>
					<input name="subject" type="text" placeholder="" required="" value="{{ old('subject') }}">
				</div>
				<div class="contact-me ">
					<h4>Message</h4>
					<textarea name="message" type="text"  placeholder="">{{ old('message') }}</textarea>
				</div>
				<input type="submit" value="Submit" >
				<span class="help-block">
					<strong style="color: red;">{{ $errors->first() }}</strong>
				</span>
			</form>
		</div>
		<div class="col-md-4 contact-grids">
			<div class=" contact-grid animated wow fadeInLeft" data-wow-delay=".5s">
				<div class="contact-grid1">
					<div class="contact-grid2 ">
						<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
					</div>
					<div class="contact-grid3">
						<h4>Address</h4>
						<p>53 Vo Van Ngan,Thu Duc <span>Ho Chi Minh City.</span></p>
					</div>
				</div>
			</div>
			<div class=" contact-grid animated wow fadeInUp" data-wow-delay=".5s">
				<div class="contact-grid1">
					<div class="contact-grid2 contact-grid4">
						<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
					</div>
					<div class="contact-grid3">
						<h4>Call Us</h4>
						<p>+84 167 670 3807<span>+84 964 712 096 </span></p>
					</div>
				</div>
			</div>
			<div class=" contact-grid animated wow fadeInRight" data-wow-delay=".5s">
				<div class="contact-grid1">
					<div class="contact-grid2 contact-grid5">
						<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
					</div>
					<div class="contact-grid3">
						<h4>Email</h4>
						<p><a href="contactto:info@example.com">slunusi@gmail.com</a><span><a href="contactto:info@example.com">thanhhuong290897@gmail.com</a></span></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="map">
	<iframe class="animated wow fadeInLeft" data-wow-delay=".5s" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3019.9579945977393!2d-73.87657738464283!3d40.806916839740346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f510a78ff341%3A0xe5b1e682c2e91238!2sNYS+Agriculture+%26+Markets!5e0!3m2!1sen!2sin!4v1456403781501" frameborder="0" style="border:0" allowfullscreen></iframe>
</div >
<!-- //contact -->
@endsection