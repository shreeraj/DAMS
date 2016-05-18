<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container">
	<div class="row">
		<h2>Dr. ${doctor.firstname} ${doctor.lastname }</h2>

		<div class="col-md-3 col-md-offset-1">

			<img class="img-responsive"
				src="<spring:url value='/resources/img/item1.jpg'/>" alt="">
		</div>
		<div class="col-md-6">

			<a
				href="<spring:url value='/doctor/profile/edit?id=${doctor.doctorId}'/>"
				class="btn btn-primary pull-right" style="margin-bottom: 10px;"><i
				class="fa fa-pencil"></i>Edit</a>
			<table class="table table-bordered">
				<tr>
					<td>Name</td>
					<td>Dr. ${doctor.firstname} ${doctor.lastname }</td>
				</tr>
				<tr>
					<td>Registration No</td>
					<td>${doctor.registration }</td>
				</tr>
				<tr>
					<td>Speciality</td>
					<td>${speciality.specialityName}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${doctor.street}, ${doctor.city}, ${doctor.state} }</td>
				</tr>
				<tr>
					<td>Phone</td>
					<td>${doctor.phone }</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>${doctor.email }</td>
				</tr>
			</table>
		</div>
	</div>
</div>
