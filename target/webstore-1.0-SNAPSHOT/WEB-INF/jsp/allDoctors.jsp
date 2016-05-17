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
<center>
<section>
    <div><h2 style="color: #d67d3d">${message}</h2></div>
</section>
</center>
<section class="about text-center" id="about">
	<div class="container ">
		<div class="row">
			<h2>Our Doctors</h2>
			<h4>Book An appointment with our world class Doctors.</h4>
	<div class="row col-md-9 col-md-offset-3">
			<ul class="filter-list">
				<li><span class="filter" data-filter="all">Show All</span></li>
				<c:forEach items="${speciality }" var="sp">
					<li><span class="filter" data-filter=".${sp.specialityId }">
							${sp.specialityName }</span></li>
				</c:forEach>


			</ul>
	</div>
			<div class="mixing">
				<c:forEach items="${allDoctors }" var="doctor">
					<div class="col-md-4 col-sm-6 mix ${doctor.specialityId }">
						<div class="single-about-detail clearfix">
							<div class="about-img">
								<img class="img-responsive"
									src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
							</div>
							<div class="about-details">

								<h3>
									<a href="<spring:url value='doctors/doctorDetail/${doctor.doctorId }'/>">Dr. ${doctor.firstname } ${doctor.lastname }</a>
								</h3>

							</div>
						</div>
					</div>
				</c:forEach>

				
			</div>
		</div>
	</div>
</section>
<!-- end of about section -->
<style>
.mix {
	display: none;
}

.filter-list li{
	border: 1px solid #ddd;
    float: left;
    font-size: 25px;
    list-style: outside none none;
    margin: 0 25px 13px 0;
    padding: 5px;
}
</style>

