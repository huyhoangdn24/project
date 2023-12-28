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
       	<link rel="stylesheet" type="text/css" href="resources/css/styleProduct.css">
       	<!-- SweetAlert CSS -->



    </head>

    <body class="animsition">

    	<!-- Header -->
    	<header class="header-v4">
    		<!-- Header desktop -->
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
        			 <div class="wrap-menu-desktop">
                     				<nav class="limiter-menu-desktop container">

                     					<!-- Logo desktop -->
                     					<a href="#" class="logo">
                     						<img src="resources/images/icons/logo-01.png" alt="IMG-LOGO">
                     					</a>

                     					<!-- Menu desktop -->
                     					<div class="menu-desktop">
                     						<ul class="main-menu">
                     							<li class="active-menu">
                     								<a href="index">Home</a>
                     							</li>

                     							<li>
                     								<a href="product">Shop</a>
                     							</li>
                     							 <c:set var="featureDisplayed" value="false"/>

                                                         <c:forEach items="${productList}" var="products">
                                                             <c:if test="${not featureDisplayed}">
                                                                 <c:set var="featureDisplayed" value="true"/>
                                                                 <li class="label1" data-label1="hot">
                                                                     <a href="shopping-cart/${products.proId}">Features</a>
                                                                 </li>
                                                             </c:if>
                                                         </c:forEach>
                     							<li>
                     								<a href="blog">Blog</a>
                     							</li>

                     							<li>
                     								<a href="about">About</a>
                     							</li>

                     							<li>
                     								<a href="contact">Contact</a>
                     							</li>
                     						</ul>
                     					</div>

                     					<!-- Icon header -->
                     					<div class="wrap-icon-header flex-w flex-r-m">
                     						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                     							<i class="zmdi zmdi-search"></i>
                     						</div>

                     						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="0">
                     							<i class="zmdi zmdi-shopping-cart"></i>
                     						</div>

                     						<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                     							<i class="zmdi zmdi-favorite-outline"></i>
                     						</a>
                     					</div>
                     				</nav>
                     			</div>
                     		</div>



                     		<!-- Modal Search -->
                     		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
                     			<div class="container-search-header">
                     				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
                     					<img src="resources/images/icons/icon-close2.png" alt="CLOSE">
                     				</button>

                     				<form class="wrap-search-header flex-w p-l-15">
                     					<button class="flex-c-m trans-04">
                     						<i class="zmdi zmdi-search"></i>
                     					</button>
                     					<input class="plh3" type="text" name="search" placeholder="Search...">
                     				</form>
                     			</div>
                     		</div>
                     	</header>
        			 <div class="container">
                     		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
                     			<a href="index" class="stext-109 cl8 hov-cl1 trans-04">
                     				Home
                     				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                     			</a>
                     			<a href="product" class="stext-109 cl8 hov-cl1 trans-04">
                                    Shop
                                    <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                                </a>
                     		</div>
                             <div class="flex-container">
                                <c:forEach items="${productList}" var="products">
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
                     </div>
                     <div class="pagination-buttons text-center mt-4">
                         <c:if test="${currentPage ne 1}">
                             <a href="product?page=1" class="btn btn-outline-secondary mr-2">1</a>
                         </c:if>
                         <c:if test="${currentPage ne 2}">
                             <a href="product?page=2" class="btn btn-outline-secondary">2</a>
                         </c:if>

                     </div>
                     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.addToCartBtn').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault(); // Ngăn chặn hành động mặc định của nút
            const productId = this.getAttribute('data-product-id');

            // Lưu productId vào localStorage khi người dùng nhấn nút
            localStorage.setItem('addedProductId', productId);

            // Cập nhật giao diện người dùng ở đây (nếu cần)
            alert('Product added to cart!');
        });
    });

    // Kiểm tra xem có sản phẩm được thêm trước đó không khi trang được tải lại
    const addedProductId = localStorage.getItem('addedProductId');
    if (addedProductId) {
        fetch(`/add/${addedProductId}`, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
                // Thêm các header cần thiết nếu có
            },
        })

        });
    }
});
 document.querySelectorAll('.addToCartBtn').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault(); // Ngăn chặn hành động mặc định của nút
            const productId = this.getAttribute('data-product-id');

            // Lưu productId vào localStorage khi người dùng nhấn nút
            localStorage.setItem('addedProductId', productId);

            // Cập nhật giao diện người dùng ở đây (nếu cần)
            alert('Product added to cart!');
        });
    });
});
</script>
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
        	<script src="../resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
   <script>
                   function addToCart(event, productId) {
                       var itemClicked = event.target.closest('.item'); // Lấy phần tử gần nhất có class là "item"

                       var imageSrc = itemClicked.querySelector('img').getAttribute('src');
                       var productName = itemClicked.querySelector('h5:first-of-type').innerText;
                       var price = itemClicked.querySelector('h5:nth-of-type(2)').innerText;

                       console.log('Thông tin sản phẩm:');
                       console.log('Ảnh:', imageSrc);
                       console.log('Tên sản phẩm:', productName);
                       console.log('Giá:', price);

                       // Lưu thông tin sản phẩm vào localStorage hoặc mảng để hiển thị trong modal
                       var product = {
                           image: imageSrc,
                           productName: productName,
                           price: price,
                           proId: productId
                           // Thêm thông tin sản phẩm khác nếu cần
                       };

                       var cartProducts = JSON.parse(localStorage.getItem('cartProducts')) || [];
                           cartProducts.push(product);
                           localStorage.setItem('cartProducts', JSON.stringify(cartProducts));

                           // Cập nhật giỏ hàng và hiển thị modal
                          var cartIcon = document.querySelector('.icon-header-noti.js-show-cart');
                           var notifyValue = parseInt(cartIcon.getAttribute('data-notify'));
                           cartIcon.setAttribute('data-notify', notifyValue + 1);
                           displayCartProducts();

                   }
                    // Hiển thị sản phẩm trong giỏ hàng
                       function displayCartProducts() {
                           var cartProducts = JSON.parse(localStorage.getItem('cartProducts')) || [];
                           var modalBody = document.querySelector('.modal-body');
                           modalBody.innerHTML = ''; // Xóa bỏ nội dung cũ của modal để cập nhật thông tin mới

                           cartProducts.forEach(function(product) {
                               var productInfo = document.createElement('div');
                               productInfo.classList.add('cart-item');

                               var productHTML = `
                                   <img src="${product.image}" alt="${product.productName}">
                                   <h6>${product.productName}</h6>
                                   <p>${product.price}</p>
                               `;

                               productInfo.innerHTML = productHTML;
                               modalBody.appendChild(productInfo);
                           });
                       }

                       // Hiển thị sản phẩm trong giỏ hàng khi modal được mở
                       $('#cartModal').on('show.bs.modal', function(event) {
                           displayCartProducts();
                       });
                 </script>

                 <script>
                 document.querySelector('.btn-show-modal').addEventListener('click', function() {
                     $('#cartModal').modal('show');
                 });
                 </script>


                  <!-- Modal -->
                  <div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="cartModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="cartModalLabel">Shopping Cart</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <!-- Nội dung của giỏ hàng sẽ được hiển thị ở đây -->
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="button" class="btn btn-primary">Checkout</button>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>

                              </body>
                          </html>


    </body>
</html>