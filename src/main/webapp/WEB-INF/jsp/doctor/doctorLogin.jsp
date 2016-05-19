<%-- 
    Document   : site
    Created on : May 12, 2016, 12:08:38 AM
    Author     : shreerajkarki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>DAMS DOCTOR LOGIN</title>

<link
	href="<spring:url value='/resources/admin/bower_components/bootstrap/dist/css/bootstrap.min.css' />"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<spring:url value='/resources/admin/bower_components/metisMenu/dist/metisMenu.min.css' />"
	rel="stylesheet">

<!-- Timeline CSS -->
<link
	href="<spring:url value='/resources/admin/dist/css/timeline.css' />"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<spring:url value='/resources/admin/dist/css/sb-admin-2.css' />"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="<spring:url value='/resources/admin/bower_components/morrisjs/morris.css' />"
	rel="stylesheet">
<link href="<spring:url value='/resources/css/default.css' />"
	rel="stylesheet">
<link href="<spring:url value='/resources/css/default.date.css' />"
	rel="stylesheet">
<link href="<spring:url value='/resources/css/default.time.css' />"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<spring:url value='/resources/admin/bower_components/font-awesome/css/font-awesome.min.css' />"
	rel="stylesheet" type="text/css">

<!-- 	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script> -->

</head>

<body style="background: #F7F7F7;">

	<div class="">


		<div class="container">
			<div class="col-md-4 col-md-offset-4" style="margin-top: 30px;">
				<div id="login" class="form">
					<section class="login_content">

						<h1 class="text-primary text-center">DAMS DOCTOR Login</h1>
						<spring:url value="/doctor/processLogin" var ="docFormUrl"/>
						
						<form:form modelAttribute="docLogin" class="loginForm" method="post"
							action="${docFormUrl }">
							<p class="text-danger">${message }</p>
							<c:if test="${not empty error}">
								<p class="text-danger">${error}</p>
							</c:if>
							<c:if test="${not empty msg}">
								<p class="text-info">${msg}</p>
							</c:if>
							<div class="form-group">
								<label class="control-label">Username</label> 
								<form:input
									path="username" class="form-control" type="text" />
							</div>
							<div class="form-group">
								<label class="control-label">Password</label> 
								<form:input
									path="password" class="form-control" type="password" />
							</div>
<%-- 							<input type="hidden" name="${_csrf.parameterName}" --%>
<%-- 								value="${_csrf.token}" /> --%>
							<div>
								<button type="submit" class="btn btn-default submit">Log
									in</button>
								<!--               <a class="reset_pass" href="#">Lost your password?</a> -->
							</div>
							<div class="clearfix"></div>
							<div class="separator">

								<div class="clearfix"></div>
								<br />
								<div>
									<h1>
										<i class="fa fa-paw" style="font-size: 26px;"></i> DAMS
									</h1>

									<p>©2015 All Rights Reserved.</p>
								</div>
							</div>

						</form:form>

						<!-- form -->
					</section>
					<!-- content -->
				</div>
			</div>
		</div>
	</div>

	<style>
.loginForm {
	padding: 10px;
	border: 1px solid #ddd;
}
</style>

	<!-- jQuery -->
	<script
		src="<spring:url value='/resources/admin/bower_components/jquery/dist/jquery.min.js' />"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="<spring:url value='/resources/admin/bower_components/bootstrap/dist/js/bootstrap.min.js' />"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="<spring:url value='/resources/admin/bower_components/metisMenu/dist/metisMenu.min.js' />"></script>

	<!-- Morris Charts JavaScript -->
	<script
		src="<spring:url value='/resources/admin/bower_components/raphael/raphael-min.js' />"></script>

	<%-- 	<script src="<spring:url value='/resources/admin/js/morris-data.js' />"></script> --%>

	<!-- Custom Theme JavaScript -->
	<script
		src="<spring:url value='/resources/admin/dist/js/sb-admin-2.js' />"></script>
	<script src="<spring:url value='/resources/admin/js/picker.js' />"></script>
	<script src="<spring:url value='/resources/admin/js/picker.date.js' />"></script>
	<script src="<spring:url value='/resources/admin/js/picker.time.js' />"></script>



</body>

</html>
