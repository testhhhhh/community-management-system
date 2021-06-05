<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>About Us</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    <style type="text/css">
        .our-services{background-color: #d5ded7;padding-bottom: 10px; margin-bottom: -80px;margin-top: -60px;}
        #container { width:80%; margin:30px auto; text-align:left; padding:10px; border:1px solid #ccc; height:250px; position:relative; overflow:hidden; font:16px Verdana, Geneva, sans-serif; color:#fff; text-align:left;}
        .noticeList { width:80%; list-style:inside; position:absolute; top:270px; left:10px;}
        .noticeList li { padding-bottom:5px;}
        .noticeList li a { color:#606060; text-decoration:none;}
        .noticeList li a:hover { color:#09F;}
        #news
           /*width:300px;*/
           /* height:100px;*/
           /* margin:20px auto;*/
           /* background-color:rgb(236, 231, 159);*/
           /* border:#039 solid 1px;*/
           /* overflow:hidden;!*这里必须设置哦，否则滚动会消失的，如果设置为scroll，更容易明白原理*!*/
        { width:80%; margin:30px auto; text-align:left; padding:10px; border:1px solid #ccc; height:250px; position:relative; overflow:hidden; font:16px Verdana, Geneva, sans-serif; color:#fff; text-align:left;}

         #news li{
             line-height:30px; padding-bottom:5px;
        }
        #news li a { color:#606060; text-decoration:none;}
        #news li a:hover { color:#09F;}

    </style>
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

        <section class="new_inner_area">

    <!--/notice-->
    <section class="our-services" id="notice">
        <h3 class="text-center slideanim">活动公告</h3>
        <div id="news" onmouseover="tz()" onmouseout="ks()">
            <ul id="p1">

                <c:forEach var="act"  items="${activity }">
            <li><a href="UserActivityInfoServlet?aid=${act.activityId}">${act.activityName}</a></li>
                </c:forEach>
            </ul>
            <ul id="p2">
            </ul>
            </div>

    </section>
        </section>
        <!--inner area end-->
        <!--about our team area start-->
        <section class="about_our_team_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="our_team_new_head">
                            <h2>About Our Team</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="all_team_membar">
                        <div class="col-md-4">
                            <div class="team_member_pic">
                                <img src="img/team-pic/team-small-1.png" alt=""> 
                            </div>
                            <div class="team_new_cntnt">
                                <h3 style="text-align: center;">Nick Monroe</h3>
                                <h4 style="text-align: center;">Human Resources</h4>
                                <p style="text-align: center;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team_member_pic">
                                <img src="img/team-pic/team-small-2.png" alt=""> 
                            </div>
                            <div class="team_new_cntnt">
                                <h3 style="text-align: center;">Nick Monroe</h3>
                                <h4 style="text-align: center;">Human Resources</h4>
                                <p style="text-align: center;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team_member_pic">
                                <img src="img/team-pic/team-small-3.png" alt=""> 
                            </div>
                            <div class="team_new_cntnt">
                                <h3 style="text-align: center;">Nick Monroe</h3>
                                <h4 style="text-align: center;">Human Resources</h4>
                                <p style="text-align: center;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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


