<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <meta name="description" content="Male_Fashion Template">
        <meta name="keywords" content="Male_Fashion, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Home Page</title>
       <link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
       	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
       	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
       	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
       	<link rel="stylesheet" type="text/css" href="resources/css/style.css">

    </head>
    <body >
        <div class="container-menu-desktop">
        			<!-- Topbar -->
        			<div class="top-bar">
        				<div class="content-topbar flex-sb-m h-full container">
        					<div class="left-top-bar">
        						 <p>
                                    <sec:authorize access="isAuthenticated()">
                                        Authenticated as
                                        <sec:authentication property="principal.username" />
                                    </sec:authorize>
                                </p>
        					</div>

        					<div class="right-top-bar flex-w h-full">
        					<a href="#" class="flex-c-m trans-04 p-lr-25">
                                Help & FAQs
                            </a>
        						  <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('ROLE_ADMIN')">
                                    <a href="<c:url value='/admin/home' />"class="flex-c-m trans-04 p-lr-25">Admin Home</a>
                                </sec:authorize>
                                <a href="<c:url value='/logout' />"class="flex-c-m trans-04 p-lr-25">Logout</a>
                            </sec:authorize>

                            <!-- If not logged in, show the Login Page -->
                            <sec:authorize access="!isAuthenticated()">
                                <a href="<c:url value='/login' />"class="flex-c-m trans-04 p-lr-25">Login</a>
                            </sec:authorize>
                            <a href="#" class="flex-c-m trans-04 p-lr-25">
                                EN
                            </a>

                            <a href="#" class="flex-c-m trans-04 p-lr-25">
                                USD
                            </a>
        					</div>
        				</div>
        			</div>
        			 <jsp:include page="include/menu.jsp"/>
        	        	<!-- Slider -->
        	<section class="section-slide">
        		<div class="wrap-slick1">
        			<div class="slick1">
        				<div class="item-slick1" style="background-image: url(resources/images/slide-01.jpg);">
        					<div class="container h-full">
        						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
        							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
        								<span class="ltext-101 cl2 respon2">
        									Women Collection 2023
        								</span>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
        								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
        									NEW SEASON
        								</h2>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
        								<a href="product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
        									Shop Now
        								</a>
        							</div>
        						</div>
        					</div>
        				</div>

        				<div class="item-slick1" style="background-image: url(resources/images/slide-02.jpg);">
        					<div class="container h-full">
        						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
        							<div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
        								<span class="ltext-101 cl2 respon2">
        									Men New-Season
        								</span>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
        								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
        									Jackets & Coats
        								</h2>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
        								<a href="product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
        									Shop Now
        								</a>
        							</div>
        						</div>
        					</div>
        				</div>

        				<div class="item-slick1" style="background-image: url(resources/images/slide-03.jpg);">
        					<div class="container h-full">
        						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
        							<div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
        								<span class="ltext-101 cl2 respon2">
        									Men Collection 2023
        								</span>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
        								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
        									New arrivals
        								</h2>
        							</div>

        							<div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
        								<a href="product" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
        									Shop Now
        								</a>
        							</div>
        						</div>
        					</div>
        				</div>
        			</div>
        		</div>
        	</section>
        	<!-- Banner -->
        	<div class="sec-banner bg0 p-t-80 p-b-50">
        		<div class="container">
        			<div class="row">
        				<div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
        					<!-- Block1 -->
        					<div class="block1 wrap-pic-w">
        						<img src="resources/images/banner-01.jpg" alt="IMG-BANNER">

        						<a href="product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
        							<div class="block1-txt-child1 flex-col-l">
        								<span class="block1-name ltext-102 trans-04 p-b-8">
        									Women
        								</span>

        								<span class="block1-info stext-102 trans-04">
        									Spring 2023
        								</span>
        							</div>

        							<div class="block1-txt-child2 p-b-4 trans-05">
        								<div class="block1-link stext-101 cl0 trans-09">
        									Shop Now
        								</div>
        							</div>
        						</a>
        					</div>
        				</div>

        				<div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
        					<!-- Block1 -->
        					<div class="block1 wrap-pic-w">
        						<img src="resources/images/banner-02.jpg" alt="IMG-BANNER">

        						<a href="product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
        							<div class="block1-txt-child1 flex-col-l">
        								<span class="block1-name ltext-102 trans-04 p-b-8">
        									Men
        								</span>

        								<span class="block1-info stext-102 trans-04">
        									Spring 2023
        								</span>
        							</div>

        							<div class="block1-txt-child2 p-b-4 trans-05">
        								<div class="block1-link stext-101 cl0 trans-09">
        									Shop Now
        								</div>
        							</div>
        						</a>
        					</div>
        				</div>
        				<div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
        					<!-- Block1 -->
        					<div class="block1 wrap-pic-w">
        						<img src="resources/images/banner-03.jpg" alt="IMG-BANNER">

        						<a href="product" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
        							<div class="block1-txt-child1 flex-col-l">
        								<span class="block1-name ltext-102 trans-04 p-b-8">
        									Accessories
        								</span>

        								<span class="block1-info stext-102 trans-04">
        									New Trend
        								</span>
        							</div>

        							<div class="block1-txt-child2 p-b-4 trans-05">
        								<div class="block1-link stext-101 cl0 trans-09">
        									Shop Now
        								</div>
        							</div>
        						</a>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<!-- Product -->
        	<section class="bg0 p-t-23 p-b-140">
        		<div class="container">
        			<div class="p-b-10">
        				<h3 class="ltext-103 cl5">
        					Product Overview
        				</h3>
        			</div>
                       <div class="flex-container">
                 <c:forEach items="${listOfProducts}" var="products">
                    <div class="item">
                           <img src="${products.image}" alt="" >
                           <h5>${products.productName}</h5>
                           <h5>${products.price}$</h5>
                           <a class="btn btn-outline-danger addToCartBtn" href="shopping-cart/${products.proId}" role="button"data-product-id="add/${products.proId}">ADD TO CART</a>
                    </div>
                    <div class="block2-txt-child2 flex-r p-t-3">
                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                            <img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
                            <img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
                        </a>
                    </div>
                  </c:forEach>


                </div>
        	</section>

        	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
        	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
        	<script src="resources/vendor/bootstrap/js/popper.js"></script>
        	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
        	<script src="resources/vendor/select2/select2.min.js"></script>
        	<script>
        		$(".js-select2").each(function(){
        			$(this).select2({
        				minimumResultsForSearch: 20,
        				dropdownParent: $(this).next('.dropDownSelect2')
        			});
        		})
        	</script>
        	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
        	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
        	<script src="resources/vendor/slick/slick.min.js"></script>
        	<script src="resources/js/slick-custom.js"></script>
        	<script src="resources/vendor/parallax100/parallax100.js"></script>
        	<script>
                $('.parallax100').parallax100();
        	</script>
        	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        	<script>
        		$('.gallery-lb').each(function() { // the containers for all your galleries
        			$(this).magnificPopup({
        		        delegate: 'a', // the selector for gallery item
        		        type: 'image',
        		        gallery: {
        		        	enabled:true
        		        },
        		        mainClass: 'mfp-fade'
        		    });
        		});
        	</script>
        	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
        	<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
        	<script>
        		$('.js-addwish-b2').on('click', function(e){
        			e.preventDefault();
        		});

        		$('.js-addwish-b2').each(function(){
        			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
        			$(this).on('click', function(){
        				swal(nameProduct, "is added to wishlist !", "success");

        				$(this).addClass('js-addedwish-b2');
        				$(this).off('click');
        			});
        		});

        		$('.js-addwish-detail').each(function(){
        			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

        			$(this).on('click', function(){
        				swal(nameProduct, "is added to wishlist !", "success");

        				$(this).addClass('js-addedwish-detail');
        				$(this).off('click');
        			});
        		});
        		$('.js-addcart-detail').each(function(){
        			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
        			$(this).on('click', function(){
        				swal(nameProduct, "is added to cart !", "success");
        			});
        		});
        	</script>
        	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        	<script>
        		$('.js-pscroll').each(function(){
        			$(this).css('position','relative');
        			$(this).css('overflow','hidden');
        			var ps = new PerfectScrollbar(this, {
        				wheelSpeed: 1,
        				scrollingThreshold: 1000,
        				wheelPropagation: false,
        			});

        			$(window).on('resize', function(){
        				ps.update();
        			})
        		});
        	</script>
        	<script src="resources/js/main.js"></script>
        	 <jsp:include page="include/footer.jsp"/>
        	 <!-- SweetAlert JavaScript -->
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    </body>

</html>