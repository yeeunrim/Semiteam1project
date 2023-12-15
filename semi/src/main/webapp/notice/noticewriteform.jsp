<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항 - 여정담</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
		<section id="notice">
		    <div class="board-title">
		        <div class="board2">
		            <h3>공지 사항</h3>
		            <p>공지 사항은 신중히 작성해 주세요.</p>
		        </div>
		    </div>
			<form action="/noticewrite.do" method="post" enctype="multipart/form-data">
				<table class="writeMid">
					<tbody>
						<tr>
							<td><input type="text" name="ntitle" id="writeTitle" placeholder="글제목"></td>
						</tr>
						<tr>
							<td><textarea name="ncontent" id="writeContent" placeholder="글내용"></textarea></td>
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
								<a href="/noticelist.do"><button type="button" class="writebtn">취소</button></a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>