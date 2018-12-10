<!DOCTYPE html>
<html>
	<head>
		@include('frontend.masterpage.head')
	</head>
	<body>
		<!-- header -->
		@include('frontend.masterpage.header')
		<!-- //header -->

		<!--content-->
		@yield('content')
		<!-- //content-->

		<!--footer-->
		@include('frontend.masterpage.footer')
		<!-- //footer -->
	</body>
</html>