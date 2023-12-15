<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<div id = "header">
		<div id="welcome">
			<p>All travel information can be found in the YeoJeongDam !</p>
		</div>
		<nav>
		<div id="topMenu">
			<div id="mainMenu">
				<ul>
					<li><a href="/main.do">홈</a></li>
					<li><a href="#">여행지</a>
						<div class="test">
							<ul>
								<li><a href="http://localhost:8080/travel/in_main.jsp">국내</a></li>
								<li><a href="http://localhost:8080/travel/out_main.jsp">해외</a></li>
								<li><a href="http://localhost:8080/travel/hotel_traffic.jsp">숙소 / 교통</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">커뮤니티</a>
						<div class="test">
							<ul>
								<li><a href="/boardlist.do">여행 후기</a>
								<a href="/board3list.do" id="a_1">Q&A</a></li>
								<li><a href="/board1list.do">동행자 찾기</a>
								<a href="/noticelist.do" id="a_2">공지사항</a></li>
								<li><a href="/board2list.do">나의 계획</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">여정담</a>
						<div class="test">
							<ul>
								<li><a href="/about.do">여정담 정보</a></li>
								<li><a href="/ccc.do">고객센터</a></li>
								<li><a href="/membership.do">멤버쉽</a></li>
								<li><a href="/fao.do">자주하는 질문</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			
			<div id="sideMenuIcon">
		    	<i class="fa fa-bars"></i>
			</div>
			
			<c:choose>
    		<c:when test="${empty sessionId}">
				<div id="sideMenu">
					<ul id="sideMenu_1">
						<li><a href="/loginform.do">로그인</a></li>
						<li><a href="/joinform01.do">회원가입</a></li>
						<li><a href="#"><i class="fa-solid fa-earth-americas"></i>&nbsp;South Korea</a></li>
					</ul>
					<ul id="sideMenu_2">
						<li><a href="http://localhost:8080/member/loginform.jsp">마이페이지</a></li>
						<li><a href="http://localhost:8080/member/loginform.jsp">찜한 목록</a></li>
						<li><a href="#">English</a></li> <!-- 스크롤로 언어(영어/한국) 선택 -->
					</ul>
				</div>
			</c:when>
    		<c:otherwise>
    			<div id="sideMenu">
				<ul id="sideMenu_1">
					<li><a href="/logout.do">로그아웃</a></li>
					<li><a href="#">${sessionId} 님</a></li>
					<li><a href="#"><i class="fa-solid fa-earth-americas"></i>&nbsp;South Korea</a></li>
				</ul>
				<ul id="sideMenu_2">
					<li><a href="/mypage.do">마이페이지</a></li>
					<li><a href="/wishlist.do">찜한 목록</a></li>
					<li><a href="#">English</a></li> <!-- 스크롤로 언어(영어/한국) 선택 -->
				</ul>
				</div>
			</c:otherwise>
   			</c:choose>
		</div>
		
		
		
		<div id="bottomMenu">
			
		</div>
		</nav>
	</div>
</header>