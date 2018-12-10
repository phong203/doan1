@extends('backend.masterpage.masterpage')
@section('title')
      Categories
@endsection
@section('content')
	<!-- BEGIN CONTENT -->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb"> <a href="{{ asset ('/admin') }}" title="Go to Home" class="tip-bottom current"><i class="icon-home"></i> Home</a></div>
			<h1>Manage Categories</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<a href="{{ asset('/admin/category/add') }}" class="btn btn-success">New category</a>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						
						<div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
							<h5>Category</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>										
										<th>Parent</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									@foreach($categories as $category)
										<tr product-id="{{ $category->Id }}">
											<td>{{ $category->Id }}</td>
											<td>{{ $category->Name }}</td>
											<th>
											@if ($category->parent == null)
												{{ '[Thư mục chính]' }}
											@else
											 	{{ $category->parent->Name }}
											@endif
											</th>
											
										<td>
											<div class="btn-edit btn btn-success btn-mini">Edit</div>
											<div class="btn-delete btn btn-danger btn-mini">Delete</div>
										</td>
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
