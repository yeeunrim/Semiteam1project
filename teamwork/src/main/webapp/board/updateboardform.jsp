<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section id="writeform">
	    <div class="board-title">
	        <div class="board">
	            <h3>게시글 수정</h3>
	            <p>인터넷은 우리가 만들어가는 소중한 공간입니다.</p>
	            <hr>
	        </div>
	    </div>
		<form action="/updateboard.do" method="post">
			<!-- 'hidden'은 ui를 만들지 않고 데이터 숨겨서 보낼때 사용 -->
			<input type="hidden" name="bno" value="${board.bno}">
			<table>
				<tbody>
					<tr>
					<td><input type="text" name="title" value="${board.title }"></td>
				</tr>
				<tr>
					<td><textarea rows="7" cols="100" name="content">${board.content }</textarea></td>
				</tr>
				<tr>
					<td>${board.id }</td>
				</tr>
					<tr>
						<td>
							<button type="submit" class="writebtn">저장</button>
							<button type="reset" class="writebtn">리셋</button>
							<a href="/boardview.do?bno=${board.bno }"><button type="button" class="writebtn">취소</button></a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>