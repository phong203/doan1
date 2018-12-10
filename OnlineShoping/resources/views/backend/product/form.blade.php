@extends('backend.masterpage.masterpage')
@section('content')
	<!-- BEGIN CONTENT -->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb"> <a href="{{ asset ('/admin') }}" title="Go to Home" class="tip-bottom current"><i class="icon-home"></i> Home</a></div>
			<h1>Manage Products</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Product-info</h5>
						</div>
						<div class="widget-content nopadding">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
								{{ csrf_field() }}
								<?php
									use App\Kind;
									use App\Category;
									$categories = Category::all();
									$kinds = Kind::all();
								?>
								<div class="control-group">
									<label class="control-label">Name :</label>
									<div class="controls">
										<input name="name" type="text" class="span11" placeholder="Name" value="{{ old('name') }}" /> *
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Category:</label>
									<div class="controls">
										<select name="category" value="{{ old('category') }}"/>
										@foreach ($categories as $category)	
											<option value="{{ $category->Id }}">{{ $category->Name }}</option>
										@endforeach
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Price :</label>
									<div class="controls">
										<input name="price" type="text" class="span11" placeholder="Price" value="{{ old('price') }}" /> *
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Kind ID :</label>
									<div class="controls">
										<select name="kind" value="{{ old('kind') }}"/>
										@foreach ($kinds as $kind)	
											<option value="{{ $kind->Id }}">{{ $kind->Name }}</option>
										@endforeach
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Description: </label>
									<div class="controls">
										<textarea name="description" class="span11">{{ old('description') }}</textarea>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Specification: </label>
									<div class="controls">
										<textarea name="specification" class="span11">{{ old('specification') }}</textarea>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Image: </label>
									<div class="controls">
										<label class="btn btn-default btn-file">
											Browse <input name="product_image" type="file" style="display: none;">
										</label>
									</div>
								</div>
								<span class="help-block">
									<strong style="color: red;">{{ $errors->first() }}</strong>
								</span>
								<div class="form-actions">
									<button type="submit" class="btn btn-success">Create</button>
								</div>
								
							</form>
							<!-- END USER FORM -->


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END CONTENT -->
@endsection