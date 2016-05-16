<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Doctors</h1>
		<h3 class="text-danger">${message}</h3>
		<div class="row">
			<p>
				<a href="<spring:url value='/admin/doctors/add'/>"
					class="btn btn-primary"><i class="fa fa-plus"></i> Add Doctor</a>
			</p>
		</div>
		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<td>Firstname</td>
					<td>Lastname</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${doctors}" var="doc">
					<tr>
						<td>${doc.firstname}</td>
						<td>${doc.lastname }</td>
						<td>
							<a href='<spring:url value="/admin/doctors/edit/${doc.doctorId }"/>'><i class="fa fa-pencil"></i></a>
							<a href="<spring:url value="/admin/doctors/delete/${doc.doctorId }"/>"><i class="fa fa-trash"></i></a>
							<a href="<spring:url value="/admin/time/${doc.doctorId }"/>"><i class="fa fa-clock-o"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>
