<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header text-capitalize">Dr. ${doc.firstname}
			${doc.lastname }</h1>
		<h3 class="text-danger">${message}</h3>
		<div class="row">
			<p>
				<a href="<spring:url value='/admin/time/add/${doc.doctorId }'/>"
					class="btn btn-primary"><i class="fa fa-plus"></i> Add Time</a>
			</p>
		</div>
		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<td>Start Time</td>
					<td>End Time</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${docTimes}" var="time">
					<tr>
						<td>${time.start }</td>
						<td>${time.end }</td>
						<td> <a href='<spring:url value="/admin/time/edit/${time.timeId }"/>'><i class="fa fa-pencil"></i></a>
							<a href="<spring:url value="/admin/time/delete/${time.timeId }"/>"><i class="fa fa-trash"></i></a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>
