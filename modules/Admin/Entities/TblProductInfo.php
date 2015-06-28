<?php namespace Modules\Admin\Entities;
   
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use DB;
use Modules\Admin\Helpers\NiceSlug;

class TblProductInfo extends Model {

	public $table = "tbl_product_info";

	public $timestamps = true;

	public $primaKey = "id";

    protected $fillable = [];

    public function getList() {
    	$data = DB::table('tbl_product_info')->where('deleted_flag', 0)->get();
    	if(!empty($data)) {
            return (array)$data;
        } else {
            return false;
        }
    }

    public function getProductInfo($id) {
        $data = DB::table('tbl_product_info')->where('deleted_flag', 0)->where('id', $id)->first();
        if(!empty($data)) {
            return (array)$data;
        } else {
            return false;
        }
    }

    public function addProductInfo($data) {
        $now = Carbon::now();
        $data['created_at'] = $data['updated_at'] = $now;
        $data['deleted_flag'] = 0;
        $data['slug'] = NiceSlug::to_slug($data['title_vi']);
        $id = DB::table('tbl_product_info')->insertGetId($data);
        if($id) {
            return $id;
        } else {
            return false;
        }
    }

    public function updateProductInfo($id, $data) {
        $now = Carbon::now();
        $data['updated_at'] = $now;
        $data['slug'] = NiceSlug::to_slug($data['title_vi']);
        $result = false;
        try {
            DB::table('tbl_product_info')->where('id', $id)->update($data);
            $result = true;
        } catch(\Exception $e) {
            $result = false;
        }

        return $result;
    }

    public function deleteProductInfo($id) {
        $now = Carbon::now();
        if(DB::table('tbl_product_info')->where('id', $id)->update(array('deleted_flag' => 1, 'updated_at' => $now))) {
            return true;
        } else {
            return false;
        }
    }

}