<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="/WEB-INF/views/Layout/TagLib.jsp"%>
		<title>Customers</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style type="text/css">
		    .tb {
		        margin: 22px auto;
		        font-size: 22px;
		    }
		    .tb tr{
		        border: 1px solid #222;
		    }
		    .tb tr td{
		        border: 1px solid #222;
		        width: 16.6666666667%;
		    }
		</style>
	</head>
	<body class="animsition">
	
	<jsp:include page="header.jsp" />
	
		<div class='container'>
		    <div class="text-center">
			    <h2>Customer Management</h2>
			</div>
			
			<div class="tb text-center">
			    <table>
			        <tr>
			            <td>ID</td>
			            <td>Name</td>
			            <td>Country</td>
			            <td>Email</td>
			            <td>Password</td>
			            <td>Enabled</td>
			        </tr>
			        <c:forEach var="customer" items="${customers}">
			            <tr>
			                <td>${customer.id}</td>
			                <td>${customer.name}</td>
			                <td>${customer.country}</td>
			                <td>${customer.email}</td>
			                <td>${customer.password}</td>
			                <td>${customer.enabled}</td>
			            </tr>
	                </c:forEach>
			    </table>
			    
			</div>
		</div>
		
		
		<jsp:include page="footer.jsp" />
		
	</body>
</html>