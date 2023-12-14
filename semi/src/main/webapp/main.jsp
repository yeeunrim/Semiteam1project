<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="resources/css/style.css">
<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section id="main_container">
	
		<div id ="main">
			<!-- 메인 이미지 -->
			<div id="main_img">
				<div id="main_img">
				    <img class="img_current" src="resources/images/main_image01.png" alt="배경" style="position: absolute; top: 0; left: 0; opacity: 1;">
    				<img class="img_next" src="" alt="배경" style="position: absolute; top: 0; left: 0; opacity: 0; display: none;">
				</div>
				
				<!-- vscode -> imageslide.html , slide.js 참고 -->
			<!-- 슬라이드 도트 -->
				<div id="dots">
					<div class="dot_active"></div>
					<div class="dot"></div>
					<div class="dot"></div>
				</div>
			</div>
			
			
			<div id="search_currency">
				<!-- 검색창 -->
				<div class="search-box">
				    <input type="text" class="search-input" placeholder="검색어를 입력하세요.">
				    <button class="search-button">
				        <img src="resources/images/magnifier.png" alt="검색"> <!-- 아이콘 대신 유니코드 문자를 사용 -->
				    </button>
				</div>
				<!-- 환율창 -->
				<div id="currency_box">
					 <p>미국 USD&nbsp;&nbsp;${rateList[0]}</p>
					 <p>일본 JPY&nbsp;&nbsp;${rateList[1]}</p>
					 <p>유럽연합 EUR&nbsp;&nbsp;${rateList[2]}</p>
					 <p>중국 CNY&nbsp;&nbsp;${rateList[3]}</p>
				</div>
			</div>
			
			<!-- 메인 문구 -->
			<div id="main_phrase">
				<p>Life is part of a journey.</p><br>
				<p>Nice place, With people you like.</p>
			</div>
			
			<!-- 여행지 사진  -->
			<!-- 가로 슬라이드 : https://junhee6773.tistory.com/19 참고 -->
			<div id="main_pictures">
				<div>
					<a href=""><img src="resources/images/busan.png" alt="부산"></a>
			  		<p>부산에서</p>
			  	</div>
				<div>
					<a href="http://localhost:8080/desktop/travel/intravel.jsp"><img src="resources/images/seoul.png" alt="서울"></a>
			  		<p>서울에서</p>
			  	</div>
				<div>
					<img src="resources/images/jeju.png" alt="제주">
			  		<p>제주에서</p>
			  	</div>
				<div>
					<img src="resources/images/busan.png" alt="부산">
			  		<p>부산에서</p>
			  	</div>
				<div>
					<img src="resources/images/busan.png" alt="부산">
			  		<p>부산에서</p>
			  	</div>
				<div>
					<img src="resources/images/busan.png" alt="부산">
			  		<p>부산에서</p>
			  	</div>
			</div>
			
			<!-- 커뮤니티 -->
			
			<div id="main_community">
				<div id="main_community_title">
					<img src="resources/images/hot.png" alt="불">
					<p>인기글</p>
				</div>
				<div id="main_community_boxes">
					<%-- <div>
						<p>동행자 찾기</p>
						<c:forEach items="${boardList}" var="board">
							<p><a href="/boardview.do?bno=${board.bno}">${board.title}</a>
						</c:forEach>
					</div> --%>
					<div id="main_community_box">
						<p class="main_community_content_title">동행자 찾기</p>
						<div class="main_community_content">	
							<h3>인기글</h3>
							<c:forEach items="${likeList1}" var="like1">
								<p><a href="board1view.do?bno1=${like1.bno1}">${like1.title1 }</a></p>
							</c:forEach>
						</div>
						<div class="main_community_content" id="main_community_content_bottom">
							<h3>최신글</h3>	
							<c:forEach items="${boardList1}" var="board1">
								<p><a href="board1view.do?bno1=${board1.bno1}">${board1.title1 }</a></p>
							</c:forEach>
						</div>
					</div>
					<div id="main_community_box">
						<p class="main_community_content_title">여행 후기</p>
						<div class="main_community_content" >
							<h3>인기글</h3>
							<c:forEach items="${likeList}" var="like">
								<p><a href="boardview.do?bno=${like.bno}">${like.title }</a></p>
							</c:forEach>
						</div>
						<div class="main_community_content" id="main_community_content_bottom">
							<h3>최신글</h3>	
							<c:forEach items="${boardList}" var="board">
								<p><a href="boardview.do?bno=${board.bno}">${board.title }</a></p>
							</c:forEach>
						</div>
					</div>
					<div id="main_community_box">
						<p class="main_community_content_title">나의 계획</p>
						<div class="main_community_content">
							<h3>인기글</h3>
							<c:forEach items="${likeList2}" var="like">
								<p><a href="board2view.do?bno2=${like.bno2}">${like.title2 }</a></p>
							</c:forEach>
						</div>
						<div class="main_community_content" id="main_community_content_bottom">
							<h3>최신글</h3>	
							<c:forEach items="${boardList2}" var="board">
								<p><a href="board2view.do?bno2=${board.bno2}">${board.title2 }</a></p>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>