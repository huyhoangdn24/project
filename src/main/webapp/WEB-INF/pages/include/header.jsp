<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap" rel="stylesheet">
<!-- Add the Bootstrap CSS link here -->


<!-- Header Section Begin -->
<header style="position: fixed; width: 100%; z-index: 100000;" class="header">
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
                <div class="col-lg-2 col-md-5">
                    <div class="header__top__hover">
                        <span>USD <i class="arrow_carrot-down"></i></span>
                        <ul>
                            <li>USD</li>
                            <li>EUR</li>
                            <li>USD</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->
