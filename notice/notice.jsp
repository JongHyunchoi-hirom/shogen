<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
      
    
    <%@ include file ="../header.jsp" %>
    
   

    <div class="container"  style="padding-top:150px; padding-bottom:250px;">
    
      
	    		<div class="container" style="padding:20px 0px;">
	    			
	    			<div class="row">
	    			        
 							 <div class="col-xs-6 col-md-4"></div>
 							 <div class="col-xs-6 col-md-4"></div>
 							 <div class="col-xs-6 col-md-4">
						    			<form class="navbar-form navbar-left" role="search">
								 				 <div class="form-group">
						  							  <input type="text" class="form-control"  placeholder="Search">
						 						 </div>
						 							 <button type="submit" class="btn btn-default">Submit</button>
										</form>
							</div>
				       </div>	
				       </div>
    		
       			<table class="table table-striped" summary="this table was made by number, writer, title, date, counts">
       		
       				  <tr>
       				   	 <th>number</th>
       				   	 <th>title</th>
       				   	 <th>writer</th>
       				   	 <th>date</th>
       				   	 <th>count</th>
       				  </tr>
       				
       				  <tbody>
       				   <c:forEach var="nlist" items="${list}">
       				  	  <tr>
       				  	  	 <td>${nlist.bno}</td>
       				  	  	 <td class="title"><a href="noticeview.do?bno=${nlist.bno }">${nlist.title}</a> </td>
       				  	  	 <td>${nlist.writer }</td>
       				  	  	 <td>${nlist.regdate }</td>
       				  	  	 <td>${nlist.readcount}</td>
       				  	  	 
       				  	  </tr>
       				  	  </c:forEach>
       				  </tbody>
       			</table>
       			
     
    </div>
    						<div class="row">
 								 <div class="col-md-10"></div>
  								<div class="col-md-2">
									 <div class="btn-group" >
									  <button class="btn btn btn-primary btn-lg" type="button" >
									   <a href="noticewrite.do">write button</a>
									   
									  </button>
									 </div>
									 </div>										
		 						</div>				
 									
 						<div class="container" style="text-align:center;">
 							<div class=row>
							 		<nav>
							  <ul class="pagination pagination-lg">
							    <li>
							      <a href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li><a href="#">1</a></li>
							    <li><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">6</a></li>
							    <li><a href="#">7</a></li>
							    <li><a href="#">8</a></li>
							    <li><a href="#">9</a></li>
							    <li><a href="#">10</a></li>
							    <li>
							      <a href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</nav>
							</div>
						</div>	
    
    
    
    
    
    
    
    <%@ include file ="../footer.jsp" %>
    
     <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>
    