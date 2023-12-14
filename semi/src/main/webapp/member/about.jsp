<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section id="about_container">
	
		<div id ="about">
			<h1>ABOUT US</h1>
			
			<div id="about_introduction">
				<img src="../resources/images/logo.png">
			</div>
			
			<h2>PRODUCED BY</h2>
			<div id="people">
				<div>
					<img src="../resources/images/예은.png">
					<div>
						<span>임예은</span>
						<p>
						Project Leader<br>
						코드 종합 및 총괄 디렉터
						여행지 국내/해외 메인 페이지 
						숙소/교통 페이지 제작
						</p>
					</div>
				</div>
				<div><img src="../resources/images/상현.png">
					<div>
					<span>이상현</span>
					<p>
					Team member<br>
					커뮤니티 DB 작업 
					하위 카테고리 페이지 제작
					</p>
					</div>
				</div>
				<div>
					<img src="../resources/images/가은.png">
					<div>
					<span>이가은</span>
					<p>
					Team member<br>
					메인 페이지 및 로그인, 회원가입 
					ABOUT 페이지 제작
					</p>
					</div>
				</div>
				<div>
					<img src="../resources/images/지훈.png">
					<div>
					<span>서지훈</span>
					<p>
					Team member<br>
					커뮤니티 HTML,CSS 작업
					하위 카테고리 페이지 제작
					</p>
					</div>
				</div>
				<div>
					<img src="../resources/images/채희.png">
					<div>
					<span>박채희</span>
					<p>
					Team member<br>
					마이페이지, 찜 목록 페이지
					프로필 수정 페이지 제작
					</p>
					</div>
				</div>
				<div>
					<img src="../resources/images/나경.png">
					<div>
					<span>이나경</span>
					<p>
					Team member<br>
					여행지 국내/해외 상세 페이지 제작
					여행지 해외 나라별 세부 정보 조사 및 입력
					</p>
					</div>
				</div>
			</div>
		
		
		</div>
		
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>