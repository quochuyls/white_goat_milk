<?php namespace Modules\Admin\Http\Middleware; 

use Auth;
use Closure;
use Illuminate\Http\RedirectResponse;

class RedirectIfAuthenticated {


    protected $auth;

    /**
     * Create a new filter instance.
	 *
     * @return void
     */
    public function __construct()
    {
        $this->auth = Auth::admin();
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
       // dd($request);
        if ($this->auth->check())
        {
            return new RedirectResponse(url('/admin'));
        }

        return $next($request);
    }


}
