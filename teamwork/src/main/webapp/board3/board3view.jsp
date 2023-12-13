<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A - 여정담</title>
<script src="https://kit.fontawesome.com/69798321c6.js"></script>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://kit.fontawesome.com/630c352365.js" ></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section class="notice">
    	<div class="mainBoard">
		 <div class="board-title">
		        <div class="board1">
		            <h3>나의 계획</h3>
		            <p>게시판에 맞는 정보를 공유해주세요.</p>
		            <hr>
		        </div>
		    </div>

	      <div class = "boardViewForm">
	        <div class="btitle">
	          ${board3.title3}
	        </div>
	        <div class="upper">
	          <div class="thumb"></div>
	          <div class="nickname1">
	            ${board3.id}
	          </div>
	          <div class ="update">
	            ${board3.createDate3}
	          </div>
	          <div class="etc">
	            댓글 : ${reply_count3} 개
	          </div>
	        </div>
	        <hr>
	        <div class = "content">
	        		<c:if test="${not empty board3.filename3}">
					<img src="../upload/${board3.filename3 }" class="boardviewimage">
					</c:if>
	          		${board.content}
	        </div>
	        <div class = "right">
				<c:choose>
					<c:when test="${not empty board3.filename3}">
						<c:if test="${not empty sessionId}">
							첨부파일: ${board3.filename3 }<a href="/filedown.do?filename=${board3.filename3 }">&nbsp;[다운로드]</a>
						</c:if>
						<c:if test="${empty sessionId}">
							<c:out value="첨부파일은 로그인 후 확인 가능합니다. "/>
						</c:if>
					</c:when>
					<c:otherwise>
						<c:out value="첨부파일: - "/>
					</c:otherwise>
				</c:choose>
			</div>
	        <div class = "under">
	          <p><div class="thumb"></div>
	          <div class="nickname2">
	            ${board3.id}
	          </div>
	          <div class="likeReply">
	            <%-- <c:if test="${not empty sessionId}"> --%>
					<div id="likeSection">
					    <form action="/like3.do?bno3=${board3.bno3 }&id=${sessionId}" method="post">
   							<button type="submit" id="DR"><i class="fa-solid fa-heart" style="color: #ff0000;"></i></button>
						</form>
						<div id="likeCount">좋아요: ${like_count2 }개</div>
					</div>
				<%-- </c:if> --%>
	          </div>
	        </div>
	        <hr>
	        <div class="crud">
	        	<p>
				<a href="/board3list.do"><button type="button" class="writebtn">목록</button></a>
				<%-- <c:if test="${sessionId eq board.id }"> --%>
					<a href="/deleteboard3.do?bno3=${board3.bno3 }"
						onclick="return confirm('정말로 삭제하시겠습니까?')">
					<button type="button" class="writebtn">삭제</button></a>
					<a href="/updateboard3form.do?bno3=${board3.bno3 }"><button type="button" class="writebtn">수정</button></a>
				<%-- </c:if> --%>
				</p>
			</div>
	        <div class="replyform">
	        <p class="rtitle">댓글</p>
	        <c:forEach items="${replyList3 }" var="reply">
	          <div class = "reply">
	            <div class = "reThumb"></div>
	            <div class = "replyer">
		              ${reply.replyer3}
	              	<div class="recrud">
		            	<%-- <c:if test="${sessionId eq reply.replyer }"> --%>
						<a href="/deletereply3.do?bno3=${board3.bno3 }&rno3=${reply.rno3 }"
								onclick="return confirm('댓글을 삭제하시겠습니까?')">
						<button type="button" id=DR><i class="fa-solid fa-trash-can"></i></button></a>
						<a href="/updatereply3form.do?bno3=${board3.bno3 }&rno2=${reply.rno3 }">
						<button type="button" id=DR><i class="fa-solid fa-pen"></i></button></a>
						<%-- </c:if> --%>
	            	</div>
	            </div>
	            <div class = "rcontent">
	              ${reply.rcontent2}
	            </div>
	            <div class = "rdate">
	              <c:choose>
							<c:when test="${not empty reply.rupdate3 }">
								<fmt:formatDate value="${reply.rupdate3 }" pattern="yyyy-MM-dd HH:mm:ss"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${reply.rdate3 }" pattern="yyyy-MM-dd HH:mm:ss"/>
							</c:otherwise>
					</c:choose> 
	            </div>
	          </div>
	          </c:forEach>
	          <div class="replyWrite">
	            <%-- <c:if test="${not empty sessionId}"> --%>
				<form action="/insertreply3.do" method="post" id="replyform">
					<input type="hidden" name="bno" value="${board3.bno3 }">
					<input type="hidden" name="replyer" value="${sessionId }">
					<p>
						<textarea rows="4" cols="50" name="rcontent"
							placeholder="댓글 작성란"></textarea>
					</p>
					<button type="submit" class="writebtn">등록</button>
				</form>	
				<%-- </c:if> --%>
				</div>	
	        </div>
	      </div>
      </div>
	</section>
	<jsp:include page="../footer.jsp"/>
	
</body>
</html>