<?php namespace Modules\Admin\Entities;
   
use Illuminate\Database\Eloquent\Model;

class TblBanner extends Model {

	protected $table = 'tbl_banner';

    protected $fillable = [
		'banner',
	    'banner_date',
	    'banner_flg',
	    'service_edu',
	    'service_edu_date',
	    'service_edu_flg',
	    'service_experiment',
	    'service_experiment_date',
	    'service_experiment_flg',
	    'service_food',
	    'service_food_date',
	    'service_food_flg',
	    'introduct',
	    'introduct_date',
	    'introduct_flg',
	    'customer',
	    'customer_date',
	    'customer_flg'
    ];

}