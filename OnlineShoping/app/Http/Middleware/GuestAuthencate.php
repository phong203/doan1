<?php

namespace App\Http\Middleware;

use Closure;
use App\Utils;

class GuestAuthencate
{
    public function handle($request, Closure $next)
    {
        if (Utils::userLogged())
        {
            return redirect('/');
        }
        
        return $next($request);
    }
}
