
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ include file="../header.jsp" %>   

    
    
    
    

 
 	<div class= "container " style="padding-top:150px;">
 	
		<div class= "row clearfix">
	 		<div class="col-md-12" style="padding:18px 0;">	
			 <div class= "col-md-5 pull-right">
			 			<div class="col-md-4">
			 			<select class="form-control">
					  		
					 		<option>list</option>
					 		<option>products</option>
						 </select>
			 		  </div>
 		
			 		 <div class="col-md-6">
			    		<input type="text" class="form-control" placeholder="hiromilover">
			    		
			  		 </div>
			  		 <div class="col-md-2">
			  		 <button type="button" class="btn btn-danger">submit</button>
			  		 </div>
  				
  	 				</div>
  				 </div>
  				 </div>
  			 </div> <!-- submit-end -->
    	<div class="container" style="padding: 30px 0px	"	> <!-- product start -->
				  	<div class="row">
				  <div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				      <img src="images/triggerpic.jpg" alt="...">
				      <div class="caption">
				        <h3>Trigger point form roller</h3>
				        <p>Medical Massage equipment</p>
				        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Cart</a></p>
				      </div>
				    </div>
				  </div>
				   <div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				      <img src="images/lacrossballpic.jpg" alt="...">
				      <div class="caption">
				        <h3>Lacross ball</h3>
				        <p> Massage ball medical equipment</p>
				        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Cart</a></p>
				      </div>
				    </div>
				  </div>
				   <div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				      <img src="images/massagebarpic.jpg" alt="...">
				      <div class="caption">
				        <h3>Massage bar</h3>
				        <p>Massage bar medical equipment</p>
				        <p><a href="#" class="btn btn-primary" role="button">Buy</a> <a href="#" class="btn btn-default" role="button">Cart</a></p>
				      </div>
				    </div>
				  </div>
				 </div> 
 	
			</div>



	
	
	
	
	
	<div class="row">
  <div class="col-md-6 col-md-offset-5">
	
  <ul class="pagination" >
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
 </div>
 </div>

 	 <%@ include file ="../footer.jsp" %>
 	
 	 
 
 








    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>