<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Sliders</h1>
		<h3 class="text-danger">${message}</h3>
		<div class="row">
			<p>
				<a href="<spring:url value='/admin/sliders/add'/>"
					class="btn btn-primary"><i class="fa fa-plus"></i> Add Slider</a>
			</p>
		</div>
		<table class="table table-bordered table-striped table-hover">
			<thead>
				<tr>
					<td>Title</td>
					<td>Image</td>
					<td>Description</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${sliders}" var="slider">
					<tr>
						<td>${slider.title}</td>
						<td>
                                                    <img width="60" height="60" class="brain img-responsive thumbnailb" src="<spring:url value='/resources/img/${slider.image }'/>" alt="">
                                                    ${slider.image }
                                                </td>
                                                <td>${slider.description }</td>
						<td>
							<a href='<spring:url value="/admin/sliders/edit/${slider.sliderId }"/>'><i class="fa fa-pencil"></i></a>
							<a href="<spring:url value="/admin/sliders/delete/${slider.sliderId }"/>"><i class="fa fa-trash"></i></a>
							
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>
