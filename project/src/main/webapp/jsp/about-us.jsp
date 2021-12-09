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

<!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img" style="background-image: url(img/bg-img/aboutus.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2><spring:message code='aboutus.title'/></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-100-0 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
                            <h4><a href="#" class="post-headline"></a><spring:message code='aboutus.meet'/></h4>
                            <p class="mb-3">Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor
                                cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero
                                luctus, vel volutpat quam tincidunt. Morbi sodales, dolor id ultricies dictum. Lorem
                                ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus vestibulum mauris quis
                                aliquam. Integer accumsan sodales odio, id tempus velit ullamcorper id. Quisque at erat
                                eu libero consequat tempus.slacus sit amet augue sodales, vel cursus enim tristique.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus
                                vestibulum mauris quis aliquam. Integer accumsan sodales odio, id tempus velit
                                ullamcorper id. Quisque at erat eu libero consequat tempus. Quisque molestie convallis
                                tempus. Ut semper purus metus, a euismod sapien sodales ac. Duis viverra eleifend
                                fermentum. Donec sagittis lacus sit amet augue sodales, vel cursus enim tristique.
                                Maecenas vitae massa ut est consectetur sagittis quis vitae tortor.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="img/bg-img/b1.jpg" alt="">
                        <!-- Catagory Title -->
                        <div class="catagory-title">
                            <a href="#"><spring:message code='aboutus.inf'/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Wrapper End ##### -->

    <!-- ##### Cool Facts Area Start ##### -->
    <div class="cool-facts-area section-padding-100-0 bg-img background-overlay"
        style="background-image: url(img/bg-img/b4.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="single-blog-area blog-style-2 text-center mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
                            <h4><a href="#" class="post-headline"><spring:message code='hello.welcome'/></a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus vestibulum mauris
                                quis aliquam. Integer accumsan sodales odio, id tempus velit ullamcorper id. Quisque at
                                erat eu libero consequat tempus. Quisque molestie convallis tempus. Ut semper purus
                                metus, a euismod sapien sodales ac. Duis viverra eleifend fermentum. Donec sagittis
                                lacus sit amet augue sodales, vel cursus enim tristique. Maecenas vitae massa ut est
                                consectetur sagittis quis vitae tortor. Sed et massa vel.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100">
                        <h2><span class="counter">25</span></h2>
                        <p><spring:message code='aboutus.awords'/></p>
                    </div>
                </div>
                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100">
                        <h2><span class="counter">12</span>K</h2>
                        <p><spring:message code='aboutus.fb'/></p>
                    </div>
                </div>
                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100">
                        <h2><span class="counter">9</span></h2>
                        <p><spring:message code='aboutus.team'/></p>
                    </div>
                </div>
                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-facts-area text-center mb-100">
                        <h2><span class="counter">16</span></h2>
                        <p><spring:message code='aboutus.day'/></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Cool Facts Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-100-0 clearfix">
        <div class="container">
            <div class="row">
                <!-- Single Blog Area  -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-area blog-style-2 mb-100">
                        <div class="single-blog-thumbnail">
                            <img src="img/blog-img/4.jpg" alt="">
                            <div class="post-date">
                                <a href="#">1<span>TOP</span></a>
                            </div>
                        </div>
                        <!-- Blog Content -->
                        <div class="single-blog-content mt-50">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
                            <h4><a href="#" class="post-headline"><spring:message code='aboutus.name1'/></a></h4>
                            <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam
                                vestibulum convallis risus vel condimentum.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area  -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-area blog-style-2 mb-100">
                        <div class="single-blog-thumbnail">
                            <img src="img/blog-img/5.jpg" alt="">
                            <div class="post-date">
                                <a href="#">2<span>TOP</span></a>
                            </div>
                        </div>
                        <!-- Blog Content -->
                        <div class="single-blog-content mt-50">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
                            <h4><a href="#" class="post-headline"><spring:message code='aboutus.name2'/></a></h4>
                            <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam
                                vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel
                                volutpat quam tincidunt.</p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area  -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-area blog-style-2 mb-100">
                        <div class="single-blog-thumbnail">
                            <img src="img/blog-img/6.jpg" alt="">
                            <div class="post-date">
                                <a href="#">3 <span>TOP</span></a>
                            </div>
                        </div>
                        <!-- Blog Content -->
                        <div class="single-blog-content mt-50">
                            <div class="line"></div>
                            <a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
                            <h4><a href="#" class="post-headline"><spring:message code='aboutus.name3'/></a></h4>
                            <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam
                                vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel
                                volutpat quam tincidunt.</p>
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