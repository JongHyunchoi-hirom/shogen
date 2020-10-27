<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
	    <%@ include file ="../header.jsp" %>

   
    <style>
    .container {margin: 30px 30px;  padding: 130px 30px ;}
    .padd50 { padding: 0 0 0 150px;}
    .center {text-align:center; padding: 20px 0;}
    
    
    </style>
    
    

  

 
  <body>
				<div class="container" >
					<div class = "memebr_boxl">
						<div class="col-md-5 col-md-offset-3">
							<h3 class="center ">Log In <span class="label label-success ">login</span></h3>
								<form class="form-horizontal" name="login " id="frmlogin" method="post" action="loginpro.do" >
										  	
									 		 <div class="form-group">
									   			 <label for="inputId" class="col-sm-2 control-label">id</label>
									   				 <div class="col-sm-10">
									   				 	
									     				 <input type="text" name="id" class="form-control" id="inputId" placeholder="4~8 characters">
									   				 </div>
									 		 </div>
									 		  <div class="form-group">
									   			 <label for="inputPw" class="col-sm-2 control-label">Password</label>
									   				 <div class="col-sm-10">
									     				 <input type="password" name="pw" class="form-control" id="inputPw" placeholder="Password">
									   				 </div>
									 		 </div>
									 		 <div class= "fl_clear" >
									 			 <div class="row" style="text-align:center;" >
									 		 		<div class="btn-group" role="group" aria-label="right">
									 		 		<!--  <button type="s" class="btn_login btn-default btn"><a href ="javascript:fn_login();">login</a></button>--> 
														  <input type="submit" value="login">
														  <button type="button" class="btn btn-default"><a href ="memberinsert.do">memberinsert</a></button>
													 	 
													  
				 				
													</div>
												</div>
											</div>
									</form>
								</div>
							</div>
						</div>
						
				<c:if test="${not empty message }">
				   <script>
				   		alert("check id and password");
				   		location.href="memlogin.do";
				   
				   </script>
				</c:if>	
				
				<%
				 session.removeAttribute("message");
				%>	
				
				<script>
				  $(function() {
					  $(".location .dropdown >a "). on("click", function(e) {
						  e.preventDefault();
						  if($(this).next().is(":visible")) {
							  $(".location .dropdown >a").next().hide();
						  }else {
							  $(".location .dropdown >a").next().hide();
							  $(this).next().show();
						  }
					  });
					  
				  });
				  
				
				  
				</script>
				 	 

 	
 	 
  <hr>
     <%@ include file= "../footer.jsp" %>
 
  </body>
</html>