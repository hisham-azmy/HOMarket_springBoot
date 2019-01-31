<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="/WEB-INF/views/Layout/TagLib.jsp"%>
		<title>admin</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body class="animsition">
		<div>
		    <spring:url value="/admin/product/create" var="npurl" />
		    <a href="${npurl}">New Product</a>
		</div>
		
		<div>
		    <spring:url value="/admin/productInventory" var="piurl" />
		    <a href="${piurl}">Product Inventory</a>
		</div>
		
		<div>
		    <spring:url value="/admin/customers" var="curl" />
		    <a href="${curl}">Customer Management</a>
		</div>
		
		
	</body>
</html>