function fn_login(){
   if(login.id.value==""){
      alert("아이디 입력");
      login.id.focus();
      return false;
   }
   if(login.pw.value==""){
      alert("패스워드 입력 입력");
      login.pw.focus();
      return false;
   }
   login.submit();
}