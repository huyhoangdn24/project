<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

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


<!-- Header Section Begin -->
<div class="header" style="position: fixed; width: 100%; z-index: 100000;">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-7">
                    <div class="header__top__left">
                        <p>
                            <sec:authorize access="isAuthenticated()">
                                Authenticated as
                                <sec:authentication property="principal.username" />
                            </sec:authorize>
                        </p>
                    </div>
                </div>

                <div class="col-lg-5 col-md-7">
                    <div class="header__top__right">
                        <div class="header__top__links">
                            <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('ROLE_ADMIN')">
                                    <a href="<c:url value='/admin/home' />">Admin Home</a>
                                </sec:authorize>
                                <a href="<c:url value='/logout' />">Logout</a>
                            </sec:authorize>

                            <!-- If not logged in, show the Login Page -->
                            <sec:authorize access="!isAuthenticated()">
                                <a href="<c:url value='/login' />">Login</a>
                            </sec:authorize>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>

<!-- Header Section End -->
