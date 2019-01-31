<!DOCTYPE html>
<html lang="en">

<%-- <%@ include file="/WEB-INF/views/Layout/TagLib.jsp" %> --%>


<head>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@  taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<title>${title}</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="<spring:url value="/resources/images/icons/favicon.png"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/fonts/themify/themify-icons.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/fonts/elegant-font/html-css/style.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/animate/animate.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/animsition/css/animsition.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/select2/select2.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/slick/slick.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/vendor/lightbox2/css/lightbox.min.css"/>"
	type="text/css" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="<spring:url value="/resources/css/main.css"/>" type="text/css" />

<link rel="stylesheet"
	href="<spring:url value="/resources/css/util.css"/>" type="text/css" />
<spring:url value="/resources/css/util.css" var="kmhome16"></spring:url>
<script src="${kmhome16}"></script>
<!--===============================================================================================-->
<spring:url value="/resources/css/main.css" var="kmhome15"></spring:url>
<script src="${kmhome15}"></script>
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- header fixed -->
	<div class="wrap_header fixed-header2 trans-0-4">

		<!-- Logo -->
		<a href='<spring:url value="/" />' class="logo"> <!--         HOHMarket -->
			<img src='<spring:url value="/resources/images/icons/logo.png" />'
			alt="IMG-LOGO" />
		</a>

		<!-- Menu -->
		<div class="wrap_menu">
			<nav class="menu">
				<ul class="main_menu">
					<li><a href='<spring:url value="/"/>'>Home</a></li>

					<li><a href='<spring:url value="/product/all"/>'>Products</a>
					</li>

					<li><a href='<spring:url value="/category/all"/>'>Categories</a>
					</li>


					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href='<spring:url value="/admin/category/create"/>'>New
								Category</a></li>

						<li><a href='<spring:url value="/admin/product/create"/>'>New
								Product</a></li>

						<li><a href='<spring:url value="/admin/customers"/>'>Customer
								Management</a></li>
					</sec:authorize>



					<sec:authorize access="isAnonymous()">
						<li><a href="<spring:url value="/register"></spring:url>">Registeration</a>
						</li>

						<li><a href="<spring:url value="/login"></spring:url>">Log
								in</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_USER')">
						<li><a href='<spring:url value="/customer/order/history"/>'>Order
								History</a></li>
						<li><a href='<spring:url value="/customer/cart"/>'>cart</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li><a
							href="<spring:url value="/j_spring_security_logout"></spring:url>">Log
								out</a></li>
					</sec:authorize>

				</ul>
			</nav>
		</div>

		<!-- Header Icon -->
		<div class="header-icons">
			<a href="#" class="header-wrapicon1 dis-block"> <img
				src='<spring:url value="/resources/images/icons/icon-header-01.png" />'
				class="header-icon1" alt="ICON">
			</a> <span class="linedivide1"></span>

			<div class="header-wrapicon2">
				<img
					src='<spring:url value="/resources/images/icons/icon-header-02.png" />'
					class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
					class="header-icons-noti cartItemNumber">0</span>

				<!-- Header cart noti -->
				<div class="header-cart header-dropdown">
					<ul class="header-cart-wrapitem">
						<li class="header-cart-item">


							<div class="header-cart-item-txt">
								<a href="#" class="header-cart-item-name"> White Shirt With
									Pleat Detail Back </a> <span class="header-cart-item-info">
									1 x $19.00 </span>
							</div>
						</li>

						<li class="header-cart-item">


							<div class="header-cart-item-txt">
								<a href="#" class="header-cart-item-name"> Converse All Star
									Hi Black Canvas </a> <span class="header-cart-item-info"> 1
									x $39.00 </span>
							</div>
						</li>

						<li class="header-cart-item">


							<div class="header-cart-item-txt">
								<a href="#" class="header-cart-item-name"> Nixon Porter
									Leather Watch In Tan </a> <span class="header-cart-item-info">
									1 x $17.00 </span>
							</div>
						</li>
					</ul>

					<div class="header-cart-total">Total: $75.00</div>

					<div class="header-cart-buttons">
						<div class="header-cart-wrapbtn">
							<!-- Button -->
							<a href='<spring:url value="/customer/cart" />'
								class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
								View Cart </a>
						</div>


					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Header -->
	<header class="header2">
		<!-- Header desktop -->
		<div class="container-menu-header-v2 p-t-26">
			<div class="topbar2">
				<!--             <div class="topbar-social"> -->
				<!--                 <a href="#" class="topbar-social-item fa fa-facebook"></a> -->
				<!--                 <a href="#" class="topbar-social-item fa fa-instagram"></a> -->
				<!--                 <a href="#" class="topbar-social-item fa fa-pinterest-p"></a> -->
				<!--                 <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> -->
				<!--                 <a href="#" class="topbar-social-item fa fa-youtube-play"></a> -->
				<!--             </div> -->

				<!-- Logo2 -->
				<a href='<spring:url value="/" />' class="logo2"> <!--                 <img src="images/icons/logo.png" alt="IMG-LOGO">  -->
					<img src='<spring:url value="/resources/images/icons/logo.png" />'
					alt="IMG-LOGO" />
				</a>

				<div class="topbar-child2">
					<span class="topbar-email"> ${userPrincipal.name}
						${principal.getName()} ${pageContext.request.userPrincipal.name} </span>

					<!--                 <div class="topbar-language rs1-select2"> -->
					<!--                     <select class="selection-1" name="time"> -->
					<!--                         <option>USD</option> -->
					<!--                         <option>EUR</option> -->
					<!--                     </select> -->
					<!--                 </div> -->

					<!--  -->
					<a href="#" class="header-wrapicon1 dis-block m-l-30"> <img
						src='<spring:url value="/resources/images/icons/icon-header-01.png" />'
						class="header-icon1" alt="ICON">
					</a> <span class="linedivide1"></span>

					<div class="header-wrapicon2 m-r-13">
						<img
							src='<spring:url value="/resources/images/icons/icon-header-02.png" />'
							class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
							id='cartItemNumber' class="header-icons-noti cartItemNumber">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<!--                                 <div class="header-cart-item-img"> -->
									<!--                                     <img src="images/item-cart-01.jpg" alt="IMG"> -->
									<!--                                 </div> -->

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> White Shirt
											With Pleat Detail Back </a> <span class="header-cart-item-info">
											1 x $19.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<!--                                 <div class="header-cart-item-img"> -->
									<!--                                     <img src="images/item-cart-02.jpg" alt="IMG"> -->
									<!--                                 </div> -->

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Converse All
											Star Hi Black Canvas </a> <span class="header-cart-item-info">
											1 x $39.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<!--                                 <div class="header-cart-item-img"> -->
									<!--                                     <img src="images/item-cart-03.jpg" alt="IMG"> -->
									<!--                                 </div> -->

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Nixon Porter
											Leather Watch In Tan </a> <span class="header-cart-item-info">
											1 x $17.00 </span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">Total: $75.00</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href='<spring:url value="/customer/cart" />'
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart </a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="wrap_header">

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li><a href='<spring:url value="/"/>'><sec:authorize
										access="hasRole('ROLE_ADMIN')">Admin</sec:authorize> Home</a></li>

							<li><a href='<spring:url value="/product/all"/>'>Products</a>
							</li>

							<li><a href='<spring:url value="/category/all"/>'>Categories</a>
							</li>


							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href='<spring:url value="/admin/category/create"/>'>New
										Category</a></li>

								<li><a href='<spring:url value="/admin/product/create"/>'>New
										Product</a></li>

								<li><a href='<spring:url value="/admin/customers"/>'>Customer
										Management</a></li>
							</sec:authorize>

							<sec:authorize access="hasRole('ROLE_USER')">
								<li><a href='<spring:url value="/customer/order/history"/>'>Order
										History</a></li>
								<li><a href='<spring:url value="/customer/cart"/>'>cart</a></li>
							</sec:authorize>

							<sec:authorize access="isAnonymous()">
								<li><a href="<spring:url value="/register"/>">Registeration</a>
								</li>

								<li><a href="<spring:url value="/login"></spring:url>">Log
										in</a></li>
							</sec:authorize>

							<sec:authorize access="isAuthenticated()">
								<li><a
									href="<spring:url value="/j_spring_security_logout"></spring:url>">Log
										out</a></li>
							</sec:authorize>

						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons"></div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="index.jsp" class="logo-mobile"> <img
				src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="#" class="header-wrapicon1 dis-block"> <img
						src="images/icons/icon-header-01.png" class="header-icon1"
						alt="ICON">
					</a> <span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png"
							class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
							class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> White Shirt
											With Pleat Detail Back </a> <span class="header-cart-item-info">
											1 x $19.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Converse All
											Star Hi Black Canvas </a> <span class="header-cart-item-info">
											1 x $39.00 </span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name"> Nixon Porter
											Leather Watch In Tan </a> <span class="header-cart-item-info">
											1 x $17.00 </span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">Total: $75.00</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.jsp"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart </a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#"
										class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out </a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu">
			<nav class="side-menu">
				<ul class="main-menu">
					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8"><span
						class="topbar-child1"> Free shipping for standard order
							over $100 </span></li>

					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<div class="topbar-child2-mobile">
							<span class="topbar-email"> fashe@example.com </span>

							<div class="topbar-language rs1-select2">
								<select class="selection-1" name="time">
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>
					</li>

					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
								href="#" class="topbar-social-item fa fa-instagram"></a> <a
								href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
								href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
								href="#" class="topbar-social-item fa fa-youtube-play"></a>
						</div>
					</li>

					<li class="item-menu-mobile"><a href="index.jsp">Home</a>
						<ul class="sub-menu">
							<li><a href="index.jsp">Homepage V1</a></li>
							<li><a href="home-02.jsp">Homepage V2</a></li>
							<li><a href="home-03.jsp">Homepage V3</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>

					<li class="item-menu-mobile"><a href="product.jsp">Shop</a></li>

					<li class="item-menu-mobile"><a href="product.jsp">Sale</a></li>

					<li class="item-menu-mobile"><a href="cart.jsp">Features</a></li>

					<li class="item-menu-mobile"><a href="blog.jsp">Blog</a></li>

					<li class="item-menu-mobile"><a href="about.jsp">About</a></li>

					<li class="item-menu-mobile"><a href="contact.jsp">Contact</a>
					</li>

					<li class="item-menu-mobile"><a href="contact.jsp">Registeration4</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>

</body>
</html>
