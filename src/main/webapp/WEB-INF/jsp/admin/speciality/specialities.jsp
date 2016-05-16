<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Specialities</h1>
		<h3 class="text-danger">${message}</h3>
		<div class="row">
			<p>
				<a href="<spring:url value='/admin/specialities/add'/>"
					class="btn btn-primary"><i class="fa fa-plus"></i> Add Speciality</a>
			</p>
		</div>
		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<td>Speciality</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${specialities}" var="speciality">
					<tr>
						<td>${speciality.specialityName}</td>
						
						<td>
							<a href='<spring:url value="/admin/specialities/edit/${speciality.specialityId }"/>'><i class="fa fa-pencil"></i></a>
							<a href="<spring:url value="/admin/specialities/delete/${speciality.specialityId }"/>"><i class="fa fa-trash"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>
