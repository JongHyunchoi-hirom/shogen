<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    

  <!-- 부트스트랩 -->
  <head>
     <link href="css/bootstrap.min.css" rel="stylesheet"> 
    
    
      <link href= "css/mystyle.css" rel="stylesheet"/>
      <link href= "css/common.css" rel="stylesheet"/>
     
    
     <script src="js/jquery-3.5.1.min.js"></script>
     <script src="js/user.js"></script> 
      
         <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script> 
        
    
  
      
     <style>
      .navbar-default .navbar-nav>li>a {
       color: #ffffff !important;
       
           }
     
     </style>
   
 
  </head>
   	<nav class="navbar navbar-default navbar-fixed-top"   style=" background-color:#008080;
    	    font-style: italic ; 
			font-weight: bold; 
			font-family: arial;
			font-size:1.5em;
			padding: 20px 0px;">
   		 <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    		
    
  		  <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand  img-rounded" href="#" ></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<li><a href="main.do">main</a></li>
        <li><a href="ceo.do">about<span class="sr-only "></span></a></li>
        <li><a href="strength.do">Strength & Power </a></li>
        <li><a href="patientcurri.do">Rehabilitation </a></li>
       
        
        <li class="dropdown">
          <a href="onlineprogram.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">online Diet program<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="totalcurri.do">30days diet</a></li>
            <li><a href="totalcurri.do">60ddays diet</a></li>
            <li><a href="totalcurri.do">90days diet</a></li>
            
          </ul>
        </li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
      <c:choose>
      <c:when test="${empty userid }">
        <li><a href="memlogin.do">login</a></li>
        <li><a href="memberinsert.do">Signup</a></li>
        </c:when>
        <c:when test="${not empty userid}">
         <li> <a href="logout.do">logout</a></li>
         <li><a href="memupdate.do?id=${userid }">mypage</a></li>
       </c:when>
      </c:choose>  
        <li class="dropdown">
          <a href="notice.do" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Comunity<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
             <li><a href="notice.do">Notice</a></li>
             <li><a href="#">WOD</a></li>       
             <li><a href="products.do">Products</a></li>
         
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
    
