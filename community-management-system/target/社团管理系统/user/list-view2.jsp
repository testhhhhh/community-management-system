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

</head>
<body>

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
                                                                                    <a class="button_act button_act_2 button_act_hts" data-quick-id="45" href="/user/UserRegistServlet?ope=apply" title="" data-toggle="tooltip" data-original-title="Donec non est at">申请入团</a>
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


