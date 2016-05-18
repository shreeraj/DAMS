<%-- 
    Document   : header
    Created on : May 12, 2016, 12:10:27 AM
    Author     : shreerajkarki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<div class="row">
		<div class="col-xs-5 header-logo">
			<br> <a href="index.html"><img
				src="<spring:url value='/resources/img/logo.png'/>" alt=""
				class="img-responsive logo"></a>
		</div>



		<div class="col-md-7">
			<nav class="navbar navbar-default">
				<div class="container-fluid nav-bar">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">


						<ul class="nav navbar-nav navbar-right">
							<li><a class="menu active"
								href="<spring:url value='/client'/> ">Home</a></li>
							<!--                                         <li><a class="menu" href="#about">about us</a></li> -->
							<li><a class="menu"
								href="<spring:url value='/client/doctors'/>">our team </a></li>

							<li><a class="menu" href="#contact"> contact us</a></li>
							<li><a class="menu"
								href="<spring:url value='/client/signup' />"> Sign Up</a></li>
							<%
								if (session.getAttribute("patientId") == null) {
							%>

							<li><a href="javascript:void(0)" data-toggle="modal"
								data-target="#login-modal">Login</a></li>
							<%
								} else {
							%>
<!-- 							<li><a href="account.html">My Account</a></li> -->
							<!-- 							<li class="hidden-xs"><a href="wishlist.html">Wishlist</a></li> -->
						
							<!-- 							<li class="hidden-xs"><a href="checkout.html">Checkout</a></li> -->
							<li><a href="<spring:url value='/client/logout'/>">Logout</a></li>
							<%
								}
							%>
						</ul>
					</div>
					<!-- /navbar-collapse -->
				</div>
				<!-- / .container-fluid -->
			</nav>
		</div>
	</div>
</div>

