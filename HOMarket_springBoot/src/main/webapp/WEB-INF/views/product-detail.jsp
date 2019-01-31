<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/views/Layout/TagLib.jsp"%>
<title>Product</title>
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



	<jsp:include page="header.jsp" />

	<!-- Product Detail -->
	<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
			<div class="w-size13 p-t-30 respon5">
				<div class="wrap-slick3 flex-sb flex-w">

					<div class="slick3">

						<div class="wrap-pic-w">

							<img
								src="<spring:url value="/resources/img/${product.id}.png"
								></spring:url>"
								alt="IMG-PRODUCT">
						</div>
					</div>
				</div>
			</div>

			<div class="w-size14 p-t-30 respon5">
				<h4 class="product-detail-name m-text16 p-b-13">
					${product.name}</h4>
				<br>


				<div class="flex-m flex-w">
					<div class="s-text15 w-size15 t-center">description</div>
					${product.description}
				</div>
				<br>
				<div class="flex-m flex-w">
					<div class="s-text15 w-size15 t-center">price</div>
					${product.price}
				</div>
				<br>
				<div class="flex-m flex-w">
					<div class="s-text15 w-size15 t-center">Available Quantity</div>
					${product.quantity}
				</div>
				<br>
				

				<!--  -->
				<div class="p-t-33 p-b-60">
					<div class="flex-r-m flex-w p-t-10">
						<!-- 						<div class="w-size16 flex-m flex-w"></div> -->
					</div>
				</div>
				<spring:url value="/customer/cartItem" var="url" />
				<form  action="${url}" method="POST">
					<input type="hidden" name="productId" value="${product.id}"
						class="form-control">

					<button class="btn-num-product-down color1 flex-c-m size7 bg8 eff2">
						<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
					</button>

					<input type="number" name="counter" value="1" max="${maxqtn}"
						class="form-control">


					<button class="btn-num-product-up color1 flex-c-m size7 bg8 eff2">
						<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
					</button>
					<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
						<!-- 						Button -->
						<br>
						<button
							class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
							Go To Cart</button>

					</div>
					<br> <br> <br> <br> <br>
				</form>

				<div
					class="wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content">
					<h5
						class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Description <i class="down-mark fs-12 color1 fa fa-minus dis-none"
							aria-hidden="true"></i> <i
							class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8">Fusce ornare mi vel risus porttitor
							dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit.
							Proin gravida arcu nisl, a dignissim mauris placerat</p>
					</div>
				</div>

				<div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
					<h5
						class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Additional information <i
							class="down-mark fs-12 color1 fa fa-minus dis-none"
							aria-hidden="true"></i> <i
							class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8">Fusce ornare mi vel risus porttitor
							dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit.
							Proin gravida arcu nisl, a dignissim mauris placerat</p>
					</div>
				</div>

				<div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
					<h5
						class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Reviews (0) <i class="down-mark fs-12 color1 fa fa-minus dis-none"
							aria-hidden="true"></i> <i
							class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8">Fusce ornare mi vel risus porttitor
							dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit.
							Proin gravida arcu nisl, a dignissim mauris placerat</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">Related Products</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
								<img src="images/item-02.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-03.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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
									blue </a> <span class="block2-price m-text6 p-r-5"> $92.50 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-05.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
								<img src="images/item-07.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
								<img src="images/item-02.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-03.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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
									blue </a> <span class="block2-price m-text6 p-r-5"> $92.50 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-05.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
								<img src="images/item-07.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
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
				</div>
			</div>

		</div>
	</section>

	<jsp:include page="footer.jsp" />

</body>
</html>