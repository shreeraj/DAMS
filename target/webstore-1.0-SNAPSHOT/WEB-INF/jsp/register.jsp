<%-- 
    Document   : home
    Created on : May 12, 2016, 12:15:00 AM
    Author     : shreerajkarki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style type="text/css">
    #register{
        padding: 10px;
        font-size: 18px;
        border: 1px solid #f0f0f0;
        width: 600px;
        
    }
    #register td{
        padding: 10px;
    }
    .error{
        color: red;
    }
    
</style>
<div  style="height: 90px !important;"></div>
<!-- about section -->
<section class="about text-center" id="about">
    <div class="container">
        <div class="row" >
            <div class="service text-center" id="service"></div>
            <center>
            <h2>Sign Up  </h2>
             
            <spring:url var="postUrl" value='/client/signup' />
            <form:form  role="form" modelAttribute="patient" action="${postUrl}">
			<div class="box-body">
                            <table id="register">
                                <tr>
                                    <td><label class="control-label">First Name</label></td>
                                    <td><form:input path="firstname" class="form-control" />
					<form:hidden path="patientId" />
                                    </td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Last Name:</label></td>
                                    <td><form:input path="lastname" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Username:</label></td>
                                    <td><form:input path="username" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Password:</label></td>
                                    <td><form:input path="password" class="form-control" type="password" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Retype Password:</label></td>
                                    <td><input  class="form-control" type="password" /></td>
                                </tr>
                                <tr>
                                <script type="text/javascript">
                                   
                                </script>
                                    <td><label class="control-label">DOB:</label></td>
                                    <td><form:input  id="datepickerDOB" path="dob" class="form-control"  /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Phone:</label></td>
                                    <td><form:input path="phone" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">Email:</label></td>
                                    <td><form:errors path="email" cssClass="error" />
                                        <form:input id="email" path="email" class="form-control" />
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td><label class="control-label">Street</label></td>
                                    <td><form:input path="street" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">City</label></td>
                                    <td><form:input path="city" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">State</label></td>
                                    <td><form:input path="state" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td><label class="control-label">ZIP</label></td>
                                    <td><form:input path="zip" class="form-control" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input style="font-size: 18px" type="submit" class="btn btn-primary" value="Submit" />
                                        <a style="font-size: 18px" class="btn btn-default">Cancel</a>
                                    </td>
                                </tr>
                            </table>
			
			</div>
		</form:form>          
            </center>
        </div>
    </div>
</section><!-- end of about section -->


<!-- service section starts here -->
<section class="service text-center" id="service">
    <div class="container">
        <div class="row">
            <h2>our services</h2>
            <h4>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</h4>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="heart img-responsive" src="<spring:url value='/resources/img/service1.png'/>" alt="">
                        </div>
                    </div>
                    <h3>Heart problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="brain img-responsive" src="<spring:url value='/resources/img/service2.png'/>" alt="">
                        </div>
                    </div>
                    <h3>brain problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="knee img-responsive" src="<spring:url value='/resources/img/service3.png'/>" alt="">
                        </div>
                    </div>
                    <h3>knee problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="bone img-responsive" src="<spring:url value='/resources/img/service4.png'/>" alt="">
                        </div>
                    </div>
                    <h3>human bones problem</h3>
                </div>
            </div>
        </div>
    </div>
</section><!-- end of service section -->


<!-- team section -->
<section class="team" id="team">
    <div class="container">
        <div class="row">
            <div class="team-heading text-center">
                <h2>our team</h2>
                <h4>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</h4>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member1.jpg'/>" alt="member-1">
                </div>
                <div class="person-detail">
                    <div class="arrow-bottom"></div>
                    <h3>Dr. M. Weiner, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person-detail">
                    <div class="arrow-top"></div>
                    <h3>Dr. Danielle, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member2.jpg'/>" alt="member-2">
                </div>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member3.jpg'/>" alt="member-3">
                </div>
                <div class="person-detail">
                    <div class="arrow-bottom"></div>
                    <h3>Dr. Caitlin, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person-detail">
                    <div class="arrow-top"></div>
                    <h3>Dr. Joseph, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member4.jpg'/>" alt="member-4">
                </div>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member5.jpg'/>" alt="member-5">
                </div>
                <div class="person-detail">
                    <div class="arrow-bottom"></div>
                    <h3>Dr. Michael, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
            </div>
            <div class="col-md-2 single-member col-sm-4">
                <div class="person-detail">
                    <div class="arrow-top"></div>
                    <h3>Dr. Hasina, M.D.</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                </div>
                <div class="person">
                    <img class="img-responsive" src="<spring:url value='/resources/img/member6.jpg'/>" alt="member-5">
                </div>
            </div>
        </div>
    </div>
</section><!-- end of team section -->

<!-- map section -->
<div class="api-map" id="contact">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 map" id="map"></div>
        </div>
    </div>
</div><!-- end of map section -->

<!-- contact section starts here -->
<section class="contact">
    <div class="container">
        <div class="row">
            <div class="contact-caption clearfix">
                <div class="contact-heading text-center">
                    <h2>contact us</h2>
                </div>
                <div class="col-md-5 contact-info text-left">
                    <h3>contact information</h3>
                    <div class="info-detail">
                        <ul><li><i class="fa fa-calendar"></i><span>Monday - Friday:</span> 9:30 AM to 6:30 PM</li></ul>
                        <ul><li><i class="fa fa-map-marker"></i><span>Address:</span> 123 Some Street , London, UK, CP 123</li></ul>
                        <ul><li><i class="fa fa-phone"></i><span>Phone:</span> (032) 987-1235</li></ul>
                        <ul><li><i class="fa fa-fax"></i><span>Fax:</span> (123) 984-1234</li></ul>
                        <ul><li><i class="fa fa-envelope"></i><span>Email:</span> info@doctor.com</li></ul>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-1 contact-form">
                    <h3>leave us a message</h3>

                    <form class="form">
                        <input class="name" type="text" placeholder="Name">
                        <input class="email" type="email" placeholder="Email">
                        <input class="phone" type="text" placeholder="Phone No:">
                        <textarea class="message" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                        <input class="submit-btn" type="submit" value="SUBMIT">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section><!-- end of contact section -->

