<?php
/**
 * Created by PhpStorm.
 * User: dungthan
 * Date: 28/06/2015
 * Time: 00:52
 */

namespace App\Helpers;
use DB;

class VideoTop {
    public static function hotVideo() {
        return DB::table('tbl_video')->where('delete_flag', 0)->where('position', 99)->orderBy('updated_at', 'DESC')->first();
    }
}