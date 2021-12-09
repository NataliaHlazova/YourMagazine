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
							<spring:message code='header.myaccount' />
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Header Area End ##### -->
	<div class="blog-wrapper section-padding-100-0 clearfix">

		<div class="container">
			<div class="row align-items-center justify-content-center">
				<!-- Single Blog Area -->
				<div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
					<div class="single-catagory-area clearfix mb-100">
						<h4>
							<spring:message code='myacc.yphoto' />
							:
						</h4>
						<img src="data:image/jpg;base64, ${user.encodedImage}" alt=""
							style="box-shadow: 0 0 30px rgb(0 0 0/ 30%);">
					</div>
				</div>

				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag"><spring:message
									code='header.myaccount' /></a>
							<h1>${user.firstName}${user.lastName}</h1>
							<h4>
								<spring:message code='login.email' />
								:
							</h4>
							<p class="mb-5">${user.email}</p>
							<h4>
								<spring:message code='reg.phone' />
								:
							</h4>
							<p class="mb-5">${user.phone}</p>
							<h4>
								<spring:message code='myacc.role' />
								:
							</h4>
							<p class="mb-5">${user.role}</p>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="container">
			<div class="row">
				<div class="modal-content">
					<div class="modal-body">
						<h5 class="title mb-30">
							<spring:message code='myacc.upd' />
						</h5>

						<form:form action="${contextPath}/updateAccount"
							class="newsletterForm" method="POST"
							enctype="multipart/form-data">

							<div class="group">
								<input type="text" name="firstName" value="${user.firstName}">
								<span class="highlight"></span> <span class="bar"></span> <label><spring:message
										code='reg.fname' /></label>
							</div>
							<div class="group">
								<input type="text" name="lastName" value="${user.lastName}">
								<span class="highlight"></span> <span class="bar"></span> <label><spring:message
										code='reg.lname' /></label>
							</div>
							<div class="group">
								<input type="number" name="phone" value="${user.phone}">
								<span class="highlight"></span> <span class="bar"></span> <label><spring:message
										code='reg.phone' /></label>
							</div>
							<div class="group">
								<input path="image" type="file" name="image"
									value="data:image/jpg;base64, ${user.encodedImage}" /> <span
									class="highlight"></span> <span class="bar"></span> <label><spring:message
										code='myacc.select' /></label>
							</div>
							<div class="group d-flex justify-content-center">
								<input type="hidden" value="${user.id}" name="userId">
								<button type="submit" class="btn original-btn mb-15">
									<spring:message code='button.submit' />
								</button>
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>