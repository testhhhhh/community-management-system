<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shopping-Cart</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- nivo slider css -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="lib/css/preview.css" type="text/css" />
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>



        <!--header top area start-->
        <div class="header_area">
            <div class="header_border">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_heaft_area">
                                <div class="header_left_all">
                                    <div class="mean_al_dv">
                                        <div class="littele_menu"><a href="#">Language: English <i class="fa fa-caret-down"></i></a> </div>
                                        <ul class="option">
                                            <li><a href="#">France</a></li>
                                            <li><a href="#">Germany</a></li>
                                            <li><a href="#">Japanese</a></li>
                                        </ul>
                                    </div>
                                    <div class="usd_area">
                                        <div class="littele_menu"><a href="#">
                                            Currency: USD
                                            <i class="fa fa-caret-down"></i>
                                            </a>
                                        </div>
                                        <ul class="option">
                                            <li><a href="#">EUR - Euro</a></li>
                                            <li><a href="#">GBP - British Pound</a></li>
                                            <li><a href="#">INR - Indian Rupee</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_right_area">
                                <ul>
                                    <li>
                                        <a class="account" href="#">My Account</a>
                                    </li>
                                    <li>
                                        <a class="wishlist" href="#">wishlist</a>
                                    </li>
                                    <li>
                                        <a class="Shopping cart" href="#">Shopping cart</a>
                                    </li>
                                    <li>
                                        <a class="Checkout" href="#">Checkout</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header top area end-->
            <!--header middle area start-->
            <div class="header_middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo_area">
                                <a href="index.jsp"><img src="img/logo-pic/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="header_all search_box_area">
                                <form class="new_search" role="search" method="get" action="#">
                                    <input id="mix_search" class="search-field" placeholder="Search Products…" value="" name="s" title="Search for:" type="search">
                                    <input value="Search" type="submit">
                                    <input name="post_type" value="product" type="hidden">
                                </form>
                            </div>
                            <div class="header_all shopping_cart_area">
                                <div class="widget_shopping_cart_content">
                                    <div class="topcart">
                                        <a class="cart-toggler" href="">
                                        <i class="icon"></i>
                                        <span class="my-cart">Shopping cart</span>
                                        <span class="qty">2 Items</span>
                                        <span class="fa fa-angle-down"></span>
                                        </a>
                                        <div class="new_cart_section">
                                            <ol class="new-list">
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="">
                                                    <img alt="" src="img/product-pic/7-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Adipiscing cursus eu</a>
                                                        <span class="sig-price">1×$300.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                        <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="#">
                                                    <img alt="" src="img/product-pic/1-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Duis convallis</a>
                                                        <span class="sig-price">1×$100.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                        <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                            </ol>
                                            <div class="top-subtotal">
                                                Subtotal: <span class="sig-price">$400.00</span>
                                            </div>
                                            <div class="cart-button">
                                                <ul>
                                                    <li>
                                                        <a href="#">
                                                        View my cart
                                                        <i class="fa fa-angle-right"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                        Checkout
                                                        <i class="fa fa-angle-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header bottom area start-->
            <div class="all_menu_area">
                <div class="menu_inner">
                    <div class="container">
                        <div class="full_menu clearfix">
                            <div class="new_menu">
                                <div class="drp-menu">
                                    <div class="col-md-3 pr pl">
                                        <div class="all_catagories">
                                            <div class="enable_catagories">
                                                <i class="fa fa-bars"></i>
                                                <span>All Categories</span>
                                                <i class="fa fa-angle-down"></i>
                                            </div>
                                        </div>
                                        <div class="catagory_menu_area">
                                            <div class="catagory_mega_menu">
                                                <div class="cat_mega_start">
                                                    <ul class="list">
                                                        <li class="next_area">
                                                            <a class="item_link" href="#">
                                                            <i class="fa fa-television"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Electronics
                                                            <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                            <ul class="electronics_drpdown">
                                                                <li class="parent">
                                                                    <a href="#"></a>
                                                                    <div class="mega_menu">
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Men's</a></li>
                                                                                <li><a href="#">Hats</a></li>
                                                                                <li><a href="#">Mirriors</a></li>
                                                                                <li><a href="#">Singles</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Sports& Outdoors</a></li>
                                                                                <li><a href="#">Smartphones</a></li>
                                                                                <li><a href="#">Womens</a></li>
                                                                                <li><a href="#">Health & Beauty</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li class="mega_content">
                                                                                    <a href="#">Accessories</a>
                                                                                </li>
                                                                                <li><a href="#">Hobbies</a></li>
                                                                                <li><a href="#">networking</a></li>
                                                                                <li><a href="#">accessories</a></li>
                                                                                <li><a href="#">electronics</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Laptops & Accessories</a></li>
                                                                                <li><a href="#">hoodies</a></li>
                                                                                <li><a href="#">watches</a></li>
                                                                                <li><a href="#">flashlights</a></li>
                                                                                <li><a href="#">mirriors</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="differ_sec_area">
                                                            <a class="item_link" href="#">
                                                            <i class="fa fa-mobile"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Smartphone & Tablets
                                                            <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                            <ul class="another_drop_menu">
                                                                <li class="discrip">
                                                                    <a class="new_link_2 with_icon" href="#" tabindex="1">Posters</a>
                                                                    <ul class="new_miup_menu">
                                                                        <li>
                                                                            <ul class="new_mixup_tm">
                                                                                <li class="exact">
                                                                                    <a class="new_link_8 with_icon" href="#" tabindex="1">Cocktail</a>
                                                                                    <ul class="decent_mean_menu">
                                                                                        <li>
                                                                                            <ul class="new_mixup_tm">
                                                                                                <li>
                                                                                                    <a href="#"></a>Cost & Jackets
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li><a href="#">Furniture</a></li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li class="risk">
                                                                    <a class="new_link_2 new_link_3 with_icon" href="#" tabindex="1">Watches
                                                                    </a>
                                                                    <ul class="new_miup_menu">
                                                                        <li>
                                                                            <ul class="new_mixup_tm">
                                                                                <li><a href="#">Women's</a></li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">Pendants</a></li>
                                                                <li><a href="#">Chocklates</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="differ_sec_area">
                                                            <a class="item_link " href="#">
                                                            <i class="fa fa-gift"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Health & Beauty
                                                            <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                            <ul class="another_drop_menu">
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                    <i class="fa fa-futbol-o"></i>
                                                                    Sports & Outdoors
                                                                    </a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                    <i class="fa fa-bullseye"></i>
                                                                    Bags, Shoes & Accessories
                                                                    </a>
                                                                </li>
                                                                <li class="discrip"><a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1"><i class="fa fa-file-image-o"></i>
                                                                    Toys & Hobbies</a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1"><i class="fa fa-television"></i>
                                                                    Computer & Networking</a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                    <i class="fa fa-laptop"></i>
                                                                    Laptops & Accessories
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                            <i class="fa fa-heart"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Jewelry & Watches
                                                            <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                            <i class="fa fa-star"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Flashlights & Lamps
                                                            <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                            <i class="fa fa-lightbulb-o"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Headlight
                                                            <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                        </li>
                                                        <li class="cost-menu">
                                                            <a class="item_link item_link_2" href="#">
                                                            <i class="fa fa-pie-chart"></i>
                                                            <span class="link_content">
                                                            <span class="link_text">
                                                            Cost & jackets
                                                            <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                            </span>
                                                            </span>
                                                            </a>
                                                        </li>
                                                        <li class="showmore-items shwitm">
                                                            <i class="fa fa-plus-square-o"></i>
                                                            <span>More Categories</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--menu area start-->
                                    <div class="col-md-9 pl">
                                        <div class="menu_area">
                                            <div class="menu">
                                                <nav>
                                                    <ul>
                                                        <li><a href="index.jsp">Home</a></li>
														<li><a href="about-us.jsp">About</a></li>
														<li><a href="cart.jsp">Cart</a></li>
														<li><a href="list-view.jsp">List</a></li>
														<li><a href="my.account.jsp">Account</a></li>
														<li><a href="simple-product.jsp">Product</a></li>
														<li><a href="contact-us.jsp">Contact us</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header area end-->
        <!-- mobile-menu-area-start -->
        <div class="mobile-menu-area hidden-md hidden-lg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                                <ul id="nav">
                                    <li><a href="index.jsp">Home</a></li>
									<li><a href="about-us.jsp">About</a></li>
									<li><a href="cart.jsp">Cart</a></li>
									<li><a href="list-view.jsp">List</a></li>
									<li><a href="my.account.jsp">Account</a></li>
									<li><a href="simple-product.jsp">Product</a></li>
									<li><a href="contact-us.jsp">Contact us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile-menu-area-end -->
        <!--social design arae start-->
        <div class="link_area">
            <div class="container">
                <div class="row">
                    <div class="social_design on_right">
                        <ul>
                            <li>
                                <a class="facebook" target="_blank" href="#facebook">
                                <span>
                                <i class="fa fa-facebook"></i>
                                <span class="social-text">Follow via Facebook</span>
                                </span>
                                </a>
                            </li>
                            <li>
                                <a class="twitter" target="_blank" href="#twitter.com">
                                <span>
                                <i class="fa fa-twitter"></i>
                                <span class="social-text">Follow via Twitter</span>
                                </span>
                                </a>
                            </li>
                            <li>
                                <a class="google-plus" target="_blank" href="#google-plus">
                                <span>
                                <i class="fa fa-google-plus"></i>
                                <span class="social-text">Follow via Google +</span>
                                </span>
                                </a>
                            </li>
                            <li>
                                <a class="youtube" target="_blank" href="#youtube">
                                <span>
                                <i class="fa fa-youtube"></i>
                                <span class="social-text">Follow via Youtube</span>
                                </span>
                                </a>
                            </li>
                            <li>
                                <a class="pinterest" target="_blank" href="#pinterest">
                                <span>
                                <i class="fa fa-pinterest"></i>
                                <span class="social-text">Follow via Pinterest</span>
                                </span>
                                </a>
                            </li>
                            <li>
                                <a class="mail-to" target="_blank" href="mailto:jq22@gmail.com">
                                <span>
                                <i class="fa fa-envelope-o"></i>
                                <span class="social-text">Mail To Us</span>
                                </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--social design arae end-->
        <!-- shop area start-->
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu">
                            <ul class="cramb_area cramb_area_2 ">
                                <li><a href="index.jsp">Home /</a></li>
                                <li><a href="#">Cart</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop area end-->
        <div class="shopping_cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="account_heading account_heading_ah">
                            <h1>Cart</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="all_wis_frm">
                        <div class="col-md-12">
                            <div class="wishlist-content wishlist-content-2">
                                <form action="#">
                                    <div class="wishlist-table wishlist-table-2 table-responsive">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="product-remove"><span class="nobr"></span></th>
                                                    <th class="product-thumbnail product-thumbnail-2"></th>
                                                    <th class="product-name product-name_2"><span class="nobr">Product</span></th>
                                                    <th class="product-price"><span class="nobr"> Price </span></th>
                                                    <th class="product-stock-stauts"><span class="nobr"> Quantity </span></th>
                                                    <th class="product-add-to-cart"><span class="nobr">Total</span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="product-remove product-remove_2"><a href="#">×</a></td>
                                                    <td class="product-thumbnail product-thumbnail-2"><a href="#"><img src="img/wishlist/pic-1.jpg" alt="" /></a></td>
                                                    <td class="product-name product-name_2"><a href="#">Duis convallis</a></td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">$100.00</span></td>
                                                    <td class="product-stock-status">
                                                        <div class="latest_es_from_2">
                                                            <input type="number" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">$100.00</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="product-remove product-remove_2"><a href="#">×</a></td>
                                                    <td class="product-thumbnail product-thumbnail-2"><a href="#"><img src="img/wishlist/pic-2.jpg" alt="" /></a></td>
                                                    <td class="product-name"><a href="#">Adipiscing cursus eu</a></td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">$300.00</span></td>
                                                    <td class="product-stock-status">
                                                        <div class="latest_es_from_2">
                                                            <input type="number" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="product-price"><span class="amount-list amount-list-2">$100.00</span></td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="6">
                                                        <div class="coupon">
                                                            <label for="coupon_code"></label>
                                                            <input id="coupon_code" class="input-text" type="text" placeholder="Coupon code" value="" name="coupon_code">
                                                            <a class="button_act button_act_3 button_act_333 button_act_tp " href="#">apply coupon</a>
                                                            <a class="button_act btn-tip " href="#">Update cart</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </form>
                                <div class="row">
                                    <div class="col-md-6 col-xs-12">
                                        <div class="cart_totals ">
                                            <h2>Cart Totals</h2>
                                            <table class="shop_table shop_table_responsive">
                                                <tbody>
                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td data-title="Subtotal">
                                                            <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">$</span>
                                                            800.00
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td data-title="Total">
                                                            <strong>
                                                            <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">$</span>
                                                            800.00
                                                            </span>
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="wc-proceed-to-checkout">
                                                <a class="button_act button_act-tc " href="#">	Proceed to Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--brand area start-->
        <div class="logo_area">
            <div class="container">
                <div class="row">
                    <div class="brand brand-2">
                        <div class="new_product new_product_nx">
                            <div class="product_heading product_heading_tf">
                                <i class="fa fa-coffee"></i>
                                <span>Brand Logo</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="main_brand main_brand_tf">
                            <div class="all_brand indicator-brand indicator-brand-7">
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_1.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_2.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_4.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_5.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_6.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--brand area end-->
        <!--newsletter area start-->
        <div class="all_news_letter">
            <div class="news_letter">
                <div class="news_middele">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="news_heading">
                                    <h3> newsletter </h3>
                                </div>
                                <div class="full_form">
                                    <form id="form-newsletter1" class="widget_wysija" method="post" action="#wysija">
                                        <p class="wysija-paragraph">
                                            <input name="wysija[user][email]" class="wysija-input validate[required,custom[email]]" title="Enter Your Mail..." placeholder="Enter Your Mail..." value="" id="form-validation-field-0" style="" type="text">
                                        </p>
                                        <input class="wysija-submit wysija-submit-field" value="Subscribe!" type="submit">
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-6 col-xs-12">
                                <div class="news_right">
                                    <div class="news_heading news_heading_3">
                                        <h3>Follow us:</h3>
                                    </div>
                                    <ul class="social-icons">
                                        <li>
                                            <a class="facebook social-icon" href="#facebook" title="" target="_blank" data-toggle="tooltip" data-original-title="Facebook">
                                            <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="twitter social-icon" href="#twitter.com" title="" target="_blank" data-toggle="tooltip" data-original-title="Twitter">
                                            <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="google-plus social-icon" href="#google-plus" title="" target="_blank" data-toggle="tooltip" data-original-title="Google-plus">
                                            <i class="fa fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="youtube social-icon" href="#youtube" title="" target="_blank" data-toggle="tooltip" data-original-title="Youtube">
                                            <i class="fa fa-youtube"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="social-icon instagram" href="#" title="" target="_blank" data-toggle="tooltip" data-original-title="instagram">
                                            <i class="fa fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--newsletter area end-->
        <!--footer top area start-->
        <div class="footer_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>Information </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">our blog</a>
                                    </li>
                                    <li>
                                        <a href="#">about our shop</a>
                                    </li>
                                    <li>
                                        <a href="#">secure shopping</a>
                                    </li>
                                    <li>
                                        <a href="#">privecy policy</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>My Account </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">My Account</a>
                                    </li>
                                    <li>
                                        <a href="#">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="#">Shopping Cart</a>
                                    </li>
                                    <li>
                                        <a href="#">Checkout</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3> Our Services </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">Shipping & Returns</a>
                                    </li>
                                    <li>
                                        <a href="#">Secure Shopping</a>
                                    </li>
                                    <li>
                                        <a href="#">International Shipping</a>
                                    </li>
                                    <li>
                                        <a href="#">Affiliates</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu footer_menu_2">
                            <div class="news_heading_2">
                                <h3> Store Information </h3>
                            </div>
                            <ul>
                                <li>
                                    <i class="fa fa-home"></i>
                                    <p>My Company : 42 avenue des Champs Elysées 75000 France</p>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>Phone: (0123) 456789</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <p>Email: admin@hastech.company</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer top area end-->
            <!--footer middle area start-->
            <div class="footer_middle">
                <div class="container">
                    <div class="fotter_inner">
                        <div class="middele_pic">
                            <img src="img/icon/payment-300x30.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer middle area end-->
        <!--footer bottom area start-->
        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="#"></a>
                </div>
            </div>
        </div>
		<!--footer bottom area end-->
		
		
		
		
		
        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- nivo slider js -->
        <script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="lib/home.js" type="text/javascript"></script>
        <!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
        <!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
        <!-- easing js -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- mixitup js -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- jquery.countdown js -->
        <script src="js/jquery.countdown.min.js"></script>
        <!-- wow js -->
        <script src="js/wow.min.js"></script>
        <!-- popup js -->
        <script src="js/jquery.magnific-popup.min.js"></script> 
        <!-- plugins js -->
        <script src="js/plugins.js"></script>
        <!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>


