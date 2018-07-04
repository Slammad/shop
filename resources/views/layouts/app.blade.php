<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'bellokano') }}</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="bellokano shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/bootstrap4/bootstrap.min.css') }}">
<link href="{{ URL::asset('plugins/fontawesome-free-5.0.1/css/fontawesome-all.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('plugins/slick-1.8.0/slick.css') }}" >
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/main_styles.css') }}">
@yield('mainstyle')
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/responsive.css') }}">


</head>

<body>
    <div class="super_container">
   
		
        <header class="header">

            <!-- Top Bar -->
    
            <div class="top_bar">
                <div class="container">
                    <div class="row">
                        <div class="col d-flex flex-row">
                            <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="img/phone.png" alt=""></div>08000000000</div>
                            <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="img/mail.png" alt=""></div><a href="mailto:bellokano@gmail.com">bellokano@gmail.com</a></div>
                            <div class="top_bar_content ml-auto">
                                <div class="top_bar_menu">
                                    <ul class="standard_dropdown top_bar_dropdown">
                                        <li>
                                            <a href="#">English<i class="fas fa-chevron-down"></i></a>
                                            {{-- <ul>
                                                <li><a href="#">Italian</a></li>
                                                <li><a href="#">Spanish</a></li>
                                                <li><a href="#">Japanese</a></li>
                                            </ul> --}}
                                        </li>
                                        <li>
                                            <a href="#">N Naira<i class="fas fa-chevron-down"></i></a>
                                            {{-- <ul>
                                                <li><a href="#">EUR Euro</a></li>
                                                <li><a href="#">GBP British Pound</a></li>
                                                <li><a href="#">JPY Japanese Yen</a></li>
                                            </ul> --}}
                                        </li>
                                    </ul>
                                </div>
                                <div class="top_bar_user">
                                    <div class="user_icon"><img src="img/user.svg" alt=""></div>
                                    @guest
                                    <div><a href="{{ route('register') }}">Register</a></div>
                                    <div><a href="{{ route('login') }}">Sign in</a></div>
                                     @else
                                     <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                                {{ Auth::user()->name }} <span class="caret"></span>
                                            </a>
            
                                            <ul class="dropdown-menu" role="menu">
                                                <li>
                                                    <a href="{{ route('logout') }}"
                                                        onclick="event.preventDefault();
                                                                 document.getElementById('logout-form').submit();">
                                                        Logout
                                                    </a>
            
                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                        {{ csrf_field() }}
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                     @endguest
                                </div>
                            </div>
                        </div>

                        
                    </div>
                </div>		
            </div>
    
            <!-- Header Main -->
    
            <div class="header_main">
                <div class="container">
                    <div class="row">
    
                        <!-- Logo -->
                        <div class="col-lg-2 col-sm-3 col-3 order-1">
                            <div class="logo_container">
                                <div class="logo"><a href="#">bellokano</a></div>
                            </div>
                        </div>
    
                        <!-- Search -->
                        <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                            <div class="header_search">
                                <div class="header_search_content">
                                    <div class="header_search_form_container">
                                        <form action="#" class="header_search_form clearfix">
                                            <input type="search" required="required" class="header_search_input" placeholder="Search for products...">
                                            <div class="custom_dropdown">
                                                <div class="custom_dropdown_list">
                                                    <span class="custom_dropdown_placeholder clc">All Categories</span>
                                                    <i class="fas fa-chevron-down"></i>
                                                    <ul class="custom_list clc">
                                                        <li><a class="clc" href="#">All Categories</a></li>
                                                        <li><a class="clc" href="#">Computers</a></li>
                                                        <li><a class="clc" href="#">Laptops</a></li>
                                                        <li><a class="clc" href="#">Cameras</a></li>
                                                        <li><a class="clc" href="#">Hardware</a></li>
                                                        <li><a class="clc" href="#">Smartphones</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <button type="submit" class="header_search_button trans_300" value="Submit"><img src="img/search.png" alt=""></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
    
                        <!-- Wishlist -->
                        <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                            <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                                <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                                    <div class="wishlist_icon"><img src="img/heart.png" alt=""></div>
                                    <div class="wishlist_content">
                                        <div class="wishlist_text"><a href="#">Wishlist</a></div>
                                        <div class="wishlist_count">115</div>
                                    </div>
                                </div>
    
                                <!-- Cart -->
                                <div class="cart">
                                    <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                        <div class="cart_icon">
                                            <img src="img/cart.png" alt="">
                                        <div class="cart_count"><span>{{Cart::count()}}</span></div>
                                        </div>
                                        <div class="cart_content">
                                        <div class="cart_text"><a href="{{route('cart.index')}}">Cart</a></div>
                                            <div class="cart_price">N85</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Main Navigation -->
    
            <nav class="main_nav">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            
                            <div class="main_nav_content d-flex flex-row">
    
                                <!-- Categories Menu -->
    
                                <div class="cat_menu_container">
                                    <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                                        <div class="cat_burger"><span></span><span></span><span></span></div>
                                        <div class="cat_menu_text">categories</div>
                                    </div>
    
                                    <ul class="cat_menu">
                                        
                                        @foreach(Ncategories as Ncategory)
                                    <li><a href="{{ route('shop.index', ['category' => Ncategory->slug]) }}"><span><i class="{{Ncategory->icon}}"></i>{{Ncategory->name}}</span><i class="fas fa-chevron-right ml-auto"></i></a></li>
                                        @endforeach
                                    </ul>
                                </div>
    
                                <!-- Main Nav Menu -->
    
                                <div class="main_nav_menu ml-auto">
                                    <ul class="standard_dropdown main_nav_dropdown">
                                        <li><a href="#">Home<i class="fas fa-chevron-down"></i></a></li>
                                        <li class="hassubs">
                                            <a href="#">Super Deals<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li>
                                                    <a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                            </ul>
                                        </li>
                                        <li class="hassubs">
                                            <a href="#">Featured Brands<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li>
                                                    <a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                            </ul>
                                        </li>
                                        <li class="hassubs">
                                            <a href="#">Pages<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li><a href="shop.html">Shop<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="product.html">Product<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="blog_single.html">Blog Post<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="regular.html">Regular Post<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="cart.html">Cart<i class="fas fa-chevron-down"></i></a></li>
                                                <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
                                            </ul>
                                        </li>
                                        <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
                                    </ul>
                                </div>
    
                                <!-- Menu Trigger -->
    
                                <div class="menu_trigger_container ml-auto">
                                    <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                                        <div class="menu_burger">
                                            <div class="menu_trigger_text">menu</div>
                                            <div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
                                        </div>
                                    </div>
                                </div>
    
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            
            <!-- Menu -->
    
            <div class="page_menu">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            
                            <div class="page_menu_content">
                                
                                <div class="page_menu_search">
                                    <form action="#">
                                        <input type="search" required="required" class="page_menu_search_input" placeholder="Search for products...">
                                    </form>
                                </div>
                                <ul class="page_menu_nav">
                                    <li class="page_menu_item has-children">
                                        <a href="#">Language<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li class="page_menu_item has-children">
                                        <a href="#">Currency<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">GBP British Pound<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">JPY Japanese Yen<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li class="page_menu_item">
                                        <a href="#">Home<i class="fa fa-angle-down"></i></a>
                                    </li>
                                    <li class="page_menu_item has-children">
                                        <a href="#">Super Deals<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">Super Deals<i class="fa fa-angle-down"></i></a></li>
                                            <li class="page_menu_item has-children">
                                                <a href="#">Menu Item<i class="fa fa-angle-down"></i></a>
                                                <ul class="page_menu_selection">
                                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li class="page_menu_item has-children">
                                        <a href="#">Featured Brands<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">Featured Brands<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li class="page_menu_item has-children">
                                        <a href="#">Trending Styles<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">Trending Styles<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li class="page_menu_item"><a href="blog.html">blog<i class="fa fa-angle-down"></i></a></li>
                                    <li class="page_menu_item"><a href="contact.html">contact<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                                
                                <div class="menu_contact">
                                    <div class="menu_contact_item"><div class="menu_contact_icon"><img src="img/phone_white.png" alt=""></div>08000000000</div>
                                    <div class="menu_contact_item"><div class="menu_contact_icon"><img src="img/mail_white.png" alt=""></div><a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    
        </header>
        
    
     @yield('content')
        
</div>
    
<script src="{{ URL::asset('js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ URL::asset('css/bootstrap4/popper.js') }}"></script>
<script src="{{ URL::asset('css/bootstrap4/bootstrap.min.js') }}"></script>
<script src="{{ URL::asset('plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ URL::asset('plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ URL::asset('plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ URL::asset('plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ URL::asset('plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ URL::asset('plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ URL::asset('plugins/slick-1.8.0/slick.js') }}"></script>
<script src="{{ URL::asset('plugins/easing/easing.js') }}"></script>
<script src="{{ URL::asset('js/custom.js') }}"></script>
@yield('corejs')

</body>

</html>

