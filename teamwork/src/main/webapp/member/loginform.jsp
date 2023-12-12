<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<div id = "container">
		<section id="login">
			<h2>로그인</h2>
			<hr>
				<form action="/login.do" method="post">
					<fieldset>
						<ul>
							<li>
								<label for="id">아이디</label>
								<input type="text" id="id" name="id" required>
							</li>
							<li>
								<label for="passwd">비밀번호</label>
								<input type="password" id="passwd" name="passwd" required>
							</li>
						</ul>
					</fieldset>
					<div class="error">${error }</div>
					<div class="button">
						<button type="submit">로그인</button>
					</div>
				</form>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>