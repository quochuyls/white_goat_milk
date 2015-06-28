<?php
return [

	'multi' => [
		'admin' => [
			'driver' => 'eloquent',
			'model' => 'Modules\Admin\Entities\Admin',
			'table' => 'tbl_admin',
			'email' => 'admin::emails.password',
		],
		'client' => [
			'driver' => 'database',
			'model' => 'App\User',
			'table' => 'users',
			'email' => 'client.emails.password',
		]
	],
	'password' => [
		'table' => 'password_resets',
		'expire' => 60,
	],

];
