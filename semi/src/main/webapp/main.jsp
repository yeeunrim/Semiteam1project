<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
<script src="resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section id="container">
	
		<div id ="main">
			<div id="main_img">
				<img src="resources/images/train.png" alt="배경">
				<!-- vscode -> imageslide.html , slide.js 참고 -->
				<div id="dots">
					<div class="dot_active"></div>
					<div class="dot"></div>
					<div class="dot"></div>
				</div>
			</div>
			
			<div>
				<div class="search-box">
				    <input type="text" class="search-input" placeholder="검색어를 입력하세요.">
				    <button class="search-button">
				        🔍 <!-- 아이콘 대신 유니코드 문자를 사용 -->
				    </button>
				</div>
			</div>
			
		</div>
		
		<jsp:include page="footer.jsp" />
	</section>
</body>
</html>