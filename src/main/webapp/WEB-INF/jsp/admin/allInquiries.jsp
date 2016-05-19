<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<script
		src="<spring:url value='/resources/admin/bower_components/jquery/dist/jquery.min.js' />"></script>


<script>
    $(document).ready(function(){
       //alert("abc"); 
       $('.sendBtn').click(function() {
           var currentID = $(this).attr("id");
           //alert(currentID);
           var contactID = "#contactId-"+currentID;
           var modalID = "#myModal-"+currentID;
           var nameID = "#name-"+currentID;
           var emailID = "#email-"+currentID;
           var phoneID = "#phone-"+currentID;
           var messageID = "#message-"+currentID;
           var repliedID = "#replied-"+currentID;
           var replyMessageID = "#replyMessage-"+currentID;
           var data1 = {};
           
           data1["contactId"] = $(contactID).val();
           data1["name"] = $(nameID).val();
           data1['email'] = $(emailID).val();
           data1['phone'] = $(phoneID).val();
           data1['message'] = $(messageID).val();
           data1['replied'] = $(repliedID).val();
           data1["replyMessage"] = $(replyMessageID).val();
           $.ajax({
              type:"POST",
              dataType : 'html',
              data: JSON.stringify(data1),
              url:"<spring:url value='/admin/reply'/>",
              headers: { 
                    'Accept': 'application/json',
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN':$('.aaa').val()
                },
                       
              beforeSend:function(d){
                  $(".modalContent-"+currentID).html('  <h3 style="color:red;">Please Wait....</h3><img height="30" width="30" class="bone img-responsive" src="<spring:url value='/resources/img/loading.git'/>" alt="">');
                },
              success:function(msg){

                  $(".modalContent-"+currentID).html("  <h3 style='color:green;'>Done!<br/> Replied Successfully</h3>");
                  window.location.reload();
                }
           }); 
        });
    });
</script>
<div class="row">
<div class="col-lg-12">
    <h1 class="page-header">Inquiries</h1>
    <h3 class="text-danger">${message}</h3>

    <table class="table table-bordered table-striped table-hover">
        <thead>
                <tr>
                        <td>Name</td>
                        <td>Email</td>
                        <td>Phone</td>
                        <td>Message</td>
                </tr>
        </thead>
        <tbody>
        <c:forEach items="${inquiries}" var="msg">
        <tr>
                <td>${msg.name}</td>
                <td>${msg.email}</td>
                <td>${msg.phone}</td>
                <td>${msg.message}</td>
                <td>
                    <c:choose>
                    <c:when test="${msg.replied=='1'}">
                        <label style="font-size: 15px !important;" class="label label-success">Replied.</label> 
                        <br />
                    </c:when>    
                    <c:otherwise>
                        <a class="btn btn-primary"  data-toggle="modal" data-target="#myModal-${msg.contactId}" ><i class="fa fa-share"></i> Reply</a>
                    </c:otherwise>
                </c:choose>
                </td>
                <form:form id="submitForm-${msg.contactId}"  commandName="contact">
                    <form:input path="contactId" type="hidden" id="contactId-${msg.contactId}" value="${msg.contactId}" />
                    <input type="hidden" class="aaa"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                    <form:input path="name" type="hidden" id="name-${msg.contactId}" value="${msg.name}" />
                    <form:input path="email" type="hidden" id="email-${msg.contactId}" value="${msg.email}" />
                    <form:input path="phone" type="hidden" id="phone-${msg.contactId}" value="${msg.phone}" />
                    <form:input path="message" type="hidden" id="message-${msg.contactId}" value="${msg.message}" />
                    <form:input path="replied" type="hidden" id="replied-${msg.contactId}" value="1" />
               
                <!-- Modal -->
            <div id="myModal-${msg.contactId}" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content modalContent-${msg.contactId}">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Reply</h4>
                  </div>
                  <div class="modal-body">
                      <div class="col-lg-12"><label>Reply Message</label></div>
                      
                      <form:textarea cols="65" rows="10" path="replyMessage" type="text" id="replyMessage-${msg.contactId}" value="${msg.replyMessage}" />
                   
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-primary sendBtn" id="${msg.contactId}" data-dismiss="modal">Send</button>
                    
                  </div>
                </div>

              </div>
            </div>  
            </form:form>
        </tr>
        </c:forEach>
    </tbody>
    </table>
</div>

</div>
