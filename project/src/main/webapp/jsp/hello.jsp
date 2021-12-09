<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header>
		<jsp:include page="header.jsp"></jsp:include>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/b2.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="<spring:url value='/home'/>" data-animation="fadeInUp"><spring:message code="hello.show" /></a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                    <a href="<spring:url value='/home'/>"><spring:message code="hello.title" /></a>
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/b1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="<spring:url value='/home'/>" data-animation="fadeInUp"><spring:message code="hello.show" /></a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                    <a href="<spring:url value='/home'/>"><spring:message code="hello.title" /></a>
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/b3.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp"><spring:message code="hello.show" /></a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                    <a href="#"><spring:message code="hello.title" /></a>
                                </h2>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-100 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code="hello.magaz" /></a>
                            <h4><a href="#" class="post-headline"><spring:message code="hello.welcome" /></a></h4>
                            <p><spring:message code="hello.text" /></a></p>
                            <a href="<spring:url value='/login' />" class="btn original-btn"><spring:message code="hello.account" /></a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="img/blog-img/1.jpg" alt="">
                        <!-- Catagory Title -->
                        <div class="catagory-title">
                            <a href="#">new</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="img/blog-img/2.jpg" alt="">
                        <!-- Catagory Title -->
                        <div class="catagory-title">
                            <a href="#">cover</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Wrapper End ##### -->



    <!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
    <!-- ##### Footer Area End ##### -->

</body>

</html>