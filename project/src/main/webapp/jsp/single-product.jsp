<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
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
	
<!-- ##### Single Blog Area Start ##### -->
    <div class="single-blog-wrapper section-padding-0-100">

        <!-- Single Blog Area  -->
        <div class="single-blog-area blog-style-2 mb-50">
        <div class="elem d-flex mb-50 justify-content-center">
			<div class="single-blog-thumbnail mr-15 ml-15" style="min-width: 400px">
			<img src="data:image/jpg;base64, ${product.encodedImage}" alt="">
			</div>
		</div>
        
        

        </div>

        <div class="container">
            <div class="row">
                <!-- ##### Post Content Area ##### -->
                <div class="col-12 col-lg-9">
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Magazine</a>
                            <h1>${product.pr_name}</h1>
                            <div class="post-meta mb-50">
                                <p>${product.publish_date}</p>
                            </div>
                            <h4>${product.price} $</h4>
                            <p>${product.description}</p>

                            <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam
                                vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel
                                volutpat quam tincidunt. Morbi sodales, dolor id ultricies dictum, diam odio tempor
                                purus, at ultrices elit nulla ac nisl. Vestibulum enim sapien, blandit finibus elit
                                vitae, venenatis tempor enim. Ut varius eros at fringilla aliquet. Sed sed sodales quam.
                                Nam fermentum sed turpis sollicitudin lobortis.</p>

                            <p>Proin a nibh dignissim, volutpat mauris vitae, pellentesque nisi. In euismod non ligula
                                at gravida. Nunc blandit eget enim vel mattis. Sed semper, purus ac suscipit
                                scelerisque, eros dui fermentum tortor, vitae facilisis lacus nulla sit amet diam.
                                Nullam eget sagittis mi. Suspendisse vitae volutpat lorem. Cras porta velit id sagittis
                                ultrices. Maecenas efficitur tellus ac aliquam molestie. Morbi vel ipsum gravida,
                                ultricies nunc sed, posuere purus. Donec ipsum lectus, congue ut fermentum vitae,
                                molestie hendrerit erat. Sed lacinia accumsan egestas. Cras ac ipsum a ante placerat
                                pellentesque.</p>
                        </div>
                        <security:authorize access="hasRole('ROLE_USER')">
										<form:form action="${contextPath}/bucket" method="POST"
											enctype="multipart/form-data">
											<input type="hidden" value="${product.id}"
												name="productId">

											<button type="submit" class="btn original-btn mb-15">
												<i class="fa fa-shopping-cart" aria-hidden="true"></i>
											</button>
										</form:form>
										
										<form:form action="${contextPath}/make-subsc" method="GET"
											enctype="multipart/form-data">
											<input type="hidden" value="${product.id}"
												name="productId">

											<button type="submit" class="btn original-btn mb-15"><spring:message code='button.subs'/></button>
										</form:form>
						</security:authorize>
                    </div>
                    
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                    <div class="container">
					  <div class="row">
						<div class="modal-content">
								<div class="modal-body">
									<h5 class="title mb-30"><spring:message code='myacc.upd'/></h5>
									
									<form:form action="${contextPath}/updateProduct"
										class="newsletterForm" method="POST"
										enctype="multipart/form-data">
										
										
										<div class="group">
										<input type="text" name="pr_name" value="${product.pr_name}">
										<span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label><spring:message code="subsctibe.name" /></label>
                                        </div>
										<div class="group">
										<input type="text" name="description" value="${product.description}"/> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code="subsctibe.desc" /></label>
										</div>
                                        <div class="group">
										<input type="number" path="price" class="price" id="price" name="price" /> 
										<span class="highlight"></span><span class="bar"></span> 
										<label><spring:message code="subsctibe.price" /></label>
                                        </div>
                                        <div class="group">
										<input path="publish_date" name="publish_date" type="text" onfocus="(this.type='date')" onblur="if(this.value=='') {this.type='text'}"/> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code="subsctibe.date" /></label>
                                        </div>
                                        <div class="group">
										<input path="image" type="file" name="image" value="data:image/jpg;base64, ${product.encodedImage}" /> 
										<span class="highlight"></span> <span class="bar"></span> 
										<label><spring:message code='myacc.select'/></label>
										</div>
										<div class="group d-flex justify-content-center">
                                        <input type="hidden" value="${product.id}" name="productId">
										<button type="submit" class="btn original-btn mb-15"><spring:message code='button.submit'/></button>
										</div>
									</form:form>				

								</div>
							</div>
					</div>
				</div>
				</security:authorize>

                    <!-- Comment Area Start -->
                    <div class="comment_area clearfix mt-70">
                        <h5 class="title"><spring:message code="comment.title" /></h5>

                        <ol>
                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="img/bg-img/b7.jpg" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <a href="#" class="post-date">March 12</a>
                                        <p><a href="#" class="post-author">William James</a></p>
                                        <p>Efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum
                                            convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel
                                            volutpat quam tincidunt.</p>
                                        <a href="#" class="comment-reply">Reply</a>
                                    </div>
                                </div>
                                <ol class="children">
                                    <li class="single_comment_area">
                                        <!-- Comment Content -->
                                        <div class="comment-content d-flex">
                                            <!-- Comment Author -->
                                            <div class="comment-author">
                                                <img src="img/bg-img/b7.jpg" alt="author">
                                            </div>
                                            <!-- Comment Meta -->
                                            <div class="comment-meta">
                                                <a href="#" class="post-date">March 12</a>
                                                <p><a href="#" class="post-author">William James</a></p>
                                                <p>Efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam
                                                    vestibulum convallis risus vel condimentum. Nullam auctor lorem in
                                                    libero luctus, vel volutpat quam tincidunt.</p>
                                                <a href="#" class="comment-reply">Reply</a>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </li>

                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="img/bg-img/b7.jpg" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <a href="#" class="post-date">March 12</a>
                                        <p><a href="#" class="post-author">William James</a></p>
                                        <p>Efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum
                                            convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel
                                            volutpat quam tincidunt.</p>
                                        <a href="#" class="comment-reply">Reply</a>
                                    </div>
                                </div>
                            </li>
                        </ol>
                    </div>

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
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="img/blog-img/lp1.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="img/blog-img/lp2.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">A sunday in the park</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="img/blog-img/lp3.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="img/blog-img/lp4.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">A sunday in the park</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
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
    </div>
    <!-- ##### Single Blog Area End ##### -->


	
	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>