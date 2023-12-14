<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
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
	          ${notice.ntitle}
	        </div>
	        <div class="upper">
	          <div class="thumb">
	          <i class="fa-regular fa-user" style="color: #ffffff; font-size : 30px;"></i>
	          </div>
	          <div class="nickname1">
	            관리자
	          </div>
	          <div class ="update">
	            ${notice.ncreateDate}
	          </div>
	          <div class="etc">
	            댓글 : ${nreply_count} 개
	          </div>
	        </div>
	        <hr>
	        <div class = "content">
	        	<div>
	        		<c:if test="${not empty notice.nfilename}">
						<img src="../upload/${notice.nfilename }" class="boardviewimage">
					</c:if>
				</div>
	          		${notice.ncontent}
	        </div>
	        <div class = "right">
				<c:choose>
					<c:when test="${not empty notice.nfilename}">
						<c:if test="${not empty sessionId}">
							첨부파일: ${notice.nfilename }<a href="/filedown.do?filename=${notice.nfilename }">&nbsp;[다운로드]</a>
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
	          <%-- <div class="likeReply">
	            <c:if test="${not empty sessionId}">
					<div id="likeSection">
						<div id="likeCount">
						<a href="/nlike.do?bnno=${notice.nno }&id=${sessionId}"><i class="fa-regular fa-heart" style="color: #ff0000; font-size: 20px;"></i></a>
						좋아요: ${like_count }개
						</div>
					</div>
				</c:if>
	          </div> --%>
	        </div>
	        <hr>
	        <div class="crud">
	        	<p>
				<a href="/noticelist.do"><button type="button" class="writebtn">목록</button></a>
				<%-- <c:if test="${sessionId eq admin }"> --%>
					<a href="/deletenotice.do?nno=${notice.nno }"
						onclick="return confirm('정말로 삭제하시겠습니까?')">
					<button type="button" class="writebtn">삭제</button></a>
					<a href="/updatenoticeform.do?nno=${notice.nno }"><button type="button" class="writebtn">수정</button></a>
				<%-- </c:if> --%>
				</p>
			</div>
	        <div class="replyform">
	        <p class="rtitle">댓글</p>
	        <c:forEach items="${nreplyList }" var="reply">
	          <div class = "reply">
	            <div class = "reThumb"></div>
	            <div class = "replyer">
		              ${reply.nreplyer}
	              	<div class="recrud">
		            	<c:if test="${sessionId eq reply.nreplyer }">
						<a href="/deletenreply.do?nno=${notice.nno }&rno=${nreply.nrno }"
								onclick="return confirm('댓글을 삭제하시겠습니까?')">
						<button type="button" id=DR><i class="fa-solid fa-trash-can"></i></button></a>
						<a href="/updatenreplyform.do?nno=${notice.nno }&nrno=${reply.nrno }">
						<button type="button" id=DR><i class="fa-solid fa-pen"></i></button></a>
						</c:if>
	            	</div>
	            </div>
	            <div class = "rcontent">
	              ${reply.nrcontent}
	            </div>
	            <div class = "rdate">
	              <c:choose>
							<c:when test="${not empty reply.nrupdate }">
								<fmt:formatDate value="${reply.nrupdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${reply.nrdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
							</c:otherwise>
					</c:choose> 
	            </div>
	          </div>
	          </c:forEach>
	          <div class="replyWrite">
	            <c:if test="${not empty sessionId}">
				<form action="/insertnreply.do" method="post" id="replyform">
					<input type="hidden" name="nno" value="${notice.nno }">
					<input type="hidden" name="nreplyer" value="${sessionId }">
					<p>
						<textarea rows="4" cols="50" name="rcontent"
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