@extends('frontend.masterpage.masterpage')
@section('title')
      Product
@endsection
@section('content')
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Products</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Product<label>/</label>{{ $product->Name }}</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!--content-->
<div class="product">
<div class="container">
	
	<div class="col-md-13 animated wow fadeInRight" data-wow-delay=".5s">
		<div class="col-md-5 grid-im">
			<div class="flexslider">
				<ul class="slides">
					<li data-thumb="images/si2.jpg">
						<div class="thumb-image"> <img src="{{ asset($product->Image) }}" data-imagezoom="true" class="img-responsive"> </div>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-md-7 single-top-in">
			<div class="span_2_of_a1 simpleCart_shelfItem">
				<h3>{{ $product->Name }}</h3>
				<p class="in-para">{{ $product->Description }}</p>
				<div class="price_single">
					<span class="reducedfrom item_price">{{ $product->PriceVN() }}</span>
					<a href="{{ url('checkout') }}" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!----- tabs-box ---->
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
					</ul>
					<div class="resp-tabs-container">
						<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2>
						<div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
							<div class="facts">
								<p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration </p>
								<!--<ul>
									<li>Research</li>
									<li>Design and Development</li>
									<li>Porting and Optimization</li>
									<li>System integration</li>
									<li>Verification, Validation and Testing</li>
									<li>Maintenance and Support</li>
								</ul> -->
								<p>{{ $product->Specification }}</p>
							</div>
						</div>
						<h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="facts1">
								<div class="color">
									<p>Color</p>
									<span >Blue, Black, Red</span>
									<div class="clearfix"></div>
								</div>
								<div class="color">
									<p>Size</p>
									<span >S, M, L, XL</span>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="comments-top-top">
								<div class="top-comment-left">
									<img class="img-responsive" src="images/co.png" alt="">
								</div>
								<div class="top-comment-right">
									<h6><a href="#">Hendri</a> - September 3, 2014</h6>
									<p>Wow nice!</p>
								</div>
								<div class="clearfix"> </div>
								<a class="add-re" href="single">Add Review</a>
							</div>
						</div>
					</div>
				</div>
				<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
					    $('#horizontalTab').easyResponsiveTabs({
					        type: 'default', //Types: default, vertical, accordion           
					        width: 'auto', //auto or any width like 600px
					        fit: true   // 100% fit in a container
					    });
					});
				</script>	
				<!---->
			</div>
			</div class="clearfix">
		</div>
	</div>
</div>
<!--//products-->
@endsection