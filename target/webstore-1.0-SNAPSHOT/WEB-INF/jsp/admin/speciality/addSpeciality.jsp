<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="col-md-6">
	<!-- general form elements -->
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title">Add New Speciality</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<spring:url var="postUrl" value='/admin/specialities/add' />
		<form:form role="form" modelAttribute="speciality"
			action="${postUrl }">
			<div class="box-body">
				<div class="form-group">
					<label class="control-label">Speciality</label>
					<form:input path="specialityName" class="form-control" />
					<form:hidden path="specialityId" />
				</div>

				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Submit" />
				</div>

			</div>
		</form:form>
	</div>
</div>
