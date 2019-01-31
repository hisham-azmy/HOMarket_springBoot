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
<body>
	<div class="container-fluid">
		<div class="overlay">

			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
				</div>
				<!-- /.navbar-collapse -->
		</div>
		</nav>
		<div class="row sign" style="padding-bottom: 30px;">
			<div class="row " style="padding-top: 60px; margin-top: 20px;">
				<form role="form" class="subscribe">
					<div class="form-group col-lg-4 col-lg-offset-4 intro"></div>
				</form>
			</div>
			<div class="container col-lg-4 col-lg-offset-4 "
				style="text-align: center;">

				<div class="input-text">
					<spring:url value="/registeration" var="url" />


					<h3>
						 Registeration page
					</h3>
					<br /> <br />

					<form:form modelAttribute="customer" cssClass="subscribe"
						action="${url}" method="POST">

						<div class="form-group col-lg-12 col-lg-offset-0">
							<form:input path="name" cssClass="form-control pass"
								placeholder="Type your Name" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="name" cssStyle="color:#f00;"></form:errors>
						</div>

						<!-- Email  -->
						<div class="form-group col-lg-6 col-lg-offset-0 act">
							<form:input path="email" cssClass="form-control pass"
								placeholder="Type your Email " />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="email" cssStyle="color:#f00;"></form:errors>
						</div>


						<div class="form-group col-lg-12 col-lg-offset-0 act">
							<form:input path="password" cssClass="form-control pass"
								placeholder="Type your password" />
						</div>
						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="password" cssStyle="color:#f00;"></form:errors>
						</div>
						<!-- -------------------- -->

						<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
							<button type="submit"
								class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
								Subscribe</button>
						</div>
					</form:form>

				</div>
				<!-- ------------------------------------------------------------------- -->
			</div>
		</div>
	</div>

	<!-- 	Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- 	Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>


	<!-- 	=============================================================================================== -->

	<spring:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"
		var="kmhome1"></spring:url>
	<script src="${kmhome1}"></script>
	<!--===============================================================================================-->
	<spring:url value="/resources/vendor/jquery/jquery.validate.min.js"
		var="kmhome1"></spring:url>
	<script src="${kmhome1}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/animsition/js/animsition.min.js"
		var="kmhome2"></spring:url>
	<script src="${kmhome2}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/bootstrap/js/popper.js"
		var="kmhome3"></spring:url>
	<script src="${kmhome3}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"
		var="kmhome4"></spring:url>
	<script src="${kmhome4}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/select2/select2.min.js"
		var="kmhome5"></spring:url>
	<script src="${kmhome5}"></script>

	<!-- 	<script type="text/javascript"> -->
	<!-- // $(".selection-1").select2({ // minimumResultsForSearch : 20, // -->
	<!-- dropdownParent : $('#dropDownSelect1') // }); -->
	<!-- 	</script> -->
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/slick/slick.min.js" var="kmhome6"></spring:url>
	<script src="${kmhome6}"></script>


	<spring:url value="/resources/js/slick-custom.js" var="kmhome7"></spring:url>
	<script src="${kmhome7}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/countdowntime/countdowntime.js"
		var="kmhome8"></spring:url>
	<script src="${kmhome8}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/lightbox2/js/lightbox.min.js"
		var="kmhome9"></spring:url>
	<script src="${kmhome9}"></script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/sweetalert/sweetalert.min.js"
		var="kmhome11"></spring:url>
	<script src="${kmhome11}"></script>

	<!-- 	<script type="text/javascript"> -->
	<!-- 	// $('.block2-btn-addcart').each( // function() { // var nameProduct = -->
	<!-- 	$(this).parent().parent().parent().find( // '.block2-name').html(); // -->
	<!-- 	$(this).on('click', function() { // swal(nameProduct, "is added to cart -->
	<!-- 	!", "success"); // }); // }); // $('.block2-btn-addwishlist').each( // -->
	<!-- 	function() { // var nameProduct = -->
	<!-- 	$(this).parent().parent().parent().find( // '.block2-name').html(); // -->
	<!-- 	$(this).on('click', function() { // swal(nameProduct, "is added to -->
	<!-- 	wishlist !", "success"); // }); // }); -->
	<!-- 	</script> -->

	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/vendor/parallax100/parallax100.js"
		var="kmhome12"></spring:url>
	<script src="${kmhome12}"></script>

	<script type="text/javascript">
		// $('.parallax100').parallax100();
	</script>
	<!-- 	=============================================================================================== -->
	<spring:url value="/resources/js/main.js" var="kmhome13"></spring:url>
	<script src="${kmhome13}"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#customer").validate({
				rules : {
					"name" : {
						required : true,
						minlength : 3
					},
					"email" : {
						required : true,
						email : true
					}
				},
				messages : {
					"name" : {
						required : "Please, enter a name"
					},
					"email" : {
						required : "Please, enter an email",
						email : "Email is invalid"
					}
				}
			});

		});
	</script>

</body>
</html>