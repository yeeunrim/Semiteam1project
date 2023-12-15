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
	          <div class="likeReply">
	            <c:if test="${not empty sessionId}">
					<div id="likeSection">

						

					</div>
				</c:if>
	          </div>
	        </div>
	        <hr>
	        <div class="crud">
	        	<p>
				<a href="/noticelist.do"><button type="button" class="writebtn">목록</button></a>
				
					<a href="/deletenotice.do?nno=${notice.nno }"
						onclick="return confirm('정말로 삭제하시겠습니까?')">
					<button type="button" class="writebtn">삭제</button></a>
					<a href="/updatenoticeform.do?nno=${notice.nno }"><button type="button" class="writebtn">수정</button></a>
				
				</p>
			</div>
	        <div class="replyform">
	        </div>
	      </div>
      </div>
	</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>