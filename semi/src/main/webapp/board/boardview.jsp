<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행 후기 - 여정담</title>
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
		            <h3>여행 후기</h3>
		            <p>게시판에 맞는 정보를 공유해주세요.</p>
		        </div>
		    </div>

	      <div class = "boardViewForm">
	        <div class="btitle">
	          ${board.title}
	        </div>
	        <div class="upper">
	          <div class="thumb">	
		          <%-- <c:choose>
	          		<c:when test="${empty .image}"> --%>
	          		<i class="fa-regular fa-user" style="color: #ffffff; font-size : 30px;"></i>
	          		<%-- </c:when>
	          		<c:otherwise>
	            	<img src="../upload/profile_pic/.image" alt="프로필사진">
	            	</c:otherwise>
	              </c:choose>	 --%>          
	          </div>
	          <div class="nickname1">
	            ${board.id}
	          </div>
	          <div class ="update">
	            ${board.createDate}
	          </div>
	          <div class="etc">
	            댓글 : ${reply_count} 개
	          </div>
	        </div>
	        <hr>
	        <div class = "content">
	        		<div>
		        		<c:if test="${not empty board.filename}">
							<img src="../upload/${board.filename }" class="boardviewimage">
						</c:if>
					</div>
	          		${board.content}
	        </div>
	        <div class = "right">
				<c:choose>
					<c:when test="${not empty board.filename}">
						<c:if test="${not empty sessionId}">
							첨부파일: ${board.filename }<a href="/filedown.do?filename=${board.filename }">&nbsp;[다운로드]</a>
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
	          <div class="likeReply">
	            <c:if test="${not empty sessionId}">
					<div id="likeSection">
						<div id="likeCount">
						<a href="/like.do?bno=${board.bno }&id=${sessionId}">
							<c:choose>
								<c:when test = "${n eq true}">
									<i class="fa-solid fa-heart" style="color: #ff0000; font-size: 20px;"></i>
								</c:when>
								<c:otherwise>
									<i class="fa-regular fa-heart" style="color: #ff0000; font-size: 20px;"></i>
								</c:otherwise>
							</c:choose>
						</a>
						좋아요: ${like_count }개
						</div>
					</div>
				</c:if>
	          </div>
	        </div>
	        <hr>
	        <div class="crud">
	        	<p>
				<a href="/boardlist.do"><button type="button" class="writebtn">목록</button></a>
				<c:if test="${sessionId eq board.id }">
					<a href="/deleteboard.do?bno=${board.bno }"
						onclick="return confirm('정말로 삭제하시겠습니까?')">
					<button type="button" class="writebtn">삭제</button></a>
					<a href="/updateboardform.do?bno=${board.bno }"><button type="button" class="writebtn">수정</button></a>
				</c:if>
				</p>
			</div>
	        <div class="replyform">
	        <p class="rtitle">댓글</p>
	        <c:forEach items="${replyList }" var="reply">
	          <div class = "reply">
	            <div class = "reThumb">
	            <i class="fa-regular fa-user" style="color: #ffffff; font-size : 15px;"></i>
	            </div>
	            <div class = "replyer">
		              ${reply.replyer}
	              	<div class="recrud">
		            	<c:if test="${sessionId eq reply.replyer }">
						<a href="/deletereply.do?bno=${board.bno }&rno=${reply.rno }"
								onclick="return confirm('댓글을 삭제하시겠습니까?')">
						<button type="button" id=DR><i class="fa-solid fa-trash-can"></i></button></a>
						<a href="/updatereplyform.do?bno=${board.bno }&rno=${reply.rno }">
						<button type="button" id=DR><i class="fa-solid fa-pen"></i></button></a>
						</c:if>
	            	</div>
	            </div>
	            <div class = "rcontent">
	              ${reply.rcontent}
	            </div>
	            <div class = "rdate">
	              <c:choose>
						<c:when test="${not empty reply.rupdate }">
							<fmt:formatDate value="${reply.rupdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</c:when>
						<c:otherwise>
							<fmt:formatDate value="${reply.rdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
						</c:otherwise>
					</c:choose> 
	            </div>
	          </div>
	          </c:forEach>
	          <div class="replyWrite">
	            <c:if test="${not empty sessionId}">
				<form action="/insertreply.do" method="post" id="replyform">
					<input type="hidden" name="bno" value="${board.bno }">
					<input type="hidden" name="replyer" value="${sessionId }">
					<p>
					<textarea name="rcontent" class="wrcontent"
							placeholder="댓글 작성란"></textarea>
					</p>
					<button type="submit" class="writebtn">등록</button>
				</form>	
				</c:if>
				</div>	
	        </div>
	      </div>
      </div>
	</section>
	<jsp:include page="../footer.jsp"/>
	
</body>
</html>