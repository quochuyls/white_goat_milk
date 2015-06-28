<?php namespace Modules\Admin\Http\Controllers;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Pingpong\Modules\Routing\Controller;
use Modules\Admin\Entities\TblProductInfo;

class ProductInfoController extends Controller {
	
	public function index()
	{
		$data = new TblProductInfo();
		$infos = $data->getList();
        return view('admin::product-info.index')->with('infos', $infos);
	}

    public function createProductInfo() {
        $info = new TblProductInfo();

        if(Input::get()) {
            $data = Input::all();
            unset($data['_token']);

            if(Input::file('thumbnail')) {
                $uploadPath = base_path() . '/public/images/product-info/';
                $extension = Input::file('thumbnail')->getClientOriginalExtension();

                $fileName = "product-info-" . time() . "." . $extension;

                if(Input::file('thumbnail')->move($uploadPath, $fileName)) {
                    $data['thumbnail'] = $fileName;
                }
            }

            if($id = $info->addProductInfo($data)) {
                return Redirect::route('admin.product-info.view', array('id' => $id));
            } else {
                return Redirect::to('/admin');
            }
        }

        return view('admin::product-info.create')->with('info', $info);
    }

    public function updateProductInfo($id) {
        $productInfo = new TblProductInfo();
        $info = $productInfo->getProductInfo($id);
        if($info) {
            if(Input::get()) {
                $data = Input::all();
                unset($data['_token']);

                if (Input::file('thumbnail')) {
                    $pathUpload = base_path() . "/public/images/product-info/";
                    $extension = Input::file('thumbnail')->getClientOriginalExtension();

                    $fileName = "product-info-" . time() . "." . $extension;

                    if (Input::file('thumbnail')->move($pathUpload, $fileName)) {
                        $data['thumbnail'] = $fileName;
                    }
                }

                if ($productInfo->updateProductInfo($id, $data)) {
                    return Redirect::route('admin.product-info.view', array('id' => $id));
                } else {
                    return Redirect::to('/admin');
                }
            }

            return view('admin::product-info.update')->with('info', $info);
        } else {
            return Redirect::to('/admin');
        }
    }

    public function deleteProductInfo($id) {
        $productInfo = new TblProductInfo();
        if ($productInfo->deleteProductInfo($id)) {
            return Redirect::route('admin.product-info.index');
        } else {
            return Redirect::to('/admin');
        }
    }

    public function viewProductInfo($id) {
        $productInfo = new TblProductInfo();
        $info = $productInfo->getProductInfo($id);
        if($info) {
            return view('admin::product-info.view')->with('info', $info);
        } else {
            return Redirect::to('/admin');
        }
    }
}