<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Auth;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        // dd(Auth::check());
        return inertia('Index/Index',[
            'message'=>'Hello from laravel'
        ]);
    }
    public function show() {
        return inertia('Index/Show');
    }
}
