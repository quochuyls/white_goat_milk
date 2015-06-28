<?php namespace App\Http\Controllers;

use App\BannerIcon;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$services = Service::getServices();

		$icons = BannerIcon::getBannerIcon();

		return view('service.index', compact(['services', 'icons']));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function serviceEdu() {
		$services = Service::getServices();
		$title = $services[0]->{trans('service.title')};
		return view('service.edu', compact(['services', 'title']));
	}

	public function serviceExperiment() {
		$services = Service::getServices();
		$title = $services[1]->{trans('service.title')};
		return view('service.experiment', compact(['services', 'title']));
	}

	public function serviceFood() {
		$services = Service::getServices();
		$title = $services[2]->{trans('service.title')};
		return view('service.food', compact(['services', 'title']));
	}

}
