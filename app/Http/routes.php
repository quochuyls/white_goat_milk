<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::group([
	'prefix' => LaravelLocalization::setLocale(),
	'middleware' => ['localize']
], function () {

	//Route::get('/', 'WelcomeController@index');

	//Route::get('home', 'HomeController@index');

	Route::controllers([
		'auth' => 'Auth\AuthController',
		'password' => 'Auth\PasswordController',
	]);


	Route::resource('service', 'ServiceController');

	Route::get('/',
		[
			'as' => 'home',
			'uses' => 'ServiceController@index'
		]
	);

	Route::get('/dich-vu/nong-trai-giao-duc.html',
		[
			'as' => 'service.edu',
			'uses' => 'ServiceController@serviceEdu'
		]
	);
	Route::get('dich-vu/du-lich-thuc-nghiem.html',
		[
			'as' => 'service.experiment',
			'uses' => 'ServiceController@serviceExperiment'
		]);

	Route::get('dich-vu/thuc-pham-nong-trai.html',
		[
			'as' => 'service.food',
			'uses' => 'ServiceController@serviceFood'
		]
	);

	Route::get('/gioi-thieu.html',
		[
			'as' => 'introduction',
			'uses' => 'IntroductionController@show'
		]
	);

	Route::get('/khach-hang.html',
		[
			'as' => 'customer',
			'uses' => 'CustomerController@index'
		]
	);

	Route::get('/su-kien-farm.html',
		[
			'as' => 'event.farm',
			'uses' => 'EventFarmController@index'
		]
	);

	Route::get('/lien-he.html',
		[
			'as' => 'contact',
			'uses' => 'ContactController@index'
		]
	);

	Route::get('/calendar.html',
		[
			'as' => 'calendar',
			'uses' => 'CalendarController@index'
		]
	);

	Route::get('/su-kien-khach-hang/thang/{month}/nam/{year}',
		[
			'as' => 'calendar.show',
			'uses' => 'CalendarController@show'
		]
	);

	Route::get('/su-kien-farm/{id}/{slug}.html',
		[
			'as' => 'event-farm.show',
			'uses' => 'EventFarmController@show'
		]);

	Route::get('datsua.html',
		[
			'as' => 'order',
			'uses' => 'ProductController@index'
		]
	);
	Route::get('video.html',
		[
			'as' => 'video',
			'uses' => 'VideoController@index'
		]
	);

	Route::get('/video/{id}/{slug}.html', [
		'as' => 'video.show',
		'uses' => 'VideoController@show',
	]);

	Route::get('/dat-sua/{id}/{slug}.html', [
		'as' => 'product.show',
		'uses' => 'ProductController@show',
	]);

	Route::post('/dat-sua/them-vao-gio-hang.html', [
		'as' => 'product.addOrder',
		'uses' => 'ProductController@addOrder',
	]);

	Route::get('/dat-sua/them-vao-gio-hang.html', [
		'as' => 'product.addOrder',
		'uses' => 'ProductController@addOrder',
	]);

	Route::get('/dat-sua/huy-bo-order-san-pham/{id}', [
		'as' => 'product.delOrderProduct',
		'uses' => 'ProductController@delOrderProduct',
	]);

	Route::get('/dat-sua/thong-tin-dat-hang.html', [
		'as' => 'product.orderInfo',
		'uses' => 'ProductController@orderInfo',
	]);

	Route::post('/dat-sua/thong-tin-dat-hang.html', [
		'as' => 'product.orderInfo',
		'uses' => 'ProductController@orderInfo',
	]);

	Route::get('/dat-hang/{id}/{token}.html', [
		'as' => 'order.confirm',
		'uses' => 'ProductController@orderConfirm',
	]);

	Route::get('/dat-hang-hoan-thanh.html', [
		'as' => 'product.complete',
		'uses' => 'ProductController@completeOrder',
	]);
});
