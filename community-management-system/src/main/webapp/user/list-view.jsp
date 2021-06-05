<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>




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

    </style>
        <script type="text/javascript">
            <%--var url="UserActivityInfoServlet?aid="+"${activity.activityId}";--%>
            function gogogo(){
                alert("已发送申请");
            }
            function classgo(){
                alert("adfsdfs");
                var classId=document.classForm.classId.value;
                var xmlHttp;
                if(window.XMLHttpRequest){
                    xmlHttp=new XMLHttpRequest();
                    alert("XMLHttpRequest");
                }
                else{
                    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    alert(" ActiveXObject");
                }
                var url="UserQueryCommunityServlet?classId="+classId+"&lru=clist";
                xmlHttp.open("get",url,true);
                xmlHttp.onreadystatechange=function(){
                    if(xmlHttp.readyState==4){
                        alert("fdfffffffffffffffffffffff");
                        document.getElementById("profile").innerHTML=xmlHttp.responseText;
                    }
                    else{
                        document.getElementById("profile").innerHTML+="正在查询，请稍后......";
                    }
                }
                xmlHttp.send();
            }

            <%--function noticego(){--%>
            <%--    alert("adfsdfs");--%>
            <%--    // var noticehref=document.noticeid.href.value;--%>
            <%--    var xmlHttp;--%>
            <%--    if(window.XMLHttpRequest){--%>
            <%--        xmlHttp=new XMLHttpRequest();--%>
            <%--        alert("XMLHttpRequest");--%>
            <%--    }--%>
            <%--    else{--%>
            <%--        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");--%>
            <%--        alert(" ActiveXObject");--%>
            <%--    }--%>
            <%--    var url="UserNoticeInfoServlet?nid=${notice.noticeId}"--%>
            <%--    xmlHttp.open("get",url,true);--%>
            <%--    xmlHttp.onreadystatechange=function(){--%>
            <%--        if(xmlHttp.readyState==4){--%>
            <%--            alert("fdfffffffffffffffffffffff");--%>
            <%--            document.getElementsByName("noticeid").innerHTML=xmlHttp.responseText;--%>
            <%--        }--%>
            <%--        else{--%>
            <%--            document.getElementsByName("noticeid").innerHTML+="正在查询，请稍后......";--%>
            <%--        }--%>
            <%--    }--%>
            <%--    xmlHttp.send();--%>
            <%--}--%>

            <%--function activitygo(){--%>
            <%--    alert("adfsdfs");--%>
            <%--    // var activityhref=document.activityid.href.value;--%>
            <%--    var xmlHttp;--%>
            <%--    if(window.XMLHttpRequest){--%>
            <%--        xmlHttp=new XMLHttpRequest();--%>
            <%--        alert("XMLHttpRequest");--%>

            <%--    }--%>
            <%--    else{--%>
            <%--        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");--%>

            <%--    }--%>

            <%--    alert(url);--%>
            <%--    xmlHttp.open("get",url,true);--%>
            <%--    xmlHttp.onreadystatechange=function(){--%>
            <%--        if(xmlHttp.readyState==4){--%>
            <%--            alert("fdfffffffffffffffffffffff");--%>
            <%--            document.getElementsByName("activityid").innerHTML=xmlHttp.responseText;--%>
            <%--        }--%>
            <%--        else{--%>
            <%--            document.getElementsByName("activityid").innerHTML+="正在查询，请稍后......";--%>
            <%--        }--%>
            <%--    }--%>
            <%--    xmlHttp.send();--%>
            <%--}--%>
    </script>
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


<div class="shop_area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="shop_menu">
                    <ul class="cramb_area cramb_area_5">
                        <li><a href="index.html">社团 </a></li>
<%--                        <li class="br-active"><a href="#">Shop</a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <!--bar area start-->
        <div class="row">
            <div class="col-md-3">
                <div class="category-widget-menu">
                    <h2 class="cat-menu-title text-uppercase">社团公告</h2>
                    <div class="menu-categories-container">
                        <ul class="menu-categories">
                            <c:forEach var="notice"  items="${notices }">
                                <li><a href="UserNoticeInfoServlet?nid=${notice.noticeId}" name="noticeid" >${notice.noticeName}</a></li>

                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="category-widget-menu">
                            <h2 class="cat-menu-title text-uppercase">社团活动</h2>
                            <div class="menu-categories-container">
                                <ul class="menu-categories">
                                    <c:forEach var="activity"  items="${activities }">
                                        <li><a href="UserActivityInfoServlet?aid=${activity.activityId}" name="activityid" >${activity.activityName}</a></li>

                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="category-widget-menu">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="bar">
                    <p class="result_show">社团类型</p>
                    <div class="bar_box">
                        <form name="classForm" action="classForm">
                            <select name="classId" onchange="classgo()">
                                <option value="0000" >全部</option>
                                <option value="1001" >科技创新</option>
                                <option value="1002">理论研究</option>
                                <option value="1003">社会服务</option>
                                <option value="1004">试运行</option>
                                <option value="1005">体育竞技</option>
<%--                                <option value="Sort by price: low to low">Sort by price: low to low</option>--%>
                            </select>
                        </form>
                    </div>
                    <div class="right_area">
                        <!-- Nav tabs -->
                        <ul class="retabs" role="tablist">
                            <li role="presentation"><a href="#home" role="tab" data-toggle="tab"><i class="fa fa-th"> Grid</i></a></li>
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
                                <c:forEach items="${Community }" var="com" >
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
                                                                    <img class="primary-img" src="../images/${com.community_photo}" alt="" />
                                                                    <img class="secondary-img" src="../images/index.jpg" alt="" />
                                                                </a>
                                                            </div>
                                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                                <form action="/user/UserQueryCommunityServlet?cid=${com.communityId}&lru=comInfo&com=onecom" method="post">
                                                                <input type="submit" class="btn btn-info btn-lg quickview quickview_2" value="详细介绍" />
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8 col-sm-8 pl pr">
                                                        <div class="product_content product_content_nx">
                                                            <div class="usal_pro">
                                                                <div class="product_name_2 product_name_3 prnm">
                                                                    <h2>
                                                                        <a href="#">${com.communityName}</a>
                                                                    </h2>
                                                                    <div class="pro_discrip">
                                                                        <p>${com.communityInfo}</p>
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
                                                                                    <a class="button_act button_act_2 button_act_hts" data-quick-id="45" onclick="gogogo()" href="/user/UserRegistServlet?ope=apply&cid=${com.communityId}&loginName=${login.loginName}" title="" data-toggle="tooltip" data-original-title="Donec non est at">申请入团</a>
<%--    <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="/alipay" title="" data-toggle="tooltip" data-original-title="Donec non est at">申请入团</a>--%>
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


                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="navi_area">
                                共有${page.itemCont} 条记录，当前${page.pageCurrent}/${page.pageCont}页分页
                                <ul>
                                    <li class="active-2">
                                        <c:choose>
                                            <c:when test="${page.pageCurrent==1 }">
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent }">首页</a>
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent }">上一页</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="Query?lru=clist&cpage=1">首页</a>
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent-1}">上一页</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                    <li>
                                        <c:choose>
                                            <c:when test="${page.pageCurrent==page.pageCont }">
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent }">下一页</a>
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent }">尾页</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="Query?lru=clist&cpage=${page.pageCurrent+1}">下一页</a>
                                                <a href="Query?lru=clist&cpage=${page.pageCont}">尾页</a></c:otherwise>
                                        </c:choose>
                                    </li>
                                    <%--                                    <li>--%>
                                    <%--                                        <a href="#">--%>
                                    <%--                                            <i class="fa fa-angle-right"></i>--%>
                                    <%--                                        </a>--%>
                                    <%--                                    </li>--%>
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


