<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

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



	<!-- ##### Contact Area Start ##### -->
	<section class="contact-area">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Contact Form Area -->
				<div class="col-12 col-md-10 col-lg-9">
					<div class="contact-form">
						<h5><spring:message code="createmag.title" /></h5>
						<!-- Contact Form -->
						<form:form method="POST" action="${contextPath}/addProduct"
							enctype="multipart/form-data">
							<div class="row">
								<div class="col-12">
									<div class="group">
										<input type="text" path="pr_name" name="pr_name"></input> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code="subsctibe.name" /></label>
									</div>
								</div>
								<div class="col-12">
									<div class="group">
										<input type="text" path="description" name="description" /> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code="subsctibe.desc" /></label>
									</div>
								</div>
								<div class="col-12">
									<div class="group">
										<input type="number" path="price" class="price" id="price"
											name="price" /> <span class="highlight"></span> 
											<span class="bar"></span> <label><spring:message code="subsctibe.price" /></label>
									</div>
								</div>
								<div class="col-12">
									<div class="group">
									
										<input path="publish_date" name="publish_date" type="text" onfocus="(this.type='date')" onblur="if(this.value=='') {this.type='text'}"/>
											<span class="highlight"></span> <span class="bar"></span> 
											<label><spring:message code="subsctibe.date" /></label>
									</div>
								</div>
								<div class="col-12">
									<div class="group">
										<input path="image" type="file" name="image" /> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code="myacc.select" /></label>
									</div>
								</div>
								<div class="col-12 justify-content-center"
									style="display: flex;">
									<span>${error}</span>
								</div>
								<div class="col-12 justify-content-center"
									style="display: flex;">
									<button type="submit" class="btn original-btn mb-15"><spring:message code="button.submit" /></button>
								</div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->


	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>