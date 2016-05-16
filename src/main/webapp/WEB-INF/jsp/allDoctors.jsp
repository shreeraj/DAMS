<%-- 
    Document   : home
    Created on : May 12, 2016, 12:15:00 AM
    Author     : shreerajkarki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>




<!-- about section -->

<section class="slider" id="home">
	<div class="container-fluid">
		<div class="row"></div>
		<div class="header-backup"></div>
	</div>
</section>
<section class="about text-center" id="about">
	<div class="container ">
		<div class="row">
			<h2>Our Doctors</h2>
			<h4>Book An appointment with our world class Doctors.</h4>
			<c:forEach items="${allDoctors }" var="doctor">

			</c:forEach>
			<ul class="filter-list">
				<li><span class="filter" data-filter="all">Show All</span></li>
			</ul>
			<div class="filter" data-filter="all">Show All</div>
			<div class="filter" data-filter=".category-1">Category 1</div>
			<div class="filter" data-filter=".category-2">Category 2</div>
			<div class="filter" data-filter=".category-3">Category 3</div>
			<div class="mixing">
				<div class="col-md-4 col-sm-6 mix category-1">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive"
								src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
						</div>
						<div class="about-details">

							<h3>
								<a href="<spring:url value='doctors'/>">Dr. Shree Raj Karki</a>
							</h3>

						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mix category-1">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive"
								src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
						</div>
						<div class="about-details">

							<h3>
								<a href="<spring:url value='doctors'/>">Dr. Rikky</a>
							</h3>

						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mix category-2">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive"
								src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
						</div>
						<div class="about-details">

							<h3>
								<a href="<spring:url value='doctors'/>">Dr. Raj </a>
							</h3>

						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mix category-2">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive"
								src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
						</div>
						<div class="about-details">

							<h3>
								<a href="<spring:url value='doctors'/>">Dr. Shree </a>
							</h3>

						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 mix category-3">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive"
								src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
						</div>
						<div class="about-details">

							<h3>
								<a href="<spring:url value='doctors'/>">Dr. Shree Karki</a>
							</h3>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end of about section -->
<style>
.mix{
	display: none;
}
</style>

