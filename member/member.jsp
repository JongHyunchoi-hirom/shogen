<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file ="../header.jsp" %>

    
    <div class="container"  style="padding:150px; ">
    	 <div clss="con_title">
    	  
    	    <p>Home / my page / my information </p>
    	 </div> 
    	 <div class="join_write col_989">
    	 		<div class="list_con">
    	 		 	<ul>
    	 		 			<li>회원정보는 개인 정보 취급방침에 따라 안전하게 보호되며 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공하지 않습니다. </li>
    	 		 	</ul>
    	 		
    	 		</div>	
    	 		
    	 		<form name="my" method="post" action="memberinsertpro.do" >
            <table class="table_write02" summary="회원가입을 위한 이름, 아이디, 비밀번호, 비밀번호확인, 소속, 유선전화번호, 휴대전화번호, 이메일, 주소, 본인확인질문, 본인확인답, 주활용사이트, 알림여부 정보 입력">
                <caption>회원가입을 위한 정보입력표</caption>
                <colgroup>
                    <col width="160px">
                    <col width="auto">
                </colgroup>
                <tbody id="joinDataBody">
                    <tr>
                        <th><label for="name">이름</label></th>
                        <td>
                            <input type="text" name="name" id="mbrName"class="w300">
                        </td>
                    </tr>
                    <tr>
                        <th><label for="id">아이디<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="text" name="id" id="id" class="w300" >&nbsp;&nbsp;
                        
                           <span id="uid"></span>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="pw">비밀번호</label></th>
                        <td>
                            <input type="password" name="pw1" id="scrtNo" class="w300">
                            <p class="guideTxt"><span class="tc_point">영문(대문자 구분), 숫자, 특수문자의 조합</span>으로 9~13자로 작성해 주십시오.</p>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="pw_confirm">비밀번호확인</label></th>
                        <td>
                            <input type="password" name="pw2" id="scrtNoConfirm" class="w300">
                            <p class="guideTxt"><span class="tc_point">비밀번호 미입력시 기존비밀번호가 유지됩니다.</span></p>
                        </td>
                    </tr>
                   
               <tr>
                        <th><label for="phone">전화번호<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="text" name="tel" id="phone" class="w300" >
                        </td>
                    </tr>
                    <tr>
                        <th><label for="email">이메일<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="text" name="email" id="email" class="w300" >
                        </td>
                    </tr>
                    
            </table>
            </form>
            
            <div class="btnArea Acenter pt60 pb100 btGR">
                 <a href="javascript:check();" class="btn_round btn_large btn_pointColor w180"><b>확인</b></a>
                 <a href="javascript:history.go(-1);" class="btn_round btn_large btn_BlueGray w180"><b>취소</b></a>
             </div>
            
            
    	 			
    	 </div>	
    </div>
    
    <script>
      function check(){
         if(my.name.value ==""){
            alert("이름입력")
            my.name.focus();
            return false;
         }
         if(my.id.value ==""){
            alert("아이디입력")
            my.id.focus();
            return false;
         }
         if(my.pw1.value ==""){
            alert("패스워드 입력 필수")
            my.pw1.focus();
            return false;
         }
         if(my.pw2.value ==""){
            alert("패스워드 동일 값 입력")
            my.pw2.focus();
            return false;
         }
         if(my.pw1.value != my.pw2.value){
            alert("2개의 패스워드값이 같아야 합니다.")
            my.pw1.focus();
            return false;
         }
         if(my.tel.value == ""){
            alert("전화번호 입력")
            my.tel.focus();
            return false;
         }
         var   email = document.getElementById("email").value;
         var emailpattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z0-9\-]+/;
         if(emailpattern.test(email) == false){
            alert("이메일 입력이 올바를지 않아")
            my.email.focus();
            return false;
         }
         /*--if(my.rid.value.length == 0){
            alert("중복확인 해주세요");
            my.id.focus();
            return false;
         }*/   
         my.submit();
      }
   </script>
   <script>
      function idCheck(){
         if(my.id.value== ""){
            alert("아이디 입력");
            my.id.focus();
            return;
         }
         var url = "idcheck.do?id="+my.id.value;
         window.open(url,"id","width=450,height=200");//새창 띄우기;
      }
   </script>
   
   <script>
         $(function(){
            $('#id').blur(function(){
               $.ajax({
                  type:"post",
                  url:"checkUserId.do",
                  data:{id:$("#id").val()},
                  success:function(data){
                     if(data.result != 1 ){
                        if($("#id").val() != ""){
                              $("#uid").html("사용가능한 아이디 입니다.")                              
                        }   
                     }else{
                        if($("#id") != ""){
                           $("#uid").html("사용중인 아이디 입니다.")
                           $("#id").val("")
                           $("#id").focus();
                        }
                     }
                     },
                  error:function(){
                     alert("프로그램 오류오류오류");
                     }
               })               
            })
         })
   </script>
   
   
   <script>
      $(function() {
         $(".location  .dropdown > a").on("click",function(e) {
            e.preventDefault();
            if($(this).next().is(":visible")) {
               $(".location  .dropdown > a").next().hide();
            } else {
               $(".location  .dropdown > a").next().hide();
               $(this).next().show();
            }
         });
      });
   </script>
    

   
   
      <%@ include file ="../footer.jsp" %>
    

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>
     <script src="js/jquery-3.5.1.min.js"></script>
   
     <script src="js/user.js"></script> 
 
   
