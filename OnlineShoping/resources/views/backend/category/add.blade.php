@extends('backend.masterpage.masterpage')
@section('title')
    Edit
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
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Category-info</h5>
						</div>
						<div class="widget-content nopadding">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
								{{ csrf_field() }}
								<?php
									use App\Category;
									$categories = Category::where('ParentId', 0)->get();
								?>
								<div class="control-group">
									<label class="control-label">Name :</label>
									<div class="controls">
										<input name="name" type="text" class="span11" placeholder="Name" value="{{ old('name') }}"/> *
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Parent category:</label>
									<div class="controls">
										<select name="category" value="{{ old('category', 0) }}"/>
											<option value="0">[Thư mục chính]</option>
										@foreach ($categories as $category)	
											<option value="{{ $category->Id }}">{{ $category->Name }}</option>
										@endforeach
										</select>
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