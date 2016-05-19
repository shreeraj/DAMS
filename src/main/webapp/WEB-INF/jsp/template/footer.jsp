<%-- 
    Document   : footer
    Created on : May 12, 2016, 12:11:48 AM
    Author     : shreerajkarki
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<div class="row">
		<div class="col-xs-6 footer-para">
			<p>&copy;DAMS, All Rights Reserved</p>
		</div>
		<div class="col-xs-6 text-right">
			<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
				class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-skype"></i></a>
		</div>
	</div>
</div>
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4>Login or Register</h4>
				<form action="${baseURL}/login" class="aa-login-form">
				<div id="logMsg"></div>
					<div class="form-group">
						<label for="">Username<span>*</span></label> <input class="inputUsername" type="text"
							name="userName" />
							
					</div>
					<div class="form-group">
						<label for="">Password<span>*</span></label> <input
							type="password" class="inputPassword" name="password" type="password" />
								<label style="display:none" class="emptyUsername text-danger">Username/Password can not be emtpy</label>
								<label id="msg" class="emptyUsername text-danger">Username/Password can not be emtpy</label>
					</div>
					
					
					<input type="hidden" class="csr"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
					
					<label for="rememberme" class="rememberme"><input
						type="checkbox" id="rememberme"> Remember me </label>
						
						<a class="btn btn-primary" href="javascript:void(0);" onclick="processLogin()">Login</a>
						
					<p class="aa-lost-password">
						<a href="#">Lost your password?</a>
					</p>
					<div class="aa-register-now">
						Don't have an account?<a
							href="<spring:url value='/client/signup'/>">Register now!</a>
					</div>
				</form>

			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<style>
.modal {
	z-index: 28328282828;
}
</style>


<script type="text/javascript">
	function processLogin(){
		
		if($('.inputUsername').val().length==0 || $('.inputPassword').val().length==0){
			$('.emptyUsername').fadeIn(500);
		}else{
			$('.emptyUsername').fadeOut(500);
			
			var data = {};
			 data['username'] = $('.inputUsername').val();
			data['password'] = $('.inputPassword').val();
			
		    $.ajax({
                type:"POST",
                dataType : 'json',
                  
                  data: JSON.stringify(data),
      
                url:"<spring:url value='/client/login'/>",
                headers: { 
                      'Accept': 'application/json',
                      'Content-Type': 'application/json',
                      'X-CSRF-TOKEN':$('.csr').val()
                  },
                
                beforeSend:function(d){
                    $("#logMsg").html("<h3>Please Wait....</h3>");
                  },
                success:function(data){
                	console.log(data);
                	if (data.login == 0) {
                		
                   	 $("#logMsg").html("<h3>Invalid Username password</h3>");
                    }else{
                    
                      	 $("#logMsg").html("<h3>Login Successfull, Redirecting...</h3>");
                     	location.reload();
                    }
                   
                  
                  }
                
             }); 
		}
	}
</script>
