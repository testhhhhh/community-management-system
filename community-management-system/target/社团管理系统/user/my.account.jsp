<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<%--<!doctype html>--%>
<%--<html class="no-js" lang="en">--%>
<%--    <head>--%>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My-Account</title>
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
        <!--social design arae end-->
        <!-- shop area start-->
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu shop_menu_tk ">
                            <ul class="cramb_area cramb_area_2 cramb_area_ktp">
                                <li><a href="index.jsp">Home /</a></li>
                                <li><a href="#">My Account</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop area end-->
        <!--my account area start-->
        <div class="my_account_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="account_heading">
                            <h1>个人中心</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <form action="/user/UserMemberInfoUpdate" method="post">
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content">
<%--                                <h2>Login</h2>--%>
                            </div>
<%--                            <a  target="mainFrame"  class="">更新信息</a>--%>
<%--                            <c:if test="${param.rs =='namewrong' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>没有此用户，请先添加</b></font></c:if>--%>
<%--                            <c:if test="${param.rs =='success' }"><font -size="4px"; color=blue>&nbsp;&nbsp;&nbsp;<b>更新成功</b></font></c:if>--%>
<%--                            <c:if test="${param.rs =='fail' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>更新失败，请重新尝试</b></font></c:if>--%>
<%--                            <c:if test="${param.rs =='wrong' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>旧密码错误</b></font></c:if>--%>
<%--                            <form>--%>
                                <div class="al_form-fields">
                                    <p>
                                        <label>
                                        用户名
                                        <span class="required">*</span>
                                        </label>
                                        <input name="loginname" readonly value="${member.loginName}">
                                    </p>
                                    <p>
                                        <label>
                                        姓名
                                        <span class="required">*</span>
                                        </label>
                                        <input name="name" value="${member.memberName}">
                                    </p>
                                    <p>
                                        <label>
                                        性别
                                        <span class="required">*</span>
                                        </label>
                                        <input name="gender" value="${member.memberGender}">
                                    </p>
                                    <p>
                                        <label>
                                        邮箱
                                        <span class="required">*</span>
                                        </label>
                                        <input name="email" value="${member.memberEmail}">
                                    </p>
                                    <p>
                                        <label>
                                        电话
                                        <span class="required">*</span>
                                        </label>
                                        <input name="phone" value="${member.memberPhone}">
                                    </p>
                                </div>
<%--                                <div class="form-action">--%>
<%--                                    <div class="new_act new_act_3">--%>
<%--                                        <a class="button_act button_act_3">Login</a>--%>
<%--                                        <label>--%>
<%--                                        <input type="checkbox">--%>
<%--                                        Remember me--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                    <p class="lost_password">--%>
<%--                                        <a href="#">Lost your password?</a>--%>
<%--                                    </p>--%>
<%--                                </div>--%>
<%--                            </form>--%>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content">
<%--                                <h2>Register</h2>--%>
                            </div>
<%--                            <form>--%>
                                <div class="al_form-fields">
                                    <p>
                                        <label>
                                        年级
                                        <span class="required">*</span>
                                        </label>
                                        <input name="grade" value="${member.memberGrade}">
                                    </p>
                                    <p>
                                        <label>
                                        学院
                                        <span class="required">*</span>
                                        </label>
                                        <input name="institute" value="${member.memberInstitute}">
                                    </p>
                                    <p>
                                        <label>
                                        宿舍
                                        <span class="required">*</span>
                                        </label>
                                        <input name="add" value="${member.memberAdd}">
                                    </p>
                                    <p>
                                        <label>
                                        社团
                                        <span class="required">*</span>
                                        </label>
                                        <input name="community" readonly value="${member.joinCommunity}">
                                    </p>
                                    <p>
                                        <label>
                                        积分
                                        <span class="required">*</span>
                                        </label>
                                        <input name="point" readonly value="${member.activity_point}">
                                    </p>
                                </div>
                                <div class="form-action">
                                    <div class="new_act new_act_3">
<%--                                        <a class="button_act button_act_3">修改</a>--%>
                                        <input class="button_act button_act_3" type="submit" value="修改">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="new-meta">
                    <a class=" btn btn-default btn-default-tf" href="">
                    <i class="fa fa-pencil"></i>
                    </a>
                </div>
            </div>
        </div>
        <!--my account area end-->
        <!--newsletter area start-->

        <!--newsletter area end-->
        <!--footer top area start-->
        <!--footer middle area end-->
        <!--footer bottom area start-->
        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
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


