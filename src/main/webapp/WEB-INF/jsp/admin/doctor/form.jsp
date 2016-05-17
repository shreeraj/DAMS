<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<form:form role="form" modelAttribute="doctorForm"
			enctype="multipart/form-data" action="${postUrl}">
<div class="col-md-6">
	<!-- general form elements -->
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title">Add New Doctor</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<spring:url var="postUrl" value='/admin/doctors/add' />
		
			<div class="box-body">
				<div class="form-group">
					<label class="control-label">First Name</label>
					<form:input path="firstname" class="form-control" />
					<form:hidden path="doctorId" />
				</div>

				

				<div class="form-group">
					<label class="control-label">Last Name</label>
					<form:input path="lastname" class="form-control" />
				</div>

				<div class="form-group">
					<label class="control-label">Registration No.</label>
					<form:input path="registration" class="form-control" />
				</div>

				<div class="form-group">
					<label class="control-label">Phone</label>
					<form:input path="phone" class="form-control" />
				</div>

				<div class="form-group">
					<label class="control-label">Email</label>
					<form:input path="email" class="form-control" />
				</div>

				<div class="form-group">
					<label class="control-label">User Name</label>
					<form:input path="username" class="form-control" />
				</div>

				<div class="form-group">
					<label class="control-label">Password</label>
					<form:input path="password" class="form-control" />
				</div>
				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Submit" />
				</div>
			</div>
	</div>
</div>
<div class="col-md-6" style="margin-top: 50px;">
	<div class="form-group">
					<label for="imgData" class="control-label">File</label>
					<input name="imgData" class="btn btn-primary" type="file" />
				</div>
</div>
</form:form>