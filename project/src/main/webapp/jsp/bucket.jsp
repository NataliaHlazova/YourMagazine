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
						<h2><spring:message code="bucket.title" /></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- ##### Breadcumb Area End ##### -->

	<div class="container">
		<div class="row mt-50">
		
		
			<div class="col-12 col-lg-9">

				<c:forEach var="bucket" items="${bucketItems}">
				
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.5s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<img src="data:image/jpg;base64,${bucket.product.encodedImage}"
										alt="">
									<div class="post-date">
										<a href="#">${bucket.id}</a>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<div class="single-blog-content">
									<div class="line"></div>
									<a href="#" class="post-tag">${bucket.buck_date}</a>
									<h4>
										<a href="#" class="post-headline">${bucket.product.pr_name}</a>
									</h4>
									<h2>
										<a href="#" class="post-headline">${bucket.product.price} $</a>
									</h2>
									<p>${bucket.product.description}</p>
									<div class="post-meta">
										<p>
											<a href="bucket?id= ${bucket.id}"><spring:message code="button.del" /></a>
										</p>
										<form:form action="${contextPath}/make-subsc" method="GET"
											enctype="multipart/form-data">
											<input type="hidden" value="${bucket.product.id}"
												name="productId">

											<button type="submit" class="btn original-btn mb-15"><spring:message code="button.subs" /></button>
										</form:form>
										
									<form:form action="${contextPath}/single-product" method="GET"
										enctype="multipart/form-data">
									<input type="hidden" value="${bucket.product.id}" name="productId">
									<button type="submit" class="btn original-btn">
									<spring:message code='button.open' />
									</button>
									</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				
			</div>

			<!-- ##### Sidebar Area ##### -->
			<div class="col-12 col-md-4 col-lg-3">
				<div class="post-sidebar-area">
					<!-- Widget Area -->
					<div class="sidebar-widget-area">
						<h5 class="title">Advertisement</h5>
						<a href="#"><img src="img/bg-img/add.gif" alt=""></a>
					</div>

					<!-- Widget Area -->
					<div class="sidebar-widget-area">
						<h5 class="title">Latest Posts</h5>

						<div class="widget-content">

							<!-- Single Blog Post -->
							<div
								class="single-blog-post d-flex align-items-center widget-post">
								<!-- Post Thumbnail -->
								<div class="post-thumbnail">
									<img src="img/blog-img/lp1.jpg" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content">
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">Party people in the
											house</a>
									</h4>
									<div class="post-meta">
										<p>
											<a href="#">12 March</a>
										</p>
									</div>
								</div>
							</div>

							<!-- Single Blog Post -->
							<div
								class="single-blog-post d-flex align-items-center widget-post">
								<!-- Post Thumbnail -->
								<div class="post-thumbnail">
									<img src="img/blog-img/lp2.jpg" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content">
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">A sunday in the park</a>
									</h4>
									<div class="post-meta">
										<p>
											<a href="#">12 March</a>
										</p>
									</div>
								</div>
							</div>

							<!-- Single Blog Post -->
							<div
								class="single-blog-post d-flex align-items-center widget-post">
								<!-- Post Thumbnail -->
								<div class="post-thumbnail">
									<img src="img/blog-img/lp3.jpg" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content">
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">Party people in the
											house</a>
									</h4>
									<div class="post-meta">
										<p>
											<a href="#">12 March</a>
										</p>
									</div>
								</div>
							</div>

							<!-- Single Blog Post -->
							<div
								class="single-blog-post d-flex align-items-center widget-post">
								<!-- Post Thumbnail -->
								<div class="post-thumbnail">
									<img src="img/blog-img/lp4.jpg" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content">
									<a href="#" class="post-tag">Lifestyle</a>
									<h4>
										<a href="#" class="post-headline">A sunday in the park</a>
									</h4>
									<div class="post-meta">
										<p>
											<a href="#">12 March</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Widget Area -->
					<div class="sidebar-widget-area">
						<h5 class="title">Tags</h5>
						<div class="widget-content">
							<ul class="tags">
								<li><a href="#">design</a></li>
								<li><a href="#">fashion</a></li>
								<li><a href="#">travel</a></li>
								<li><a href="#">music</a></li>
								<li><a href="#">party</a></li>
								<li><a href="#">video</a></li>
								<li><a href="#">photography</a></li>
								<li><a href="#">adventure</a></li>
							</ul>
						</div>
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