@extends('crudbooster::admin_template')
@section('content')

<div class="box box-primary">

	<div class="box-body">
		

		<form class="form-horizontal" method="post" action="{{route('postChangePassword')}}">
			
			{{ csrf_field() }}

			<!-- Password input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="old_password">Old Password</label>
			  <div class="col-md-4">
			    <input id="old_password" name="old_password" type="password" placeholder="" class="form-control input-md" required="">
			    
			  </div>
			</div>

			<!-- Password input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="password">New Password</label>
			  <div class="col-md-4">
			    <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">
			    
			  </div>
			</div>

			<!-- Password input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="password_confirmation">Confirm Password</label>
			  <div class="col-md-4">
			    <input id="password_confirmation" name="password_confirmation" type="password" placeholder="" class="form-control input-md" required="">
			    
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="btn-submit"></label>
			  <div class="col-md-4">
			    <button id="btn-submit" name="btn-submit" class="btn btn-primary">Submit</button>
			  </div>
			</div>

		</form>

		

	</div>
	
</div>

@endsection