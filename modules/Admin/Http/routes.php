<?php

Route::group(['prefix' => 'admin', 'namespace' => 'Modules\Admin\Http\Controllers'], function()
{
	Route::get('/', 'AdminController@index');

	// Banner
    Route::get('banner-icon/banner', 'BannerController@banner');
	Route::post('banner-icon/banner-upload', 'BannerController@uploadBanner');
    Route::get('banner', 'BannerController@index');

	Route::get('banner-icon/service-edu', 'BannerController@serviceEdu');
	Route::post('banner-icon/upload-service-edu', 'BannerController@uploadServiceEdu');

	Route::get('banner-icon/service-experiment', 'BannerController@serviceExperiment');
	Route::post('banner-icon/upload-service-experiment', 'BannerController@uploadServiceExperiment');

	Route::get('banner-icon/service-food', 'BannerController@serviceFood');
	Route::post('banner-icon/upload-service-food', 'BannerController@uploadServiceFood');

	Route::get('banner-icon/introduct', 'BannerController@introduct');
	Route::post('banner-icon/upload-introduct', 'BannerController@uploadIntroduct');

	Route::get('banner-icon/customer', 'BannerController@customer');
	Route::post('banner-icon/upload-customer', 'BannerController@uploadCustomer');

	// Service
	Route::get('service/view/{type}', 'ServiceController@view');
	Route::get('service/update/{type}', 'ServiceController@update');
	Route::post('service/update/{type}', 'ServiceController@update');

	// Introduction
	Route::get('introduction/view', 'IntroductionController@view');
	Route::get('introduction/update', 'IntroductionController@update');
	Route::post('introduction/update', 'IntroductionController@update');

	// Customer
	Route::get('customer/list', 'CustomerController@index');
	Route::get('customer/create', 'CustomerController@createCustomer');
	Route::post('customer/create', 'CustomerController@createCustomer');
	Route::get('customer/update/{id}', 'CustomerController@updateCustomer');
	Route::post('customer/update/{id}', 'CustomerController@updateCustomer');
	Route::get('customer/view/{id}', 'CustomerController@viewCustomer');
	Route::get('customer/delete/{id}', 'CustomerController@deleteCustomer');

	// Event Farm
	Route::get('event-farm/list', 'EventFarmController@index');
	Route::get('event-farm/create', 'EventFarmController@createEvent');
	Route::post('event-farm/create', 'EventFarmController@createEvent');
	Route::get('event-farm/update/{id}', 'EventFarmController@updateEvent');
	Route::post('event-farm/update/{id}', 'EventFarmController@updateEvent');
	Route::get('event-farm/view/{id}', 'EventFarmController@viewEvent');
	Route::get('event-farm/delete/{id}', 'EventFarmController@deleteEvent');

	// Event Customer
	Route::get('event-customer/list', 'EventCustomerController@index');
	Route::get('event-customer/create', 'EventCustomerController@createEvent');
	Route::post('event-customer/create', 'EventCustomerController@createEvent');
	Route::get('event-customer/update/{id}', 'EventCustomerController@updateEvent');
	Route::post('event-customer/update/{id}', 'EventCustomerController@updateEvent');
	Route::get('event-customer/view/{id}', 'EventCustomerController@viewEvent');
	Route::get('event-customer/delete/{id}', 'EventCustomerController@deleteEvent');

	//Contact
	Route::get('contact/view', 'ContactController@view');
	Route::get('contact/update', 'ContactController@update');
	Route::post('contact/update', 'ContactController@update');

	//Route::get('auth', 'Auth\AuthController@index');
	Route::group(['namespace' => 'Auth'], function(){
		Route::controllers([
				'auth' => 'AuthController',
				'password' => 'PasswordController'
		]);
	});
	/* Authentincation and */

	Route::get('login', 'Auth\AuthController@getLogin');
	Route::get('logout', 'Auth\AuthController@getLogout');

	Route::get('auth', 'Auth\AuthController@getLogin');
	Route::post('auth', 'Auth\AuthController@postLogin');

	Route::get('register', 'Auth\AuthController@getRegister');
	Route::post('register', 'Auth\AuthController@postRegister');

	/* Products  */
	Route::resource('product', 'ProductsController');
	Route::get('delete/{id}',
		['as' => 'admin.product.delete',
		'uses' => 'ProductsController@destroy']
	);

	/* Videos */
	Route::get('video', ['as' => 'admin.video', 'uses' => 'VideosController@index']);
	Route::post('video', ['as' => 'admin.video.store', 'uses' => 'VideosController@store']);
	Route::get('video/getVideo', 'VideosController@ajaxGetVideo');
	Route::get('video/create', [ 'as' => 'admin.video.create', 'uses' => 'VideosController@create' ]);

	Route::get('video/{id}', [ 'as' => 'admin.video.show', 'uses' => 'VideosController@show']);
	Route::get('video/{id}/edit', [ 'as' => 'admin.video.edit', 'uses' => 'VideosController@edit']);
	Route::put('video/{id}', [ 'as' => 'admin.video.update', 'uses' => 'VideosController@update']);
	Route::get('video/delete/{id}', [ 'as' => 'admin.video.destroy', 'uses' => 'VideosController@destroy' ]);

	Route::get('header-info/view', [
		'as' => 'admin.header-info.view',
		'uses' => 'HeaderInfoController@viewInfo'
	]);

	Route::get('header-info/update', [
		'as' => 'admin.header-info.update',
		'uses' => 'HeaderInfoController@updateInfo'
	]);

	Route::post('header-info/update', [
		'as' => 'admin.header-info.update',
		'uses' => 'HeaderInfoController@updateInfo'
	]);

	Route::get('footer-info/view', [
		'as' => 'admin.footer-info.view',
		'uses' => 'FooterInfoController@viewInfo'
	]);

	Route::get('footer-info/update', [
		'as' => 'admin.footer-info.update',
		'uses' => 'FooterInfoController@updateInfo'
	]);

	Route::post('footer-info/update', [
		'as' => 'admin.footer-info.update',
		'uses' => 'FooterInfoController@updateInfo'
	]);

	Route::get('product-info/index', [
		'as' => 'admin.product-info.index',
		'uses' => 'ProductInfoController@index'
	]);

    Route::get('product-info/view/{id}', [
        'as' => 'admin.product-info.view',
        'uses' => 'ProductInfoController@viewProductInfo'
    ]);

    Route::get('product-info/create', [
        'as' => 'admin.product-info.create',
        'uses' => 'ProductInfoController@createProductInfo'
    ]);

    Route::post('product-info/create', [
        'as' => 'admin.product-info.create',
        'uses' => 'ProductInfoController@createProductInfo'
    ]);

    Route::get('product-info/update/{id}', [
        'as' => 'admin.product-info.update',
        'uses' => 'ProductInfoController@updateProductInfo'
    ]);

    Route::post('product-info/update/{id}', [
        'as' => 'admin.product-info.update',
        'uses' => 'ProductInfoController@updateProductInfo'
    ]);

    Route::post('product-info/delete/{id}', [
        'as' => 'admin.product-info.delete',
        'uses' => 'ProductInfoController@deleteProductInfo'
    ]);

//
//	Route::get('video/getVideo',
//			[
//					'as' => 'admin.video.getVideo',
//					'uses' => 'VideosController@ajaxGetVideo'
//			]
//	);

});
