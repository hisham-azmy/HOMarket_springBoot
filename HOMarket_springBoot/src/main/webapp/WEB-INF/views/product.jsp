<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/views/Layout/TagLib.jsp"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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

	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m"
		style="background-image: url(<spring:url
        value="/resources/images/12.jpg"></spring:url>);">
		<h2 class="l-text2 t-center">Women</h2>
		<p class="m-text13 t-center">New Arrivals Women Collection 2018</p>
	</section>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">Categories</h4>

						<ul class="p-b-54">
							<li class="p-t-4"><a
								href='<spring:url value="/product/all" />'
								class="s-text13 active1"> All </a></li>

							<c:forEach var="category" items="${categories}">
								<li class="p-t-4"><a
									href='<spring:url value="/category/${category.id}" />'
									class="s-text13"> ${category.name} </a></li>
							</c:forEach>

						</ul>

						<!--  -->
						<h4 class="m-text14 p-b-32">Filters</h4>

						<div class="filter-price p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-17">Price</div>

							<div class="wra-filter-bar">
								<div id="filter-bar"></div>
							</div>

							<div class="flex-sb-m flex-w p-t-16">
								<div>
									<div class="m-text15 p-b-17">Min Price</div>
									<input type="number" class="min" name="min" />

									<div class="m-text15 p-b-17">Max Price</div>
									<input type="number" class="max" name="max" />

									<div class="w-size11">
										<!-- Button -->
										<button
											class="flex-c-m size4 bg7 bo-rad-15 hov1 s-text14 trans-0-4 btn_price_filter">
											Filter</button>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<!-- search -->
							<div class="search-product pos-relative bo4 of-hidden">
								<input class="search_product s-text7 size6 p-l-23 p-r-50"
									type="text" name="search-product"
									placeholder="Search Products...">

								<button
									class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4 btn_search">
									<i class="fs-12 fa fa-search" aria-hidden="true"></i>
								</button>
							</div>
						</div>

					</div>
					<spring:url value="/resources/images/11.jpg" var="imageOfC"></spring:url>
					<!-- Product -->
					<div class="row products_aj">
						<c:forEach var="product" items="${products}">
							<spring:url value="/resources/img/${product.id}.png"
								var="imageOfC"></spring:url>
							<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
								<!-- Block2 -->
								<div
									class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="${imageOfC}" alt="IMG-PRODUCT"> ${product.name}

									<div class="block2-overlay trans-0-4">
										<a href="#"
											class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
											class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none"
											aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button id="btnAdd" value="${product.id}"
												class="btnAdd flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart</button>
										</div>
									</div>
								</div>
								<!--                <div id="getAllItems" > -->

								<!--                </div> -->

								<div class="block2-txt p-t-20">
									<a href='<spring:url value="/product/details/${product.id}" />'
										class="block2-name dis-block s-text3 p-b-5">
										${product.description} </a> <span
										class="block2-price m-text6 p-r-5"> ${product.price} </span>
								</div>

								<a href='<spring:url value="/product/details/${product.id}" />'>
									VIEW ALL DETAILS </a>
								<sec:authorize access="hasRole('ROLE_ADMIN')">

									<div>
										<a
											href='<spring:url value="/admin/product/delete/${product.id}" />'>Delete</a>
									</div>
									<div>
										<a
											href='<spring:url value="/admin/product/edit/${product.id}" />'>Edit</a>
									</div>
								</sec:authorize>
							</div>
						</c:forEach>
					</div>
				</div>



				<!-- Pagination -->
				<div class="pagination flex-m flex-w p-t-26">
					<a href="#"
						class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
					<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp" />

	<script type="text/javascript">
		$(document).ready(function() {
			var minPrice = 0;
			var maxPrice = 1000000000;
			// filter by price
			$('.btn_price_filter').on('click', function() {
				console.log('entered');

				minPrice = $('.min').val();
				maxPrice = $('.max').val();

				console.log(minPrice);
				console.log(maxPrice);

				$.ajax({
					url : '<spring:url value="/product/ajax/filter" />',
					data : {
						'minPrice' : minPrice,
						'maxPrice' : maxPrice
					},
					success : function(data) {
						$('.products_aj').html(data);
					}

				});
			});

			// filter by name
// 			$('.btn_name_filter').on('click', function() {
// 				console.log('entered');

// 				var name = $('.name').val();

// 				console.log(name);

// 				$.ajax({
// 					url : '<spring:url value="/product/ajax/filterByName" />',
// 					data : {
// 						'name' : name
// 					},
// 					success : function(data) {
// 						$('.products_aj').html(data);
// 					}

// 				});
// 			});

			// search
			$('.btn_search').on('click', function() {
				console.log('entered');

				var query = $('.search_product').val();

				console.log(minPrice);
				console.log(maxPrice);
				console.log(query);

				$.ajax({
					url : '<spring:url value="/product/ajax/search" />',
					data : {
						'minPrice' : minPrice,
						'maxPrice' : maxPrice,
						'query' : query
					},
					success : function(data) {
						$('.products_aj').html(data);
					}

				});
			});

			$('.btnAdd').on('click', function() {
				console.log('entered');
				var product_id = $(this).val();
				console.log(product_id);
				$.ajax({
					url : '<spring:url value="/customer/cartItem/ajax/add" />',
					data : {
						'id' : product_id
					},
					success : function(data) {
						console.log('return');
						console.log(data);
						console.log(data[0]);
						console.log(typeof(data[0]));
						console.log(data.length);
						$('.cartItemNumber').html(data.length);
						var cartItems = '';
						var total = 0;
						for(item in data) {
							total += parseFloat(data[item].totalPrice);
							cartItems += '<li class="header-cart-item"><div class="header-cart-item-img"><img src=\'<spring:url value="/resources/images/item-cart-01.jpg" />\' alt="IMG"></div><div class="header-cart-item-txt"><a href="#" class="header-cart-item-name">' + data[item].name + '</a><span class="header-cart-item-info"> $' + data[item].totalPrice + '</span></div></li>';
						}
						$('.header-cart .header-cart-wrapitem').html(cartItems);
						$('.header-cart .header-cart-total').html(total);
						
					}
				});
			});
		});
	</script>

</body>
</html>
