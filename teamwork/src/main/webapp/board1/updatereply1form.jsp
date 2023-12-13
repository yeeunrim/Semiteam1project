<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동행자 찾기 - 여정담</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section id = "replyUpdate">
		<div class="board-title">
		     <div class="board">
	            <h3>댓글 수정</h3>
	            <p>인터넷은 우리가 만들어가는 소중한 공간입니다.</p>
		    </div>
		</div>
		<div class="replyUpdateForm">
		    <form action="/updatereply1.do?bno1=${reply1.bno1 }&rno1=${reply1.rno1 }" method="post" class="replyUpdateForm2">
				<!-- 'hidden'은 ui를 만들지 않고 데이터 숨겨서 보낼때 사용 -->
				<input type="hidden" name="rno" value="${reply1.rno1 }">
				<input type="hidden" name="bno" value="${reply1.bno1 }">
				<table>
					<tbody>
						<tr>
							<td><textarea rows="7" cols="100" name="rcontent" class="replycontent">${reply1.rcontent1 }</textarea></td>
						</tr>
						<tr>
							<td class="writeBot">
								<button type="submit" class="writebtn">저장</button>
								<button type="reset" class="writebtn">리셋</button>
								<a href="/board1view.do?bno1=${reply1.bno1 }"><button type="button" class="writebtn">취소</button></a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>