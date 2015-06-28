<?php namespace App\Helpers;

use DB;
/**
 * Created by PhpStorm.
 * User: Than
 * Date: 07/06/2015
 * Time: 08:47
 */

class ContactFarm {

	public static function getPhone() {
		return DB::table('tbl_contact')->where('id', 1)->pluck('phone');
	}

	public static function getEmail() {
		return DB::table('tbl_contact')->where('id', 1)->pluck('email');
	}

	public static function getAddressVi() {
		return DB::table('tbl_contact')->where('id', 1)->pluck('address_vi');
	}

	public static function getAddressEn() {
		return DB::table('tbl_contact')->where('id', 1)->pluck('address_en');
	}
} 