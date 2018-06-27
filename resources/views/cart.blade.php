@extends('layouts.app')

@section('title', 'Shopping Cart')

@section('mainstyle')
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/cart_responsive.css') }}">

@endsection

@section('content')
<div class="cart_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cart_container">
                            @if(session()->has('success_message'))
                            <div class="alert alert-success">
                                {{session()->get('success_message')}}
                            </div>
                             @endif
                             @if(count($errors) > 0)
                             <div class="alert alert-danger">
                                 <ul>
                                     @foreach ($errors->all() as $error)
                                         <li>{{ $error }}</li>
                                     @endforeach
                                 </ul>
                             </div>
                         @endif


                             @if(Cart::count() > 0)
                             
                    <div class="cart_title">{{Cart::count()}} items  Shopping Cart</div>
                    @if (! session()->has('coupon'))

                    <a href="#" class="have-code">Have a Coupon Code?</a>
    
                    <div class="have-code-container">
                        <form action="{{ route('coupon.store') }}" method="POST">
                            {{ csrf_field() }}
                            <input type="text" name="coupon_code" id="coupon_code">
                            <button type="submit" class="btn btn-info">Apply</button>
                        </form>
                    </div> <!-- end have-code-container -->
                @endif
                    @foreach(Cart::content() as $item)
                        
                        <div class="cart_items">
                            <ul class="cart_list">
                                <li class="cart_item clearfix">
                                    <div class="cart_item_image"><img src="{{ productImage($item->model->image) }}" alt=""></div>
                                    <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                        <div class="cart_item_name cart_info_col">
                                            <div class="cart_item_title">Name</div>
                                        <div class="cart_item_text">{{ $item->model->name }}</div>
                                        </div>
                                      
                                        <div class="cart_item_quantity cart_info_col">
                                            <div class="cart_item_title">Quantity</div>
                                            <select class="quantity form-control" data-id="{{ $item->rowId }}">
                                                    @for ($i = 1; $i < 5 + 1 ; $i++)
                                                        <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                                    @endfor
                                                </select>
                                        </div>
                                        <div class="cart_item_price cart_info_col">
                                            <div class="cart_item_title">Price</div>
                                        <div class="cart_item_text">{{ presentPrice($item->subtotal) }}</div>
                                        </div>
                                        <div class="cart_item_total cart_info_col">
                                            <div class="cart_item_title"></div>
                                            <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                                    {{ csrf_field() }}
                                                    {{ method_field('DELETE') }}
                    
                                                    <button type="submit" class="cart-options btn btn-success">Remove</button>
                                                </form>
                    
                                            
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        @endforeach
                        <br>
                      
                        <!-- Order Total -->
                       
                                <div class="container">
                                        <div class="row">
                                            <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                                                <div class="row">
                                                    
                                                   
                                                </div>
                                                <div class="row">
                                                    
                                                    
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                
                                                                <th>#</th>
                                                               
                                                                <th class="text-center">#</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                
                                                                <td class="col-md-1" style="text-align: center"> SUBTOTAL </td>
                                                                
                                                                <td class="col-md-1 text-center">@if (session()->has('coupon'))
                                                                        Code ({{ session()->get('coupon')['name'] }})
                                                                        <form action="{{ route('coupon.destroy') }}" method="POST" style="display:block">
                                                                            {{ csrf_field() }}
                                                                            {{ method_field('delete') }}
                                                                            <button type="submit" style="font-size:14px;">Remove</button>
                                                                        </form>
                                                                        <hr>
                                                                        New Subtotal <br>
                                                                    @endif{{ presentPrice(Cart::subtotal()) }}</td>
                                                            </tr>
                                                            <tr>
                                                               
                                                                <td class="col-md-1" style="text-align: center"> TAX </td>
                                                                
                                                                <td class="col-md-1 text-center"> @if (session()->has('coupon'))
                                                                        -{{ presentPrice($discount) }} <br>&nbsp;<br>
                                                                        <hr>
                                                                        {{ presentPrice($newSubtotal) }} <br>
                                                                    @endif
                                                                    {{ presentPrice($newTax) }} <br></td>
                                                            </tr>
                                                            <tr>
                                                                
                                                                <td class="col-md-1" style="text-align: center"> TOTAL </td>
                                                                
                                                                <td class="col-md-1 text-center">{{ presentPrice($newTotal) }}</td>
                                                            </tr>
                                                          
                                                            <tr>
                                                                
                                                            
                                                                <td class="text-right"><h4><strong>TOTAL: </strong></h4></td>
                                                                <td class="text-center text-danger"><h4><strong>{{ presentPrice($newTotal) }}</strong></h4></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <button type="button" class="btn btn-success btn-lg btn-block">
                                                        CHECKOUT  <span class="glyphicon glyphicon-chevron-right"></span>
                                                    </button></td>
                                                </div>
                                            </div>
                                        </div>
                                       
                                   
                        </div>
    
                        <div class="cart_buttons">
                          <a href="{{ route('shop.index') }}">  <button type="button" class="button cart_button_clear">Add to Cart</button></a>
                           
                        </div>
                    </div>
    
                    @else
                            <h3>No item in Cart</h3>
    
                    @endif
                </div>
            </div>
        </div>
    </div>

@endsection

@section('extra-js')
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
        (function(){
            const classname = document.querySelectorAll('.quantity')

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function() {
                    const id = element.getAttribute('data-id')
                    axios.patch(`/cart/${id}`, {
                        quantity: this.value
                    })
                    .then(function (response) {
                        // console.log(response);
                        window.location.href = '{{ route('cart.index') }}'
                    })
                    .catch(function (error) {
                        // console.log(error);
                        window.location.href = '{{ route('cart.index') }}'
                    });
                })
            })
        })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
