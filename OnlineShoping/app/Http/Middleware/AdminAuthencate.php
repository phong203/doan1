<?php

namespace App\Http\Middleware;

use Closure;
use App\Utils;

class AdminAuthencate
{
    
    public function handle($request, Closure $next)
    {
        if (Utils::adminLogged() == false)
        {
            return redirect('/admin/login');
        }
        return $next($request);
    }
}
