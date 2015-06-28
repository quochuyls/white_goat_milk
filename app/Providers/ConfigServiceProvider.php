<?php namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Config;
use Module;

class ConfigServiceProvider extends ServiceProvider
{

	/**
	 * Overwrite any vendor / package configuration.
	 *
	 * This service provider is intended to provide a convenient location for you
	 * to overwrite any "vendor" or package configuration that you may want to
	 * modify before the application handles the incoming request / command.
	 *
	 * @return void
	 */
	public function register()
	{
		Config::get('admin');
		$module = Module::get('admin');
		if ($module && $module->getName() === 'admin') {
			Config::set('auth.model', 'Modules\Admin\Entities\Admin');
			Config::set('auth.table', 'tbl_admin');
		}

		config([
			'laravellocalization.supportedLocales' => [
				'vi' => ['name' => 'Vietnamese', 'script' => 'Latn', 'native' => 'Tiếng Việt'],
				'en' => ['name' => 'English', 'script' => 'Latn', 'native' => 'English'],
			],

			'laravellocalization.useAcceptLanguageHeader' => true,

			'laravellocalization.hideDefaultLocaleInURL' => true
		]);


	}

}
