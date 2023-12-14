<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section id="loginform">
		
		<div id="loginform_box">
			<h2>로그인</h2>
			<form action="/login.do" method="post">
				<div>
					<ul>
						<li>
							<label for="email">이메일</label>
							<input type="text" id="email" name="email" required>
						</li>
						<li>
							<label for="passwd">비밀번호</label>
							<input type="password" id="pw" name="pw" required>
						</li>
					</ul>
				</div>
				<div class="error">${error }</div>
				<div class="button">
					<button type="submit">로그인</button>
				</div>
			</form>
			
			<div id="loginform_bottom">
				<a href="http://localhost:8080/member/joinform01.jsp">회원가입</a>
				<a href="">아이디 · 비밀번호 찾기</a>
			</div>
		</div>
	
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>