<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contact Us</title>
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
        <!-- popup css -->
        <link rel="stylesheet" href="css/magnific-popup.css">
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
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_right_area">
                                <ul>
                                    <li>
                                        <a class="account" href="/user/UserMemberInfoServlet?mname=${login.loginName }">个人中心</a>
                                    </li>
                                    <li>
                                        <a class="wishlist" href="/user/UserQueryCommunityServlet?cid=-1&lru=comInfo&com=mycom">我的社团</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header top area end-->
            <!--header middle area start-->
            <div class="header_middle" >
                <%--        <img src="img/header2.png"  id="header2" alt="" />--%>
                <div class="container">
                    <div class="row">

                        <div class="col-md-3">
                            <div class="logo_area">
                                <a href="index.jsp"><img src="img/xh.png" alt="" /></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--header bottom area start-->
            <div class="all_menu_area">
                <div class="menu_inner">
                    <div class="container" id="memulist">
                        <div class="full_menu clearfix">
                            <div class="new_menu">
                                <div class="drp-menu">

                                    <!--menu area start-->
                                    <div class="col-md-9 pl">
                                        <div class="menu_area">
                                            <div class="menu">
                                                <nav>
                                                    <ul>
                                                        <li><a href="Query?lru=clist">首页</a></li>
                                                        <li><a href="Query?lru=nlist">公告中心</a></li>
                                                        <li><a href="Query?lru=alist">活动中心</a></li>
                                                        <%--                                                <li><a href="list-view.html">社团中心</a></li>--%>
                                                        <%--                                                <li><a href="my.account.jsp">我的账户</a></li>--%>
                                                        <%--                                                <li><a href="simple-product.jsp">公告中心</a></li>--%>
                                                        <%--                                                <li><a href="contact-us.jsp">联系我们</a></li>--%>
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
        <!-- googleMap-area-start -->
        <div id="googleMap"></div>
        <!-- googleMap-end -->
        <!-- comnt_area start -->
        <div class="comnt_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content frm_content_2">
                                <h2>Leave a comments</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris convallis sed neque vitae bibendum. Nunc auctor dictum risus, a finibus eros iaculis nec. Sed et euismod felis, non euismod est. Maecenas quis nulla ullamcorper, imperdiet lacu</p>
                            </div>
                            <form class="side_right">
                                <div class="al_form-fields al_form-fields-2">
                                    <p>
                                        Your Name (required)
                                        <input type="text">
                                    </p>
                                    <p>
                                        Your Email (required)
                                        <input type="password">
                                    </p>
                                    <p>
                                        Comment
                                        <br>
                                        <span class="wpcf7-form-control-wrap your-message">
                                        <textarea class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" aria-invalid="false" aria-required="true" rows="10" cols="40" name="your-message"></textarea>
                                        </span>
                                    </p>
                                    <p>* Required Fields</p>
                                </div>
                                <div class="form-action form-action-2">
                                    <div class="new_act new_act_3">
                                        <a class="button_act button_act_3" href="#">Send</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content frm_content_2">
                                <h2>Contact details</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris convallis sed neque vitae bibendum. Nunc auctor dictum risus, a finibus eros iaculis nec. Sed et euismod felis, non euismod est. Maecenas quis nulla ullamcorper, imperdiet lacu</p>
                                <h2>OFFICE ADDRESS</h2>
                                <p>Maecenas quis nulla ullamcorper</p>
                                <h2>EMAIL</h2>
                                <p>lion-themes@gmail.com</p>
                                <h2>PHONE NUMBER</h2>
                                <p>025 1234 5678 – 025 1234 5779</p>
                                <h2>TIME HOURS</h2>
                                <p>Monday to Friday: 10am to 7pm <br>
                                    Saturday: 10am to 4pm <br>
                                    Sunday: 12am to 4pm
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- comnt_area end -->
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
        <!-- googleapis -->
        <script src="http://ditu.google.cn/maps/api/js"></script>
        <script type="text/javascript">
            /* Google Map js */
            function initialize() {
              var mapOptions = {
            	zoom: 15,
            	scrollwheel: false,
            	center: new google.maps.LatLng(23.810332, 90.412518)
              };
            
              var map = new google.maps.Map(document.getElementById('googleMap'),
            	  mapOptions);
            
              var marker = new google.maps.Marker({
            	position: map.getCenter(),
            	animation:google.maps.Animation.BOUNCE,
            	icon: 'img/contact-us/map.png',
            	map: map
              });
            
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </body>
</html>


