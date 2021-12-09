<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>YourMagazine - online</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link href="<spring:url value=" css/style.css" />" rel="stylesheet"
	type="text/css">
</head>
<body>


	<!-- ##### Header Area Start ##### -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- ##### Header Area End ##### -->


	<!-- ##### Breadcumb Area Start ##### -->
	<div class="breadcumb-area bg-img"
		style="background-image: url(img/bg-img/b10.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-content text-center">
						<h2>
							<spring:message code='subsctibe.title' />
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->



	<div class="container">

		<div class="mt-50">

			<div class="col-12" style="overflow-x: auto;">

				<table class="table table-striped col-12 text-center" id="table">
					<thead class="post-headline thead-dark">
						<tr>
							<th>Id</th>
							<th style="padding: 12px 116px;"><spring:message
									code='subsctibe.image' /></th>
							<th><spring:message code='subsctibe.name' /></th>
							<th><spring:message code='subsctibe.desc' /></th>
							<th><spring:message code='subsctibe.price' /></th>
							<th><spring:message code='subsctibe.date' /></th>
							<th><spring:message code='subsctibe.period' /></th>
							<th><spring:message code='subsctibe.action' /></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="subscribe" items="${subscribeItems}">
							<tr style="border-bottom: 1px solid black;">
								<td>${subscribe.id}</td>
								<td><img
									src="data:image/jpg;base64,${subscribe.product.encodedImage}"
									alt="image"></td>
								<td>${subscribe.product.pr_name}</td>
								<td>${subscribe.product.description}</td>
								<td>${subscribe.product.price}$</td>
								<td>${subscribe.subs_date}</td>
								<td>${subscribe.period}month.</td>
								<td><a href="subscribe?id= ${subscribe.id}"
									class="btn original-btn mb-15">
									<spring:message code='button.del' /></a> 
									<form:form action="${contextPath}/single-product" method="GET"
										enctype="multipart/form-data">
									<input type="hidden" value="${subscribe.product.id}" name="productId">
									<button type="submit" class="btn original-btn">
									<spring:message code='button.open' />
									</button>
									</form:form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

		</div>
	</div>







	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

<script src="${contextPath}/js/lang.js"></script>
</body>
</html>