<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="col-md-6">
	<!-- general form elements -->
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title">Add New Slider</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<spring:url var="postUrl" value='/admin/sliders/add?${_csrf.parameterName}=${_csrf.token}' />
		<form:form role="form" modelAttribute="sliderForm" enctype="multipart/form-data"
			action="${postUrl }">
			<div class="box-body">
				<div class="form-group">
					<label class="control-label">Title</label>
					<form:input path="title" class="form-control" />
					<form:hidden path="sliderId" />
				</div>

				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group">
					<label class="control-label">Image</label>
					<input name="imgData" class="btn btn-primary" type="file" />
				</div>

				<div class="form-group">
					<label class="control-label">Description</label>
                                        <form:textarea path="description" class="form-control" type="password" />

				</div>


				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Submit" />
				</div>
			</div>
		</form:form>
	</div>
</div>
