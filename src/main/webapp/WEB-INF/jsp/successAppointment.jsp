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
			<h3>Thank you for booking Appointment</h3>
			<p class="appDetail">Your Appointment has been scheduled on <strong>${appointment.appDate }</strong> with <strong>Dr.${doctor.firstname } ${doctor.lastname } </strong> at <strong>${doc.start } ${doc.end } </strong></p>
			
		</div>
		
	</div>
</section>
<!-- end of about section -->
<style>
.appDetail{
	font-size:22px;
	padding:10px;
	border:1px solid #ddd;
}

</style>

