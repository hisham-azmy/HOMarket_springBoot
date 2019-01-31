<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/views/Layout/TagLib.jsp"%>

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

	<div>
		<c:choose>
			<c:when test='${title=="New Category"}'>
				<spring:url value="/admin/category/add" var="url" />
			</c:when>
			<c:when test='${title=="Edit Category"}'>
				<spring:url value="/admin/category/edit" var="url" />
			</c:when>
		</c:choose>
		<div class="row sign" style="padding-bottom: 30px;">
			<div class="container col-lg-4 col-lg-offset-9 "
				style="text-align: center;">

				<div class="input-text">
					<h2>${headerMSG}</h2>
					<br /> <br />
					<form:form commandName="category" cssClass="form-horizontal"
						action="${url}" method="POST" enctype="multipart/form-data">

						<c:if test='${title=="Edit Category"}'>
							<form:hidden path="id" class="form-control"></form:hidden>
						</c:if>
						<div class="form-group col-lg-12 col-lg-offset-5 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="name">Name</form:label>
							<form:input path="name"
								cssClass="form-group col-lg-6 col-lg-offset-5 act"
								placeholder="Type category name" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="name" cssStyle="color:#f00;"></form:errors>
						</div>


						<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
							<button type="submit"
								class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
								new Product</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>



	</div>

	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$(document).ready(function () {
		    $("#category").validate({
		        rules: {
		            "name": {
		                required: true
		            }
		        },
		        messages: {
		            "name": {
		                required: "Please, enter a name"
		            }
		        }
		    });
	
		});
	</script>

</body>
</html>