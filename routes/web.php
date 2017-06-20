<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('symlink', function(){


	echo ('Checking public/uploads symlink...<br>');  
	if(file_exists(public_path('uploads'))) {          
	    $uploadPath = public_path('uploads');
	    echo ('Upload Path: '.$uploadPath);        
	    if(realpath($uploadPath) == $uploadPath) {
	        echo ('Remove the existing uploads dir, and create a symlink for it...');                                                                     
	            rrmdir(public_path('uploads'));
	            app('files')->link(storage_path('app'), public_path('uploads'));              
	    }
	}else{
	    echo ('Creating public/uploads symlink...<br>');  
	    app('files')->link(storage_path('app'), public_path('uploads'));
	}


	//Crate symlink for assets
	echo ('Checking public/vendor/crudbooster symlink...<br>');  
	if(file_exists(public_path('vendor'.DIRECTORY_SEPARATOR.'crudbooster'))) {                      
	    $vendorpath = public_path('vendor'.DIRECTORY_SEPARATOR.'crudbooster');
	    echo ('Vendor Path: '.$vendorpath) . '<br>';   
	    if(realpath($vendorpath) == $vendorpath) {                      
	        echo ('Removing public/vendor/crudbooster dir, instead of creating a symlink...');                               
	            rrmdir(public_path('vendor'.DIRECTORY_SEPARATOR.'crudbooster'));
	            app('files')->link(base_path().'/vendor/crocodicstudio/crudbooster/src/assets', public_path('vendor/crudbooster'));
	    }            
	}else{            
	    echo ('Creating public/vendor/crudbooster symlink...<br>');  
	    app('files')->link(base_path().'/vendor/crocodicstudio/crudbooster/src/assets',public_path('vendor/crudbooster'));
	}

	echo 'Symlinks generated successfully<br>';

});

Route::group(['middleware'=>['web','\crocodicstudio\crudbooster\middlewares\CBBackend'],'prefix'=>config('crudbooster.ADMIN_PATH')], function () {
				
	Route::get('opd_visits/{id}/print', 'AdminOpdVisitsController@print_visit');

});
