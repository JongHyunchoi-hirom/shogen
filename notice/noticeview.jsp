<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
    <%@ include file ="../header.jsp" %>
    
    
    <div class="container" style="padding:100px 0px;">
		<div class="board_view">
			<h2>${view.title}</h2>
			<p class="info">
			<span class="user">${view.writer}</span> | ${view.regdate } | <i class="fa fa-eye"></i> ${view.readcount }</p>
			<div class="board_body">
				${view.content }
			</div>
			<div class="prev_next">
			
				<c:if test="${prevo.bno != null}">
					<a href="noticeview.do?bno=${prevo.bno}" class="btn_prev"><i class="fa fa-angle-left"></i>
						<span class="prev_wrap">
							<strong>이전글</strong><span>${fn:substring(prevo.title,0,10)}...</span>
						</span>
					</a>
				</c:if>
				<c:if test="${prevo.bno == null}">
					<a href="javascript:void(0)" class="btn_prev"><i class="fa fa-angle-left"></i>
						<span class="prev_wrap">
							<strong>이전글</strong>
						</span>
					</a>
				</c:if>
			
				<div class="btn_3wrap">
					<a href="notice.do">목록</a> 
					<a href="noticemodify.do?bno=${view.bno}">수정</a> 
					<a href="noticedelete.do?bno=${view.bno}" onClick="return confirm('삭제하시겠어요?')">삭제</a>
				</div>
				
					<c:if test="${nextvo.bno != null}">
						
						<a href="noticeview.do?bno=${nextvo.bno}" class="btn_next">
							<span class="next_wrap">
								<strong>다음글</strong><span>${fn:substring(nextvo.title,0,10)}…</span>
							</span>
							<i class="fa fa-angle-right"></i>
						</a>
					</c:if>
					<c:if test="${nextvo.bno == null}">
						
						<a href="javascript:void(0)" class="btn_next">
							<span class="next_wrap">
								<strong>다음글</strong>
							</span>
							<i class="fa fa-angle-right"></i>
						</a>
					</c:if>
					
				
			</div>
		</div>
	</div>
	
    
    
    
    
    
    <%@ include file ="../footer.jsp" %>
    