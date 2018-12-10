<div class="header">
			<div class="header-grid">
				<div class="container">
					<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
						<ul>
							<li><i class="glyphicon glyphicon-headphones"></i><a href="#">Hỗ trợ 24/24</a></li>
							<li><i class="glyphicon glyphicon-envelope" ></i><a href="cd15tt5@gmail.com">cd15tt5@gmail.com</a></li>
							<li><i class="glyphicon glyphicon-earphone" ></i>0965764694</li>
						</ul>
					</div>
					<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
						<div class="header-right1 ">
							<ul>
						<?php
							use App\Utils;

							if (Utils::userLogged())
							{
								$user = Utils::getUser();
								?>
								<li><i class="glyphicon glyphicon-book" ></i><a href="{{ url('profile') }}">{{ $user->Firstname . ' ' . $user->Lastname }}</a></li>
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="{{ url('logout') }}">Logout</a></li>
								<?php
							}
							else
							{
							?>
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="{{ url('login') }}">Đăng Nhập</a></li>
								<li><i class="glyphicon glyphicon-book" ></i><a href="{{ url('register') }}">Đăng ký</a></li>
							<?php
							}
						?>	
							</ul>
						</div>
						<div class="header-right2">
							<div class="cart box_1">
								<a href="{{ url('checkout') }}">
									<h3>
										<div class="total">
											<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> Giỏ hàng)
										</div>
										<img src="{{ asset ('images/cart.png') }}" alt="" />
									</h3>
								</a>
								
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="container">
				<div class="logo-nav">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header nav_2">
							<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							</button>
							<div class="navbar-brand logo-nav-left ">
								<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="{{ asset('/') }}">Online<span>Shoping</span></a></h1>
							</div>
							
						</div>
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav">
								<li class="active"><a href="{{ asset('/') }}" class="act">Trang chủ</a></li>
								<?php
									use App\Category;
									$categoryObj = new Category();
									$categories = $categoryObj->getCategory();
								?>
								@foreach ($categories as $category)
								<li class="dropdown">
									<?php $subCategories = $category->childs; ?>
									@if(count($subCategories) == 0)
										<a href="{{ asset('category/' . $category->Id) }}">{{ $category->Name }}</a>
									@else
									<a class="dropdown-toggle" data-toggle="dropdown">{{ $category->Name }}<b class="caret"></b></a>
									<ul class="dropdown-menu multi">
										<ul class="multi-column-dropdown">
											<h6>Categories</h6>
											@foreach ($subCategories as $subCategory)
											<li><a href="{{ asset('category/' . $subCategory->Id) }}">{{ $subCategory->Name }}</a></li>
											@endforeach
										</ul>
										<div class="clearfix"></div>
									</ul>
									@endif
								</li>
								@endforeach

							
								
							</ul>
						</div>
					</nav>
				</div>
			</div>
    <div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
						<div class="header-right1 ">
    <div class="box">
  <div class="container-1">
      <span class="icon"><i class="fa fa-search"></i></span>
      <input type="search" id="search" placeholder="Search..." />
  </div>
</div>
		</div>
    </div>