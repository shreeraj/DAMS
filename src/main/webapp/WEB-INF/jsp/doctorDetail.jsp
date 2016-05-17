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
			<h2>Dr. ${doctor.firstname} ${doctor.lastname }</h2>
			<div class="col-md-3 col-md-offset-1">
			<img class="img-responsive"
									src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
			</div>
			<div class="col-md-6">
				<table class="table table-bordered">
					<tr>
						<td>Name</td>
						<td>Dr. ${doctor.firstname} ${doctor.lastname }</td>
					</tr>
					<tr>
						<td>Registration No.</td>
						<td>${doctor.registration }</td>
					</tr>
					<tr>
						<td>Date Of Birth.</td>
						<td>${doctor.dob }</td>
					</tr>
					<tr>
						<td>Phone</td>
						<td>${doctor.phone }</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>${doctor.email }</td>
					</tr>
					<tr>
					<td></td>
						<td ><a href="" class="btn btn-primary">Make An Appointment</a></td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4 col-md-offset-6">
				<form class="app_form">
					<div class="form-group">
						<label class="control-label">Choose Date</label>
						<input type="text" class="form-control">
					</div>
					
					<div class="form-group">
						<label class="control-label">Available Times</label>
						<select class="form-control">
							<c:forEach items="${docTimes }" var="docTime">
								<option value="${docTime.timeId }">${docTime.start } - ${docTime.end }</option>
							</c:forEach>
						</select>
					</div>
					<input type="submit" value="Confirm" class="btn btn-danger"/>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- end of about section -->
<style>
.app_form label{
	font-size:22px;
}
</style>
