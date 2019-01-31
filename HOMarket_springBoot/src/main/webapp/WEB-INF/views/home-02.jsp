<!DOCTYPE html>
<html lang="en">

<%-- <%@ include file="/WEB-INF/views/Layout/TagLib.jsp" %> --%>


<head>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@  taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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



	<!-- top noti -->
	<div class="flex-c-m size22 bg0 s-text21 pos-relative">
		20% off everything! <a href="product.jsp" class="s-text22 hov6 p-l-5">
			Shop Now </a>

		<button
			class="flex-c-m pos2 size23 colorwhite eff3 trans-0-4 btn-romove-top-noti">
			<i class="fa fa-remove fs-13" aria-hidden="true"></i>
		</button>
	</div>

	<jsp:include page="header.jsp" />

	<!-- Slide1 -->
	<section class="slide1">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1"
					style="background-image: url(<spring:url
                    value="/resources/images/55.jpg"></spring:url>);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2
							class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22"
							data-appear="fadeInUp">Leather Bags</h2>

						<span
							class="caption2-slide1 m-text1 t-center animated visible-false m-b-33"
							data-appear="fadeInDown"> New Collection 2018 </span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false"
							data-appear="zoomIn">
							<!-- Button -->
							<a href="product.jsp"
								class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now </a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item2-slick1"
					style="background-image: url(<spring:url
                    value="/resources/images/55.jpg"></spring:url>);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2
							class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22"
							data-appear="rollIn">Leather Bags</h2>

						<span
							class="caption2-slide1 m-text1 t-center animated visible-false m-b-33"
							data-appear="lightSpeedIn"> New Collection 2018 </span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false"
							data-appear="slideInUp">
							<!-- Button -->
							<a href="product.jsp"
								class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now </a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1"
					style="background-image: url(<spring:url
                    value="/resources/images/55.jpg"></spring:url>);">
					<div
						class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<h2
							class="caption1-slide1 xl-text2 t-center bo14 p-b-6 animated visible-false m-b-22"
							data-appear="rotateInDownLeft">Leather Bags</h2>

						<span
							class="caption2-slide1 m-text1 t-center animated visible-false m-b-33"
							data-appear="rotateInUpRight"> New Collection 2018 </span>

						<div class="wrap-btn-slide1 w-size1 animated visible-false"
							data-appear="rotateIn">
							<!-- Button -->
							<a href="product.jsp"
								class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now </a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- Our product -->
	<section class="bgwhite p-t-45 p-b-58">
		<div class="container">
			<div class="sec-title p-b-22">
				<h3 class="m-text5 t-center">Our Products</h3>
			</div>

			<!-- Tab01 -->
			<div class="tab01">

				<!-- Tab panes -->
				<div class="tab-content p-t-35">
					<!-- - -->
					<div class="tab-pane fade show active" id="best-seller"
						role="tabpanel">
						<div class="row">
							<c:forEach var="product" items="${products}">
								<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
									<!-- Block2 -->
									<div class="block2">
										<div
											class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">


											<img
												src='<spring:url value="/resources/img/${product.id}.png"
								></spring:url>'
												alt="IMG-PRODUCT">

											<div class="block2-overlay trans-0-4">

											</div>
										</div>

										<div class="block2-txt p-t-20">
											<a href="product-detail.jsp"
												class="block2-name dis-block s-text3 p-b-5">
												${product.name} </a> <span class="block2-price m-text6 p-r-5">
												${product.price} </span>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="featured" role="tabpanel">
						<div class="row">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-07.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Frayed denim
											shorts </a> <span class="block2-oldprice m-text7 p-r-5">
											$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
											$15.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="images/item-01.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-14.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="images/item-06.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-11.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Frayed denim
											shorts </a> <span class="block2-oldprice m-text7 p-r-5">
											$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
											$15.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="images/item-12.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-15.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--  -->
					<div class="tab-pane fade" id="sale" role="tabpanel">
						<div class="row">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-01.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-14.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-06.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-08.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--  -->
					<div class="tab-pane fade" id="top-rate" role="tabpanel">
						<div class="row">
							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="images/item-02.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-03.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-05.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Coach slim
											easton black </a> <span class="block2-price m-text6 p-r-5">
											$165.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-07.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Frayed denim
											shorts </a> <span class="block2-oldprice m-text7 p-r-5">
											$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
											$15.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-10.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Coach slim
											easton black </a> <span class="block2-price m-text6 p-r-5">
											$165.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
										<img src="images/item-11.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Frayed denim
											shorts </a> <span class="block2-oldprice m-text7 p-r-5">
											$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
											$15.90 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div
										class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
										<img src="images/item-12.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Herschel
											supply co 25l </a> <span class="block2-price m-text6 p-r-5">
											$75.00 </span>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-img wrap-pic-w of-hidden pos-relative">
										<img src="images/item-15.jpg" alt="IMG-PRODUCT">

										<div class="block2-overlay trans-0-4">
											<a href="#"
												class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
												class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
												<i class="icon-wishlist icon_heart dis-none"
												aria-hidden="true"></i>
											</a>

											<div class="block2-btn-addcart w-size1 trans-0-4">
												<!-- Button -->
												<button
													class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
													Add to Cart</button>
											</div>
										</div>
									</div>

									<div class="block2-txt p-t-20">
										<a href="product-detail.jsp"
											class="block2-name dis-block s-text3 p-b-5"> Denim jacket
											blue </a> <span class="block2-price m-text6 p-r-5"> $92.50
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp" />



</body>
</html>
