<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <head>
<%--        <meta charset="utf-8">--%>
<%--        <meta http-equiv="x-ua-compatible" content="ie=edge">--%>
<%--        <title>List-View</title>--%>
<%--        <meta name="description" content="">--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1">--%>
		
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



   
        <div class="header_area">
            <div class="header_border">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_heaft_area">
                                <div class="header_left_all">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_right_area">
                                <ul>
                                    <li>
                                        <a class="account" href="#">个人中心</a>
                                    </li>
                                    <li>
                                        <a class="wishlist" href="#">我的社团</a>
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
                                <a href="index.html"><img src="img/logo-pic/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="header_all search_box_area">
                                <form class="new_search" role="search" method="get" action="#">
                                    <input id="mix_search" class="search-field" placeholder="查找社团…" value="" name="s" title="Search for:" type="search">
                                    <input value="Search" type="submit">
                                    <input name="post_type" value="product" type="hidden">
                                </form>
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
                                        <div class="catagory_menu_area">
                                        </div>
                                    </div>
                                    <!--menu area start-->
                                    <div class="col-md-9 pl">
                                        <div class="menu_area">
                                            <div class="menu">
                                                <nav>
                                                    <ul>
                                                        <li><a href="index.html">主页</a></li>
														<li><a href="about-us.html">关于我们</a></li>
														<li><a href="cart.html">活动中心</a></li>
														<li><a href="list-view.jsp">社团中心</a></li>
														<li><a href="my.account.html">我的账户</a></li>
														<li><a href="simple-product.html">公告中心</a></li>
														<li><a href="contact-us.html">联系我们</a></li>
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

        <div class="mobile-menu-area hidden-md hidden-lg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                                <ul id="nav">
                                    <li><a href="index.html">Home</a></li>
									<li><a href="about-us.html">About</a></li>
									<li><a href="cart.html">Cart</a></li>
									<li><a href="list-view.jsp">List</a></li>
									<li><a href="my.account.html">Account</a></li>
									<li><a href="simple-product.html">Product</a></li>
									<li><a href="contact-us.html">Contact us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
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
    
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu">
                            <ul class="cramb_area cramb_area_5">
                                <li><a href="index.html">Home /</a></li>
                                <li class="br-active"><a href="#">Shop</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--bar area start-->
                <div class="row">
                    <div class="col-md-3">

                    </div>
                    <div class="col-md-9">
                        <div class="bar">
                            <p class="result_show">Showing 1–15 of 21 results</p>
                            <div class="bar_box">
                                <form action="#">
                                    <select>
                                        <option value="Default sorting">Default sorting</option>
                                        <option value="Sort by popularity">Sort by popularity</option>
                                        <option value="Sort by average rating">Sort by average rating</option>
                                        <option value="Sort by newness">Sort by newness</option>
                                        <option value="Sort by price: low to high">Sort by price: low to high</option>
                                        <option value="Sort by price: low to low">Sort by price: low to low</option>
                                    </select>
                                </form>
                            </div>
                            <div class="right_area">
                                <!-- Nav tabs -->
                                <ul class="retabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#profile" role="tab" data-toggle="tab"><i class="fa fa-list"> List</i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane" id="home">
                                <div class="row">
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane active" id="profile">
                                <div class="row">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
                                        <c:forEach items="${Community }" var="com" varStatus="status">
                                        <tr>
                                            <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_2 single_product_3rd">
                    
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">详细介绍</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">${com.communityName}Accumsan eli</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>${com.Info}Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                        
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price"></span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">申请入团</a>
                                                                            </div>
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
                                        </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <!-- <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_6">
                                                            <span>New</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_5.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Adipiscing cursus eu</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$300.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_2 single_product_3rd">
                                                            <span>hot</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Commodo augue</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$2.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product_3 single_product_7 ">
                                                            <span>sale</span>
                                                        </div>
                                                        <div class="single_product single_product_2  single_product_3rd">
                                                            <span>hot</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_7.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Cras nec nisl ut erat</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$200.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_10.jpg" alt="" />
                                                            <img class="secondary-img" src="img/top-pic/top_pic_8.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Cras neque</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$200.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_2 single_product_3rd">
                                                            <span>hot</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_8.jpg" alt="" />
                                                            <img class="secondary-img" src="img/top-pic/top_pic_9.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Donec a neque</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$200.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_6">
                                                            <span>New</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_2.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Donec non est at</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$250.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_2 single_product_3rd">
                                                            <span>hot</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_2.jpg" alt="" />
                                                            <img class="secondary-img" src="img/top-pic/top_pic_3.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$200.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_6">
                                                            <span>New</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$100.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product_3 single_product_7 ">
                                                            <span>sale</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                            <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Etiam gravida</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$150.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_2  single_product_3rd">
                                                            <span>hot</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_11.jpg" alt="" />
                                                            <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Ligula euismod eget</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$200.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product single_product_6">
                                                            <span>New</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_11.jpg" alt="" />
                                                            <img class="secondary-img" src="img/top-pic/top_pic_12.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Lorem nec augue</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$220.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="single_product_3 single_product_7 ">
                                                            <span>sale</span>
                                                        </div>
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_7.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere </a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$150.00 </span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/top-pic/top_pic_12.jpg" alt="" />
                                                            <img class="secondary-img" src="img/top-pic/top_pic_11.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Morbi ornare </a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$9.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="all-pros br-ntf">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-4 pl pr">
                                                    <div class="sngl-pro">
                                                        <div class="sinle_pic sngl-pc sinle_pic_2xd">
                                                            <a href="#">
                                                            <img class="primary-img" src="img/product-pic/product_pic_8.jpg" alt="" />
                                                            <img class="secondary-img" src="img/product-pic/product_pic_9.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                            <button type="button" class="btn btn-info btn-lg quickview quickview_2" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-sm-8 pl pr">
                                                    <div class="product_content product_content_nx">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2 product_name_3 prnm">
                                                                <h2>
                                                                    <a href="#">Nam fringilla</a>
                                                                </h2>
                                                                <div class="pro_discrip">
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                                                </div>
                                                            </div>
                                                            <div class="action actionmm">
                                                                <div class="product_price product_price_tz">
                                                                    <div class="price_rating">
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a href="#">
                                                                        <i class="fa fa-star"></i>
                                                                        </a>
                                                                        <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="price_box price_box_tz">
                                                                    <span class="spical-price">$100.00</span>
                                                                </div>
                                                                <div class="last_button_area">
                                                                    <ul class="add-to-links clearfix">
                                                                        <li>
                                                                            <div class="new_act">
                                                                                <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add to Cart</a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addwishlist">
                                                                            <div class="yith-wcwl-add-button  show" >
                                                                                <a class="add_to_wishlist_3 add_to_wishlist_tz" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                            </div>
                                                                        </li>
                                                                        <li class="addcompare">
                                                                            <div class="woocommerce product compare-button">
                                                                                <a class="compare_3 compare_3r button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                            </div>
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
                                </div> -->
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="navi_area">
                                        <ul>
                                            <li class="active-2">
                                                <a href="#">1</a>
                                            </li>
                                            <li>
                                                <a href="#">2</a>
                                            </li>
                                            <li>
                                                <a href="#">
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

        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    &copy; 社团管理中心<a target="_blank" href="#"></a>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <div class="row">
                                <div class="new_port new_port_2">
                                    <div class="port_pix">
                                        <img src="img/product-pic/product_pic_2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="elav_titel elav_titel_2">
                                    <div class="elv_heading elv_heading_therteen">
                                        <h3>Donec non est at</h3>
                                    </div>
                                    <div class="elav_info">
                                        <div class="price_box price_box_pb">
                                            <span class="spical-price spical-price-nk">$250.00</span>
                                        </div>
                                        <form class="cart-btn-area cart-btn-area-dec" action="#">
                                            <a class="see-all" href="#">See all features</a><br>
                                            <input type="number" value="1">
                                            <button class="add-tocart add-tocart-2" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="evavet_description evavet_description_dec">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                    </div>
                                    <div class="elavetor_social">
                                        <h3 class="widget-title">Share this product</h3>
                                        <br>
                                        <ul class="social-link social-link-bbt">
                                            <li><a class="fb" data-original-title="facebook" href="#" title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
                                            <li><a class="twit" data-original-title="twitter" href="#" title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>
                                            <li><a class="pinter" data-original-title="pinterest" href="#" title="" data-toggle="tooltip"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a class="google+" href="#" title="Google+" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a class="lindin" href="#" title="LinkedIn" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
		
		
		
		
		
		
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


