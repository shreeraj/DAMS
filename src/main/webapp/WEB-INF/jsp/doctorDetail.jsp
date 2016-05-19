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
						<td ><a href="javascript:void(0);" onclick="showApp()" class="btn btn-primary">Make An Appointment</a></td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4 col-md-offset-6">
			<h3> ${message}</h3>
			<spring:url var ="appointmentConfirm" value="/client/doctors/processAppointment"/>
				<form:form class="app_form" modelAttribute="appointmentForm" action="${appointmentConfirm}">
					<div class="form-group">
						<label class="control-label">Choose Date</label>
						<form:input id ="appPicker" path="appDate" type="text" class="form-control "/>
						<form:hidden path="docId" value="${doctor.doctorId }"/>
						<form:hidden path="patientId" value="${patientId }"/>
					</div>
					
					<div class="form-group">
						<label class="control-label">Available Times</label>
						<form:select class="form-control" path="timeId">
							<c:forEach items="${docTimes }" var="docTime">
								<form:option value="${docTime.timeId }">${docTime.start } - ${docTime.end }</form:option>
							</c:forEach>
						</form:select>
					</div>
					<input type="submit" value="Confirm" class="btn btn-danger"/>
				</form:form>
			</div>
		</div>
	</div>
</section>
<!-- end of about section -->
<style>

.app_form{
 border: 1px solid #ddd;
    margin-top: 10px;
    padding: 10px;
    display: none;
}

.app_form label{
	font-size:22px;
}
</style>

<script type="text/javascript">
	var patientID = "${patientId }";

	function showApp(){
		if(patientID==""){
			alert('You Must Be Logged In To Make Appointment');
		}else{
			$('.app_form').fadeIn(500);
		}
		
	}
</script>

