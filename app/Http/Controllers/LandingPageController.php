<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::where('featured', true)->take(8)->inRandomOrder()->get();
        $categories = Category::all();
        $recent = Product::inRandomOrder()->take(30)->get();
        return view('landing-page')->with([
            'products' => $products,
            'categories' => $categories,
            'recent' => $recent,

    ]);
    }
}
