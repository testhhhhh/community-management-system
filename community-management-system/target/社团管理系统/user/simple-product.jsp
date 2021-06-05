<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Simple-Product</title>
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
    <style type="text/css">
        #news
            /*width:300px;*/
            /* height:100px;*/
            /* margin:20px auto;*/
            /* background-color:rgb(236, 231, 159);*/
            /* border:#039 solid 1px;*/
            /* overflow:hidden;!*这里必须设置哦，否则滚动会消失的，如果设置为scroll，更容易明白原理*!*/
        { width:100%;  text-align:left; padding:10px; height:150px; position:relative; overflow:hidden; font:16px Verdana, Geneva, sans-serif; color:#fff; text-align:left;}

        #news li{
            line-height:30px; padding-bottom:5px;
        }
        #news li a { color:#606060; text-decoration:none;}
        #news li a:hover { color:#09F;}
    </style>
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

        <!-- shop area start-->
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu shop_menu_2">
                            <ul class="cramb_area cramb_area_5">
<%--                                <li><a href="index.jsp">Home /</a></li>--%>
<%--                                <li><a href="index.jsp">Shop /</a></li>--%>
<%--                                <li><a href="index.jsp">Headlight/</a></li>--%>
<%--                                <li><a href="index.jsp">Hats /</a></li>--%>
<%--                                <li class="br-active">Cras nec nisl ut erat</li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--zoom elavator area one start-->
        <div class="elavator_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="elavetor">
                            <img id="zoom" src="../images/${Community.community_photo}" data-zoom-image="img/elavetor/large/l-8.jpg" alt="">
                            <div class="al_zoom">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="elav_titel">
                            <div class="elv_heading">
                                <h3>${Community.communityName}</h3>
                            </div>

                            <div class="evavet_description">

                                <p>${Community.communityInfo}</p>

                            </div>
                            <div class="new_meta">
                                <span class="sku_wrapper">
                                创建者:
                                <span class="sku">${Community.communityCreaterName}</span>
                                </span>

                                <span class="tagged_as">
                                社团人数:
                                <a rel="tag" href="#">${Community.communityNum}</a>
                                </span>
                            </div>
<%--                            <div class="elavetor_social">--%>
<%--                                <h3 class="widget-title">Share this product</h3>--%>
<%--                                <ul class="social-link">--%>
<%--                                    <li><a class="fb" data-original-title="facebook" href="#" title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>--%>
<%--                                    <li><a class="twit" data-original-title="twitter" href="#" title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>--%>
<%--                                    <li><a class="pinter" data-original-title="pinterest" href="#" title="" data-toggle="tooltip"><i class="fa fa-pinterest"></i></a></li>--%>
<%--                                    <li><a class="google+" href="#" title="Google+" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-google-plus"></i></a></li>--%>
<%--                                    <li><a class="lindin" href="#" title="LinkedIn" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-linkedin"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="elav_info">
                            <div class="price_box price_box_acr">
<%--                                <span class="old- price old- price-2">$250.00</span>--%>
<%--                                <span class="spical-price spical-price-2">$200.00</span>--%>
                            </div>
                            <form class="cart-btn-area" action="#">
<%--                                <input type="number" value="1">--%>
                                <c:if test="${com=='onecom'}">
                                <button class="add-tocart cart_zpf" type="submit">申请入团</button>
                                </c:if>
<%--                                <c:if test="${com=='mycom'}">--%>
<%--                                <button class="add-tocart cart_zpf" type="submit"></button>--%>
<%--                                </c:if>--%>
<%--                                <button class="add-tocart cart_zpf" type="submit">申请入团</button>--%>
                            </form>
<%--                            <div class="add_defi">--%>
<%--                                <a href="#" data-original-title="Add to Wishlist" data-toggle="tooltip">--%>
<%--                                <i class="fa fa-heart another_icon"></i>--%>
<%--                                Add to Wishlist--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="add_defi_2">--%>
<%--                                <a data-original-title="Compare" title="" data-toggle="tooltip" rel="nofollow" data-product_id="45" href=""><i class="fa fa-refresh another_icon"></i> Compare</a>--%>
<%--                            </div>--%>
                            <div class="new_meta">
                                <span class="sku_wrapper">
                                创建时间:
                                <span class="sku">${Community.communityCreateDate}</span>
                                </span>

                                <span class="tagged_as">
                                所属范围:
                                <a rel="tag" href="#">${Community.communityRange}</a>
                                </span>
                                <span class="sku_wrapper">
                                社团类别:
                                <span class="sku">${Community.communityClassName}</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--zoom elavator area one end-->
        <!--tab area start-->
        <div class="tab_area_start">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-right">
                        <div class="my-tabs">
                            <!-- Nav tabs -->
                            <ul class="favtabs favtabs-2 favtabs-nytr" role="tablist">
                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">社团活动</a></li>
                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews (2)</a></li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="home">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12">
                                            <div class="tb_desc">
<%--                                                <h2>Product Description</h2>--%>
<%--                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante.</p>--%>
<%--                                                <p>Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.</p>--%>
    <section class="our-services" id="notice">
<%--        <h3 class="text-center slideanim">活动公告</h3>--%>
        <div id="news" onmouseover="tz()" onmouseout="ks()" >
            <ul id="p1">

                <c:forEach var="act"  items="${activities }">
                    <li><a href="UserActivityInfoServlet?aid=${act.activityId}">${act.activityName}</a></li>
<%--                    <c:if test="${com=='mycom'}">--%>
<%--&lt;%&ndash;                        <a href="/alipay?aid=${act.activityId}&aname=${act.activityName}&loginname=${login.loginname}">我要参加</a>>&ndash;%&gt;--%>
<%--                        <a href="/alipay">我要参加</a>--%>
<%--                    </c:if>--%>
                </c:forEach>

            </ul>
            <ul id="p2">
            </ul>
        </div>

    </section>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12">
                                            <div class="tb_desc">
                                                <div class="review_area_heading">
                                                    <div id="comnt">
                                                        <h2>2 reviews for Cras nec nisl ut erat</h2>
                                                        <ol class="commentlist">
                                                            <li id="li-comment-22" class="comment even thread-even depth-1" itemscope="" >
                                                                <div id="comment-22" class="comment_container">
                                                                    <img class="avatar avatar-60 photo" width="60" height="60" src="img/icon/men_icon.jpg" alt="">
                                                                    <div class="comment-text">
                                                                        <div class="star-rating" title="Rated 4 out of 5" itemscope="">
                                                                            <div class="price_rating price_rating_2">
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
                                                                                <a class="not-rated" href="#">
                                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                                </a>
                                                                                <span>
                                                                                <strong >4</strong>
                                                                                out of 5
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                        <p class="meta">
                                                                            <strong>admin</strong>
                                                                            –
                                                                            <time datetime="2015-12-16T15:26:49+00:00">December 16, 2015</time>
                                                                            :
                                                                        </p>
                                                                        <div class="description">
                                                                            <p>like</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li  class="comment even thread-even depth-1" itemscope="">
                                                                <div class="comment_container">
                                                                    <img class="avatar avatar-60 photo" width="60" height="60" src="img/icon/men_icon.jpg" alt="">
                                                                    <div class="comment-text">
                                                                        <div class="star-rating" title="Rated 4 out of 5" itemscope="">
                                                                            <div class="price_rating price_rating_2">
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
                                                                                <a class="not-rated" href="#">
                                                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                                </a>
                                                                                <span>
                                                                                <strong>4</strong>
                                                                                out of 5
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                        <p class="meta">
                                                                            <strong >alex</strong>
                                                                            –
                                                                            <time datetime="2015-12-16T15:26:49+00:00">December 18, 2015</time>
                                                                            :
                                                                        </p>
                                                                        <div class="description">
                                                                            <p>google</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ol>
                                                    </div>
                                                    <div class="review_form_area">
                                                        <div class="review_form">
                                                            <div class="revew_form_content">
                                                                <h3 id="reply-title" class="comment-reply-title">
                                                                    Add a review
                                                                    <small>
                                                                    <a id="cancel-comment-reply-link" style="display:none;" href="#" rel="nofollow">Cancel reply</a>
                                                                    </small>
                                                                </h3>
                                                                <form id="commentform" class="comment-form" method="post" action="form">
                                                                    <div class="comment-form-rating">
                                                                        <label class="comment">Your Rating</label>
                                                                        <div class="price_rating price_rating_2 price_rating_3">
                                                                            <a href="#">
                                                                            <i class="fa fa-star-o"></i>
                                                                            </a>
                                                                            <a href="#">
                                                                            <i class="fa fa-star-o"></i>
                                                                            </a>
                                                                            <a href="#">
                                                                            <i class="fa fa-star-o"></i>
                                                                            </a>
                                                                            <a href="#">
                                                                            <i class="fa fa-star-o"></i>
                                                                            </a>
                                                                            <a href="#">
                                                                            <i class="fa fa-star-o"></i>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="comment-form-comment">
                                                                        <label class="comment">Your Review</label>
                                                                        <textarea id="comment" aria-required="true" rows="8" cols="45" name="comment"></textarea>
                                                                    </div>
                                                                    <div class="comment-form-author">
                                                                        <label class="comment">
                                                                        Name
                                                                        <span class="required required_menu">*</span>
                                                                        </label>
                                                                        <input id="author" class="mix_type" type="text" aria-required="true" size="30" value="" name="author">
                                                                    </div>
                                                                    <div class="comment-form-email">
                                                                        <label class="comment">
                                                                        Email
                                                                        <span class="required required_menu">*</span>
                                                                        </label>
                                                                        <input id="email" class="mix_type" type="text" aria-required="true" size="30" value="" name="email">
                                                                    </div>
                                                                    <div class="form-submit">
                                                                        <input id="sub" class="submt" type="submit" value="Submit" name="submit">
                                                                    </div>
                                                                </form>
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
                    </div>
                </div>
            </div>
        </div>
        <!--tab area end-->

        <!--footer bottom area start-->
        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="#"></a>
                </div>
            </div>
        </div>
        <!-- all js here -->
        <!--modal content start-->
        <!-- Modal -->
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
        <!--modal content end-->
		
		
		
		
		
		
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- nivo slider js -->
        <script src="lib/js/jquery.nivo.slider.js" type="text/javascript">           </script>
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
        <script type="text/javascript">
            var n=document.getElementById("news");
            var p1=document.getElementById("p1");
            var p2=document.getElementById("p2");
            p2.innerHTML=p1.innerHTML;
            //alert(n.offsetHeight+" 1  "+p1.offsetHeight);
            var f=function(){
                n.scrollTop++;
                if(n.scrollTop>=p1.offsetHeight){
                    //alert(n.scrollTop+" 1  "+p1.offsetHeight);
                    n.scrollTop=0;
                }
            }
            var i=setInterval(f,20);
            var tz=function(){
                clearInterval(i);
            }
            var ks=function(){
                i=setInterval(f,20);
            }
        </script>
    </body>
</html>


