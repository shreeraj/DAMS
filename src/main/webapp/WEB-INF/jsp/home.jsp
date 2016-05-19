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



<section class="slider" id="home">
    <div class="container-fluid">
        <div class="row">
            <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="header-backup"></div>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="<spring:url value='resources/img/slide-one.jpg'/>" alt="">
                        <div class="carousel-caption">
                            <h1>providing</h1>
                            <p>highquality service for men &amp; women</p>
                            
                        </div>
                    </div>
                    <div class="item">
                        <img src="<spring:url value='resources/img/slide-two.jpg'/>" alt="">
                        <div class="carousel-caption">
                            <h1>providing</h1>
                            <p>highquality service for men &amp; women</p>
                            <button>learn more</button>
                        </div>
                    </div>
                    <div class="item">
                        <img src="<spring:url value='resources/img/slide-three.jpg'/>" alt="">
                        <div class="carousel-caption">
                            <h1>providing</h1>
                            <p>highquality service for men &amp; women</p>
                            <button>learn more</button>
                        </div>
                    </div>
                    <div class="item">
                        <img src="<spring:url value='resources/img/slide-four.jpg'/>" alt="">
                        <div class="carousel-caption">
                            <h1>providing</h1>
                            <p>highquality service for men &amp; women</p>
                            <button>learn more</button>
                        </div>
                    </div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section><!-- end of slider section -->

<!-- about section -->
<section class="about text-center" id="about">
    <div class="container">
        <div class="row">
            <h2>Our Doctors</h2>
            <h4>Book An appointment with our world class Doctors.</h4>
            <div class="col-md-4 col-sm-6">
                <div class="single-about-detail clearfix">
                    <div class="about-img">
                        <img class="img-responsive" src="<spring:url value='resources/img/item1.jpg'/>" alt="">
                    </div>
                    <div class="about-details">
                        
                        <h3><a href="<spring:url value='doctors'/>">Dr. Shree Raj Karki</a></h3>
                      
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-about-detail clearfix">
                    <div class="about-img">
                        <img class="img-responsive" src="<spring:url value='resources/img/item1.jpg'/>" alt="">
                    </div>
                    <div class="about-details">
                        
                        <h3><a href="<spring:url value='doctors'/>">Dr. Shree Raj Karki</a></h3>
                      
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-about-detail clearfix">
                    <div class="about-img">
                        <img class="img-responsive" src="<spring:url value='resources/img/item1.jpg'/>" alt="">
                    </div>
                    <div class="about-details">
                        
                        <h3><a href="<spring:url value='doctors'/>">Dr. Shree Raj Karki</a></h3>
                      
                    </div>
                </div>
            </div>
            <div class="col-md-12">
            	<h3 class="text-center"><a href="<spring:url value='client/doctors'/>">See All Doctors</a></h3>
            </div>
         
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
                            <img class="heart img-responsive" src="<spring:url value='resources/img/service1.png'/>" alt="">
                        </div>
                    </div>
                    <h3>Heart problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="brain img-responsive" src="<spring:url value='resources/img/service2.png'/>" alt="">
                        </div>
                    </div>
                    <h3>brain problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="knee img-responsive" src="<spring:url value='resources/img/service3.png'/>" alt="">
                        </div>
                    </div>
                    <h3>knee problem</h3>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-service">
                    <div class="single-service-img">
                        <div class="service-img">
                            <img class="bone img-responsive" src="<spring:url value='resources/img/service4.png'/>" alt="">
                        </div>
                    </div>
                    <h3>human bones problem</h3>
                </div>
            </div>
        </div>
    </div>
</section><!-- end of service section -->



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
                    <div id="contactForm">
                    <form:form class="form" commandName="contact" id="submitForm">
                        <input type="hidden" class="aaa"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                        <form:input  path="name" id="name" class="name" type="text" placeholder="Name" required="true" />
                        <form:input path="email" id="email" class="email" type="email" placeholder="Email" />
                        <form:input class="phone" id="phone" path="phone" type="text" placeholder="Phone No:" />
                            <form:textarea path="message"  class="message" name="message" id="message" cols="30" rows="10" placeholder="Message" />
                            <input class="submit-btn" type="button" id="submitId" value="SUBMIT" />
                    </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- end of contact section -->


