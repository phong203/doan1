@extends('backend.masterpage.masterpage')
@section('title')
      Admin
@endsection
@section('content')
	<!-- BEGIN CONTENT -->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb"> <a href="{{ asset ('/admin/product') }}" title="Go to Home" class="tip-bottom current"><i class="icon-home"></i> Home</a></div>
			<h1 style="text-align: center;"> Welcome to Admin page</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<div class="form-actions">
				<a href="{{ asset('/admin/category') }}" class="btn btn-info"><span>Categories</span></a>
				<a href="{{ asset('/admin/product') }}" class="btn btn-info"><span>Products</span></a>
				
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						
						<div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
							<h5>Users</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>User name</th>										
										<th>Adress</th>	
										
									</tr>
								</thead>
								<tbody>
									@foreach($users as $user)
										<tr user-id="{{ $user->Id }}">
											<td>{{ $user->Id }}</td>
											<td>{{ $user->Username }}</td>
											<th>{{ $user->Email }} </th>												
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTENT -->

@endsection
