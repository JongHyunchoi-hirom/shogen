<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%@ include file ="../header.jsp" %>
    
    
							
			     <div class="container" style="padding-top:200px;">			
				  <div class="write_wrap">
				  <h2 class="sr-only">공지사항 글쓰기</h2>
				  <form name="notice" method="post" action="noticeinsert.do" onsubmit="return check()">
	 
				
					<tr >
						<th><h3>writer</h3></th>
						<td>
								<input type="text" name="writer" class="form-control" placeholder="Text input">
						</td>
					</tr>
					<tr>
						<th><h3>title</h3></th>
						<td>
								<input type="text" name="title" class="form-control" placeholder="Text input">
						</td>
					</tr>
					<tr>
						<th><h3>content</h3></th>
						<td>
								<textarea class="form-control" rows="20" name="content"></textarea>
						
						</td>
					</tr>
				 
			
			<div class="btn_wrap" style="text-align:center; padding:50px 0px;">
				<input type="submit" value="저장" class=" btn_ok btn  navbar-btn ">&nbsp;&nbsp;
				<input type="reset" value="다시쓰기" class="btn_reset btn  navbar-btn">&nbsp;&nbsp;
				<input type="button" value="목록" class="btn-list btn  navbar-btn" onClick="location.href='notice.do';">
			</div>
		</form>
	  </div>
	  
	</div>
	<!-- end contents -->
	<script>
		function check() {
			if(notice.writer.value=="") {
				alert("글쓴이 입력");
				notice.writer.focus();
				return false;
			}
			if(notice.title.value=="") {
				alert("제목을 입력");
				notice.title.focus();
				return false;
			}
			if(notice.contents.value=="") {
				alert("내용을 입력");
				notice.contents.focus();
				return false;
			}
			return true;
		}
	</script>
	
	
    
    <%@ include file ="../footer.jsp" %>
    