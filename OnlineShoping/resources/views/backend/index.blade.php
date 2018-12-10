@extends('backend.masterpage.masterpage')
@section('title')
      Products
@endsection
@section('content')
	<!-- BEGIN CONTENT -->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb"> <a href="{{ asset('/admin/product') }}" title="Go to Home" class="tip-bottom current"><i class="icon-home"></i> Home</a></div>
			<h1>Manage Products</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
							<h5>New Products</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>										
										<th>Category</th>
										<th>Price</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									@foreach($products as $product)
										<tr product-id="{{ $product->Id }}">
											<td>{{ $product->Id }}</td>
											<td>{{ $product->Name }}</td>
											<th>{{ $product->category->Name }} </th>
											<th>{{ $product->PriceVN() }}</th>
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
