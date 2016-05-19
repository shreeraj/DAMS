<%-- 
    Document   : site
    Created on : May 12, 2016, 12:08:38 AM
    Author     : shreerajkarki
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en"> 
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>DOCTOR - Responsive HTML &amp; Bootstrap Template</title>
        <link rel="stylesheet" href="<spring:url value='/resources/css/font-awesome.min.css'/>">
        <link rel="stylesheet" href="<spring:url value='/resources/css/bootstrap.min.css'/>">
        <link rel="stylesheet" href="<spring:url value='/resources/css/style.css'/>">
        <link rel="stylesheet" href="<spring:url value='/resources/css/datepicker.css'/>">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
        <script src="<spring:url value='/resources/js/modernizr.js'/>"></script>
       


        <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

    </head>
    <body>

        <!-- ====================================================
        header section -->
        <header class="top-header">
            <tiles:insertAttribute name="header" />
        </header>
        <div class="">
            <tiles:insertAttribute name="body" />
        </div>
        <footer class="footer clearfix">
            <tiles:insertAttribute name="footer" />
        </footer>

        <!-- script tags
        ============================================================= -->
        <script src="<spring:url value='/resources/js/jquery-2.1.1.js'/>"></script>
        <script src="<spring:url value='http://maps.google.com/maps/api/js?sensor=true'/>"></script>
        <script src="<spring:url value='/resources/js/gmaps.js'/>"></script>
        <script src="<spring:url value='/resources/js/smoothscroll.js'/>"></script>
        <script src="<spring:url value='/resources/js/bootstrap.min.js'/>"> </script>
        <script src="<spring:url value='/resources/js/jquery.mixitup.min.js'/>"></script>
        <script src="<spring:url value='/resources/js/custom.js'/>"></script>
        <script src="<spring:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#datepickerDOB').datepicker();
                $('#submitId').click(function() {
			
 
		    var data1 = {};
		    
                   
                   data1["name"] = $("#name").val();
                   data1['email'] = $("#email").val();
                   data1['phone'] = $("#phone").val();
                   data1['message'] = $("#message").val();
                   
                   $.ajax({
                      type:"POST",
                      dataType : 'html',
                        
                        data: JSON.stringify(data1),
            
                      url:"<spring:url value='/client/contactus'/>",
                      headers: { 
                            'Accept': 'application/json',
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN':$('.aaa').val()
                        },
                      
                      beforeSend:function(d){
                          $("#contactForm").html("<h3>Please Wait....</h3>");
                        },
                      success:function(msg){
                          
                          $("#contactForm").html("<h3>Thnak you<br/> We will back to you soon.</h3>");
                            data1 = {};
                            //window.location.reload();
                        }
                      
                   }); 
                });
              
            })
        </script>

    </body>
</html>