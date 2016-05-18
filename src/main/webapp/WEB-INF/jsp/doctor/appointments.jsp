<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<table class="display dataTable" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Date</th>
                <th>Patient Name</th>
                <th>Time</th>
                <th>Actions</th>
                
            </tr>
        </thead>
      
        <tbody>
        <c:forEach items="${appointments}" var="app">
            <tr>
                <td>${app.appointment.appDate}</td>
                
                
                <td>${app.patient.firstname} ${app.patient.lastname}</td>
                <td>${app.docTime.start} - ${app.docTime.end}</td>
                <td></td>
            </tr>
            </c:forEach>
                        
        </tbody>
	</table>
