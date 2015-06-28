<?php
/**
 * Created by PhpStorm.
 * User: dungnv6423
 * Date: 6/10/2015
 * Time: 1:54 PM
 */

namespace App\Helpers;
use DB;

class NewEvents {

	public static function newEvents() {
		return DB::table('tbl_event_farm')->take(5)->orderBy('updated_at', 'desc')->get();
	}
} 