<!DOCTYPE html>
<html lang="en">

<%-- <%@ include file="/WEB-INF/views/Layout/TagLib.jsp" %> --%>


<head>
<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@  taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="<spring:url value="/resources/images/icons/favicon.png"/>" type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/fonts/themify/themify-icons.css"/>" type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/fonts/elegant-font/html-css/style.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/animate/animate.css"/>" type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/animsition/css/animsition.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/select2/select2.min.css"/>" type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/slick/slick.css"/>" type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/vendor/lightbox2/css/lightbox.min.css"/>"
          type="text/css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" href="<spring:url value="/resources/css/main.css"/>"
          type="text/css"/>

    <link rel="stylesheet" href="<spring:url value="/resources/css/util.css"/>"
          type="text/css"/>
    <spring:url value="/resources/css/util.css" var="kmhome16"></spring:url>
    <script src="${kmhome16}"></script>
    <!--===============================================================================================-->
    <spring:url value="/resources/css/main.css" var="kmhome15"></spring:url>
    <script src="${kmhome15}"></script>
    <!--===============================================================================================-->
</head>
<body class="animsition">

<!-- Footer -->
<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
    <div class="flex-w p-b-90">
        <div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
            <h4 class="s-text12 p-b-30">
                GET IN TOUCH
            </h4>

            <div>
                <p class="s-text7 w-size27">
                    Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on
                    (+1) 96 716 6879
                </p>

                <div class="flex-m p-t-30">
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a>
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a>
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a>
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-snapchat-ghost"></a>
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play"></a>
                </div>
            </div>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                Categories
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Men
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Women
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Dresses
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Sunglasses
                    </a>
                </li>
            </ul>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                Links
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Search
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        About Us
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Contact Us
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Returns
                    </a>
                </li>
            </ul>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                Help
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Track Order
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Returns
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Shipping
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        FAQs
                    </a>
                </li>
            </ul>
        </div>

        <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
            <h4 class="s-text12 p-b-30">
                Newsletter
            </h4>

            <form>
                <div class="effect1 w-size9">
                    <input class="s-text7 bg6 w-full p-b-5" type="text" name="email" placeholder="email@example.com">
                    <span class="effect1-line"></span>
                </div>

                <div class="w-size2 p-t-20">
                    <!-- Button -->
                    <button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
                        Subscribe
                    </button>
                </div>

            </form>
        </div>
    </div>

    <div class="t-center p-l-15 p-r-15">
        <a href="#">
            <img class="h-size2" src="images/icons/paypal.png" alt="IMG-PAYPAL">
        </a>

        <a href="#">
            <img class="h-size2" src="images/icons/visa.png" alt="IMG-VISA">
        </a>

        <a href="#">
            <img class="h-size2" src="<spring:url value="/resources/images/icons/mastercard.png" ></spring:url>"
                 alt="IMG-MASTERCARD">
        </a>

        <a href="#">
            <img class="h-size2" src="<spring:url value="/resources/images/icons/express.png" ></spring:url>"
                 alt="IMG-EXPRESS">
        </a>

        <a href="#">
            <img class="h-size2" src="<spring:url value="/resources/images/icons/discover.png" ></spring:url>"
                 alt="IMG-DISCOVER">
        </a>

        <div class="t-center s-text8 p-t-20">
            Copyright Â© 2018 All rights reserved. | This template is made with <i class="fa fa-heart-o"
                                                                                  aria-hidden="true"></i> by <a
                href="https://colorlib.com" target="_blank">Colorlib</a>
        </div>
    </div>
</footer>


<!-- Back to top -->
<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
</div>

<!-- Container Selection1 -->
<div id="dropDownSelect1"></div>

<!-- Modal Video 01-->
<div class="modal fade" id="modal-video-01" tabindex="-1" role="dialog" aria-hidden="true">

    <div class="modal-dialog" role="document" data-dismiss="modal">
        <div class="close-mo-video-01 trans-0-4" data-dismiss="modal" aria-label="Close">&times;</div>

        <div class="wrap-video-mo-01">
            <div class="w-full wrap-pic-w op-0-0"><img
                    src="<spring:url value="/resources/images/icons/video-16-9.jpg" var="kmhome1"></spring:url>"
                    alt="IMG"></div>
            <div class="video-mo-01">
                <iframe src="https://www.youtube.com/embed/Nt8ZrWY2Cmk?rel=0&amp;showinfo=0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div> 

<!--===============================================================================================-->

<spring:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" var="kmhome1"></spring:url>
<script src="${kmhome1}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/jquery/jquery.validate.min.js" var="kmhome1"></spring:url>
<script src="${kmhome1}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/animsition/js/animsition.min.js" var="kmhome2"></spring:url>
<script src="${kmhome2}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/bootstrap/js/popper.js" var="kmhome3"></spring:url>
<script src="${kmhome3}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" var="kmhome4"></spring:url>
<script src="${kmhome4}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/select2/select2.min.js" var="kmhome5"></spring:url>
<script src="${kmhome5}"></script>

<script type="text/javascript">
    $(".selection-1").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect1')
    });
</script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/slick/slick.min.js" var="kmhome6"></spring:url>
<script src="${kmhome6}"></script>


<spring:url value="/resources/js/slick-custom.js" var="kmhome7"></spring:url>
<script src="${kmhome7}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/countdowntime/countdowntime.js" var="kmhome8"></spring:url>
<script src="${kmhome8}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/lightbox2/js/lightbox.min.js" var="kmhome9"></spring:url>
<script src="${kmhome9}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/vendor/sweetalert/sweetalert.min.js" var="kmhome11"></spring:url>
<script src="${kmhome11}"></script>

<script type="text/javascript">
    $('.block2-btn-addcart').each(function () {
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function () {
            swal(nameProduct, "is added to cart !", "success");
        });
    });

    $('.block2-btn-addwishlist').each(function () {
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function () {
            swal(nameProduct, "is added to wishlist !", "success");
        });
    });
</script>

<!--===============================================================================================-->
<spring:url value="/resources/vendor/parallax100/parallax100.js" var="kmhome12"></spring:url>
<script src="${kmhome12}"></script>

<script type="text/javascript">
    $('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<spring:url value="/resources/js/main.js" var="kmhome13"></spring:url>
<script src="${kmhome13}"></script>
</body>
</html>