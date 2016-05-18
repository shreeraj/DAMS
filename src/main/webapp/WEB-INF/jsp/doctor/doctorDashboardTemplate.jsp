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

<title>Doctor</title>

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
<link
	href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css"
	rel="stylesheet">
	
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<tiles:insertAttribute name="header" />

			<tiles:insertAttribute name="menu" />
		</nav>

		<div id="page-wrapper">

			<tiles:insertAttribute name="body" />
		</div>

		<tiles:insertAttribute name="footer" />
	</div>
	<!-- /#wrapper -->








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
	<script type="text/javascript" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
// 			alert('tst');
			$(".fullTime").pickatime();
			
			
				 $('.dataTable').DataTable();
			
	
		})
	</script>
	
</body>

</html>
