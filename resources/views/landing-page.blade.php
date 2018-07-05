@extends('layouts.app')
@section('mainstyle')
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/responsive.css') }}">
@endsection

@section('content')
<div class="banner">
        <div class="banner_background" style="background-image:url(img/banner_background.jpg)"></div>
        <div class="container fill_height">
            <div class="row fill_height">
                <div class="banner_product_image"><img src="img/banner_product.png" alt=""></div>
                <div class="col-lg-5 offset-lg-4 fill_height">
                    <div class="banner_content">
                        <h1 class="banner_text">new era of smartphones</h1>
                        <div class="banner_price"><span>&#8358;530</span>&#8358;460</div>
                        <div class="banner_product_name">Apple Iphone 6s</div>
                        <div class="button banner_button"><a href="#">Shop Now</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="characteristics">
        <div class="container">
            <div class="row">
    
                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">
                    
                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="img/char_1.png" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Free Delivery</div>
                            <div class="char_subtitle">from &#8358;50</div>
                        </div>
                    </div>
                </div>
    
                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">
                    
                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="img/char_2.png" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Free Delivery</div>
                            <div class="char_subtitle">from &#8358;50</div>
                        </div>
                    </div>
                </div>
    
                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">
                    
                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="img/char_3.png" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Free Delivery</div>
                            <div class="char_subtitle">from &#8358;50</div>
                        </div>
                    </div>
                </div>
    
                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">
                    
                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="img/char_4.png" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Free Delivery</div>
                            <div class="char_subtitle">from &#8358;50</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- Deals of the week -->
    
        <div class="deals_featured">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">
                        
                        <!-- Deals -->
    
                        <div class="deals">
                            <div class="deals_title">Deals of the Week</div>
                            <div class="deals_slider_container">
                                
                                <!-- Deals Slider -->
                                <div class="owl-carousel owl-theme deals_slider">
                                    @foreach($products as $product)
                                    <!-- Deals Item -->
                                    <div class="owl-item deals_item">
                                        <div class="deals_image"><img src="{{ productImage($product->image) }}" alt=""></div>
                                        <div class="deals_content">
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                            <div class="deals_item_category"><a href="#">{{$product->name}}</a></div>
                                            <div class="deals_item_price_a ml-auto">&#8358;{{ $product->presentPrice() }}</div>
                                            </div>
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                            <div class="deals_item_name">{{$product->name}}</div>
                                            <div class="deals_item_price ml-auto">&#8358;{{ $product->presentPrice() }}</div>
                                            </div>
                                            <div class="available">
                                                <div class="available_line d-flex flex-row justify-content-start">
                                                    <div class="available_title">Available: <span>6</span></div>
                                                    <div class="sold_title ml-auto">Already sold: <span>28</span></div>
                                                </div>
                                                <div class="available_bar"><span style="width:17%"></span></div>
                                            </div>
                                            <div class="deals_timer d-flex flex-row align-items-center justify-content-start">
                                                <div class="deals_timer_title_container">
                                                    <div class="deals_timer_title">Hurry Up</div>
                                                    <div class="deals_timer_subtitle">Offer ends in:</div>
                                                </div>
                                                <div class="deals_timer_content ml-auto">
                                                    <div class="deals_timer_box clearfix" data-target-time="">
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_hr" class="deals_timer_hr"></div>
                                                            <span>hours</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_min" class="deals_timer_min"></div>
                                                            <span>mins</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_sec" class="deals_timer_sec"></div>
                                                            <span>secs</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
    
                                    @endforeach
    
    
                                </div>
    
                            </div>
    
                            <div class="deals_slider_nav_container">
                                <div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i></div>
                                <div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i></div>
                            </div>
                        </div>
                        
                        <!-- Featured -->
                        <div class="featured">
                            <div class="tabbed_container">
                                <div class="tabs">
                                    <ul class="clearfix">
                                        <li class="active">Featured</li>
                                        
                                    </ul>
                                    <div class="tabs_line"><span></span></div>
                                </div>
    
                                <!-- Product Panel -->
                                <div class="product_panel panel active">
                                    <div class="featured_slider slider">
                            <!-- Slider Item -->
                            @foreach($products as $product)
                                        <div class="featured_slider_item">
                                            <div class="border_active"></div>
                                            <div class="product_item d-flex flex-column align-items-center justify-content-center text-center">
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('shop.show', $product->slug) }}"><img src="{{ productImage($product->image) }}" alt=""></a></div>
                                                <div class="product_content">
                                                <div class="product_price">&#8358;{{ $product->presentPrice() }}</div>
                                                <div class="product_name"><div><a href="product.html">{{ $product->name}}</a></div></div>
                                                    <div class="product_extras">
                                                        <div class="product_color">
                                                            <input type="radio" checked name="product_color" style="background:#b19c83">
                                                            <input type="radio" name="product_color" style="background:#000000">
                                                            <input type="radio" name="product_color" style="background:#999999">
                                                        </div>
                                                        
                                                    <form action="{{route('cart.store')}}" method="POST">
                                                        {{csrf_field()}}
                                                    <input type="hidden" name="id" value="{{$product->id}}">
                                                    <input type="hidden" name="name" value="{{$product->name}}">
                                                    <input type="hidden" name="price" value="{{$product->price}}">
                                                    <button class="product_cart_button" type="submit">Add to Cart</button>
                                                    </form>
                                                        
                                                    </div>
                                                </div>
                                                <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                <ul class="product_marks">
                                                    <li class="product_mark product_discount"></li>
                                                    <li class="product_mark product_new">new</li>
                                                </ul>
                                            </div>
                                        </div>
                                        @endforeach
    
                                    </div>
                                    <div class="featured_slider_dots_cover"></div>
                                </div>
                                
    
    
                            </div>
                        </div>
    
                    </div>
                </div>
            </div>
        </div>
    
       
	<div class="adverts">
            <div class="container">
                <div class="row">
    
                    <div class="col-lg-4 advert_col">
                        
                        <!-- Advert Item -->
    
                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_title"><a href="#">Trends 2018</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur adipiscing Donec et.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="img/adv_1.png" alt=""></div></div>
                        </div>
                    </div>
    
                    <div class="col-lg-4 advert_col">
                        
                        <!-- Advert Item -->
    
                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_subtitle">Trends 2018</div>
                                <div class="advert_title_2"><a href="#">Sale -45%</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="img/adv_2.png" alt=""></div></div>
                        </div>
                    </div>
    
                    <div class="col-lg-4 advert_col">
                        
                        <!-- Advert Item -->
    
                        <div class="advert d-flex flex-row align-items-center justify-content-start">
                            <div class="advert_content">
                                <div class="advert_title"><a href="#">Trends 2018</a></div>
                                <div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
                            </div>
                            <div class="ml-auto"><div class="advert_image"><img src="img/adv_3.png" alt=""></div></div>
                        </div>
                    </div>
    
                </div>
            </div>
        </div>
    
        <!-- Trends -->
    
        <div class="trends">
            <div class="trends_background" style="background-image:url(img/trends_background.jpg)"></div>
            <div class="trends_overlay"></div>
            <div class="container">
                <div class="row">
    
                    <!-- Trends Content -->
                    <div class="col-lg-3">
                        <div class="trends_container">
                            <h2 class="trends_title">Trends 2018</h2>
                            <div class="trends_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing Donec et.</p></div>
                            <div class="trends_slider_nav">
                                <div class="trends_prev trends_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                                <div class="trends_next trends_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                            </div>
                        </div>
                    </div>
    
                    <!-- Trends Slider -->
                    <div class="col-lg-9">
                        <div class="trends_slider_container">
    
                            <!-- Trends Slider -->
    
                            <div class="owl-carousel owl-theme trends_slider">
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_1.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">Jump White</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_2.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">Samsung Charm...</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_3.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">DJI Phantom 3...</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_1.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">Jump White</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_2.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">Jump White</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                                <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div class="trends_image d-flex flex-column align-items-center justify-content-center"><img src="img/trends_3.jpg" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">Smartphones</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a href="product.html">Jump White</a></div>
                                                <div class="trends_price">&#8358;379</div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_discount">-25%</li>
                                            <li class="trends_mark trends_new">new</li>
                                        </ul>
                                        <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                    </div>
                                </div>
    
                            </div>
                        </div>
                    </div>
    
                </div>
            </div>
        </div>
    
        <!-- Reviews -->
    
        <div class="reviews">
            <div class="container">
                <div class="row">
                    <div class="col">
                        
                        <div class="reviews_title_container">
                            <h3 class="reviews_title">Latest Reviews</h3>
                            <div class="reviews_all ml-auto"><a href="#">view all <span>reviews</span></a></div>
                        </div>
    
                        <div class="reviews_slider_container">
                            
                            <!-- Reviews Slider -->
                            <div class="owl-carousel owl-theme reviews_slider">
                                
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_1.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Roberto Sanchez</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_2.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Brandon Flowers</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_3.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Emilia Clarke</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_1.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Roberto Sanchez</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_2.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Brandon Flowers</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                                <!-- Reviews Slider Item -->
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div><div class="review_image"><img src="img/review_3.jpg" alt=""></div></div>
                                        <div class="review_content">
                                            <div class="review_name">Emilia Clarke</div>
                                            <div class="review_rating_container">
                                                <div class="rating_r rating_r_4 review_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                                <div class="review_time">2 day ago</div>
                                            </div>
                                            <div class="review_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</p></div>
                                        </div>
                                    </div>
                                </div>
    
                            </div>
                            <div class="reviews_dots"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Recently Viewed -->
    
        <div class="viewed">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="viewed_title_container">
                            <h3 class="viewed_title">Recently Viewed</h3>
                            <div class="viewed_nav_container">
                                <div class="viewed_nav viewed_prev"><i class="fas fa-chevron-left"></i></div>
                                <div class="viewed_nav viewed_next"><i class="fas fa-chevron-right"></i></div>
                            </div>
                        </div>
    
                        <div class="viewed_slider_container">
                            
                            <!-- Recently Viewed Slider -->
    
                            <div class="owl-carousel owl-theme viewed_slider">
                                @foreach ($recent as $product)
                                <!-- Recently Viewed Item -->
                                <div class="owl-item">
                                    <div class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="viewed_image"><img src="{{ productImage($product->image) }}" alt=""></div>
                                        <div class="viewed_content text-center">
                                            <div class="viewed_price">&#8358;{{ $product->presentPrice() }}<span>&#8358;300</span></div>
                                            <div class="viewed_name"><a href="#">{{ $product->name }}</a></div>
                                        </div>
                                        <ul class="item_marks">
                                      
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </div>
                                @endforeach
    
                               
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Brands -->
    
        <div class="brands">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="brands_slider_container">
                            
                            <!-- Brands Slider -->
    
                            <div class="owl-carousel owl-theme brands_slider">
                                
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_1.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_2.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_3.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_4.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_5.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_6.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_7.jpg" alt=""></div></div>
                                <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center"><img src="img/brands_8.jpg" alt=""></div></div>
    
                            </div>
                            
                            <!-- Brands Slider Navigation -->
                            <div class="brands_nav brands_prev"><i class="fas fa-chevron-left"></i></div>
                            <div class="brands_nav brands_next"><i class="fas fa-chevron-right"></i></div>
    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Newsletter -->
    
        <div class="newsletter">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
                            <div class="newsletter_title_container">
                                <div class="newsletter_icon"><img src="img/send.png" alt=""></div>
                                <div class="newsletter_title">Sign up for Newsletter</div>
                                <div class="newsletter_text"><p>...and receive %20 coupon for first shopping.</p></div>
                            </div>
                            <div class="newsletter_content clearfix">
                                <form action="#" class="newsletter_form">
                                    <input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">
                                    <button class="newsletter_button">Subscribe</button>
                                </form>
                                <div class="newsletter_unsubscribe_link"><a href="#">unsubscribe</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- Footer -->
    
        <footer class="footer">
            <div class="container">
                <div class="row">
    
                    <div class="col-lg-3 footer_col">
                        <div class="footer_column footer_contact">
                            <div class="logo_container">
                                <div class="logo"><a href="#">OneTech</a></div>
                            </div>
                            <div class="footer_title">Got Question? Call Us 24/7</div>
                            <div class="footer_phone">+38 068 005 3570</div>
                            <div class="footer_contact_text">
                                <p>17 Princess Road, London</p>
                                <p>Grester London NW18JR, UK</p>
                            </div>
                            <div class="footer_social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google"></i></a></li>
                                    <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-lg-2 offset-lg-2">
                        <div class="footer_column">
                            <div class="footer_title">Find it Fast</div>
                            <ul class="footer_list">
                                <li><a href="#">Computers & Laptops</a></li>
                                <li><a href="#">Cameras & Photos</a></li>
                                <li><a href="#">Hardware</a></li>
                                <li><a href="#">Smartphones & Tablets</a></li>
                                <li><a href="#">TV & Audio</a></li>
                            </ul>
                            <div class="footer_subtitle">Gadgets</div>
                            <ul class="footer_list">
                                <li><a href="#">Car Electronics</a></li>
                            </ul>
                        </div>
                    </div>
    
                    <div class="col-lg-2">
                        <div class="footer_column">
                            <ul class="footer_list footer_list_2">
                                <li><a href="#">Video Games & Consoles</a></li>
                                <li><a href="#">Accessories</a></li>
                                <li><a href="#">Cameras & Photos</a></li>
                                <li><a href="#">Hardware</a></li>
                                <li><a href="#">Computers & Laptops</a></li>
                            </ul>
                        </div>
                    </div>
    
                    <div class="col-lg-2">
                        <div class="footer_column">
                            <div class="footer_title">Customer Care</div>
                            <ul class="footer_list">
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Order Tracking</a></li>
                                <li><a href="#">Wish List</a></li>
                                <li><a href="#">Customer Services</a></li>
                                <li><a href="#">Returns / Exchange</a></li>
                                <li><a href="#">FAQs</a></li>
                                <li><a href="#">Product Support</a></li>
                            </ul>
                        </div>
                    </div>
    
                </div>
            </div>
        </footer>
    
        <!-- Copyright -->
    
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col">
                        
                        <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
                            <div class="copyright_content"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    </div>
                            <div class="logos ml-sm-auto">
                                <ul class="logos_list">
                                    <li><a href="#"><img src="img/logos_1.png" alt=""></a></li>
                                    <li><a href="#"><img src="img/logos_2.png" alt=""></a></li>
                                    <li><a href="#"><img src="img/logos_3.png" alt=""></a></li>
                                    <li><a href="#"><img src="img/logos_4.png" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
       
