@extends('frontend.masterpage.masterpage')
@section('content')
<!--banner-->
<div class="banner-top">
   <div class="container">
      <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Products</h2>
      <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="{{ asset ('/') }}">Home</a><label>/</label>Products</h3>
      <div class="clearfix"></div>
   </div>
</div>
<!--content-->
<div class="product">
   <div class="container">
      
      <div class="col-md-13 animated wow fadeInRight" data-wow-delay=".5s">
         <div class="mens-toolbar">
            <p >Lựa chọn hiện sản phẩm:</p>
            <p class="showing">
               Săp xếp
               <select>
                  <option value=""> Tên </option>
                  <option value=""> Giá</option>
                  <option value=""> Ưu đãi </option>
                 
               </select>
            </p>
            <p>
               Hiện sản phẩm
               <select>
                  <option value=""> 9</option>
                  <option value=""> 10</option>
                  <option value=""> 11 </option>
                  <option value=""> 12 </option>
               </select>
            </p>
            <div class="clearfix"></div>
         </div>
         <div class="mid-popular">
            @foreach ($products as $product)
            <div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">
               <div class="grid-pro">
                  <div  class=" grid-product " >
                     <figure>
                        <div class="grid-img">
                           <a href="{{ asset('/product/' . $product->Id)}}">
                           <img  src="{{ asset($product->Image) }}" class="img-responsive"  alt="">
                           </a>
                        </div>
                     </figure>
                  </div>
                  <div class="women">
                     <a href="#"><img src="{{ asset('images/ll.png') }}" alt=""></a>
                     <h6><a href="{{ asset('/product/' . $product->Id)}}">{{ $product->Name }}</a></h6>
                     <p ><em class="item_price">{{ $product->PriceVN() }}</em></p>
                     <a href="{{ url('checkout') }}" data-text="Thêm vào giỏ hàng" class="but-hover1 item_add">Thêm vào giỏ hàng</a>
                  </div>
               </div>
            </div>
            @endforeach
            <div class="clearfix"></div>
         </div>
      </div>
      </div class="clearfix">
   </div>
</div>
</div>
<!--//products-->
@endsection