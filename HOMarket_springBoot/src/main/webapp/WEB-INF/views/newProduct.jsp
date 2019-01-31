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
			<c:when test='${title=="New Product"}'>
				<spring:url value="/admin/product/add" var="url" />
			</c:when>
			<c:when test='${title=="Edit Product"}'>
				<spring:url value="/admin/product/edit" var="url" />
			</c:when>
		</c:choose>
		<div class="row sign" style="padding-bottom: 30px;">
			<div class="container col-lg-4 col-lg-offset-9 "
				style="text-align: center;">

				<div class="input-text">
					<h2>${headerMSG}</h2>
					<br /> <br />
					<form:form commandName="product" cssClass="form-horizontal"
						action="${url}" method="POST" enctype="multipart/form-data">

						<c:if test='${title=="Edit Product"}'>
							<form:hidden path="id" class="form-control"></form:hidden>
						</c:if>
						<div class="form-group col-lg-12 col-lg-offset-5 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="name">Name</form:label>
							<form:input path="name"
								cssClass="form-group col-lg-6 col-lg-offset-5 act"
								placeholder="Type your name" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="name" cssStyle="color:#f00;"></form:errors>
						</div>

						<div class="form-group col-lg-12 col-lg-offset-0 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="description">Description</form:label>
							<form:input path="description"
								cssClass="form-group col-lg-6 col-lg-offset-5 act"
								placeholder="Type your description" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="description" cssStyle="color:#f00;"></form:errors>
						</div>

						<div class="form-group col-lg-12 col-lg-offset-0 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="price">Price</form:label>
							<form:input path="price"
								cssClass="form-group col-lg-6 col-lg-offset-5 act"
								placeholder="Type your price" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="price" cssStyle="color:#f00;"></form:errors>
						</div>


						<div class="form-group col-lg-12 col-lg-offset-0 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="quantity">Quantity</form:label>
							<form:input path="quantity"
								cssClass="form-group col-lg-6 col-lg-offset-5 act"
								placeholder="Type your quantity" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="quantity" cssStyle="color:#f00;"></form:errors>
						</div>

						<div class="form-group col-lg-12 col-lg-offset-0 act">
							<form:label class="form-group col-lg-4 col-lg-offset-0 "
								path="inStock">Status</form:label>
							<form:checkbox path="inStock"
								cssClass="form-group col-lg-6 col-lg-offset-5 act" />
						</div>

						<div class="form-group col-lg-12 col-lg-offset-5">
							<form:errors path="inStock" cssStyle="color:#f00;"></form:errors>
						</div>

						<!-- start of  List of categories to showing list of them -->

						<div class="form-group">
							<c:forEach items="${categories}" var="elements" varStatus="loop">
								<tr>
									<td><form:checkbox path="selectedCheckBox"
											class="person_data" value="${elements.id}" /></td>
									<td><c:out value='${elements.name}' /></td>
								</tr>
								<br>
							</c:forEach>
						</div>
						<!-- End of  List -->


						<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">

							<form:label class="control-label" path="productImage" for="pic">upload picture</form:label>
							<form:input path="productImage" id="pic" type="file"
								Class="form:input-large" />
						</div>

						<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
							<button type="submit"
								class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
								<c:choose>
									<c:when test='${title=="New Product"}'>
										new Product
									</c:when>
									<c:when test='${title=="Edit Product"}'>
										edit Product
									</c:when>
								</c:choose>
							</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>



	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>