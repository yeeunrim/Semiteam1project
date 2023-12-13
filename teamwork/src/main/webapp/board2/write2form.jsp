<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 계획 - 여정담</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<!-- 로그인한 사용자만 글쓰기 허용됨 -->
	<%-- <c:if test="${empty sessionId }">
		<script type="text/javascript">
			alert("로그인이 필요합니다.");
			location.href = "/loginform.do";
		</script>
	</c:if> --%>
	<jsp:include page="../header.jsp"/>
		<section id="writeform">
		    <div class="board-title">
		        <div class="board2">
		            <h3>나의 계획</h3>
		            <p>인터넷은 우리가 만들어가는 소중한 공간입니다.</p>
		            <hr>
		        </div>
		    </div>
			<form action="/write2.do" method="post" enctype="multipart/form-data">
				<table>
					<tbody>
						<tr>
							<td>
								<input type="text" name="title" id="writeTitle"
									placeholder="글제목" required>
							</td>
						</tr>
						<tr>
							<td>
								<textarea rows="7" cols="100" name="content" id="writeContent"
									placeholder="글내용"></textarea>
							</td>
						</tr>
						<tr>
							<!-- <td>
								<p><label for="file-input" class="file-label">
								<i class="fa-regular fa-folder-open"></i>첨부파일 선택</label>
    							<input type="file" id="file-input" class="file-input" name="filename"/></p>
							</td> -->
							<td>
								<input type="file" name="filename">
							</td>
						</tr>
						<tr>
							<td class="writeBot">
								<button type="submit" class="writebtn">등록</button>
								<button type="reset" class="writebtn">리셋</button>
								<a href="/board2list.do"><button type="button" class="writebtn">취소</button></a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>