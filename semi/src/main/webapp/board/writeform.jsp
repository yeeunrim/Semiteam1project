<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행 후기 - 여정담</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<!-- 로그인한 사용자만 글쓰기 허용됨 -->
	<c:if test="${empty sessionId }">
		<script type="text/javascript">
			alert("로그인이 필요합니다.");
			location.href = "/loginform.do";
		</script>
	</c:if>
	<jsp:include page="../header.jsp"/>
		<section id="notice">
		    <div class="board-title">
		        <div class="board2">
		            <h3>여행 후기</h3>
		            <p>인터넷은 우리가 만들어가는 소중한 공간입니다.</p>
		        </div>
		    </div>
			<form action="/write.do" method="post" enctype="multipart/form-data">
				<table class="writeMid">
					<tbody>
						<tr>
							<td><input type="text" name="title" id="writeTitle" placeholder="글제목"></td>
						</tr>
						<tr>
							<td><textarea name="content" id="writeContent" placeholder="글내용"></textarea></td>
						</tr>
						<tr>
							<td>
								<input type="file" name="filename">
							</td>
						</tr>
						<tr>
							<td class="writeBot">
								<button type="submit" class="writebtn">등록</button>
								<button type="reset" class="writebtn">리셋</button>
								<a href="/boardlist.do"><button type="button" class="writebtn">취소</button></a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>