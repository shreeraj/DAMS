<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="col-md-6">
	<!-- general form elements -->
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title">Add New Doctor</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<spring:url var="postUrl" value='/admin/time/add/${doc.doctorId}'/>
		<form:form role="form" modelAttribute="timeForm" action="${postUrl }">
			<div class="box-body">
				<div class="form-group">
					<label class="control-label">Start</label>
					<form:input path="start" class="form-control fullTime" />
					<form:hidden path="timeId"/>
				</div>

				<div class="form-group">
					<label class="control-label">End</label> 
					<form:input path="end" class="form-control fullTime" />
				</div>

				
				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Submit" />
				</div>

			</div>
		</form:form>
	</div>
</div>
