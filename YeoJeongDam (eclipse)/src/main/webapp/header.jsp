<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
		<div id="welcome">
			<p>All travel information can be found in the YeoJeongDam !</p>
		</div>
		
		<nav>
			<div id="topMenu">
				<div id="mainMenu">
					<ul>
						<li><a href="#">홈</a></li>
						<li><a href="#">여행지</a>
							<ul>
								<li><a href="#">국내</a></li>
								<li><a href="#">여행</a></li>
								<li><a href="#">숙소 / 교통</a></li>
							</ul>
						</li>
						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="#">여행 후기</a><a href="#" id="a_1">Q&A</a></li>
								<li><a href="#">동행자 찾기</a><a href="#" id="a_2">공지사항</a></li>
								<li><a href="#">나의 계획</a></li>
							</ul>
						</li>
						<li><a href="#">여정담</a>
							<ul>
								<li><a href="#">여정담 정보</a></li>
								<li><a href="#">고객센터</a></li>
								<li><a href="#">멤버쉽</a></li>
								<li><a href="#">자주하는 질문</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div id="sideMenu">
					<ul id="sideMenu_1">
						<li><a href="#">로그인</a></li>
						<li><a href="#">회원가입</a></li>
						<li><a href="#"><i class="fa-solid fa-earth-americas"></i>&nbsp;South Korea</a></li>
					</ul>
					<ul id="sideMenu_2">
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">찜한 목록(0)</a></li>
						<li><a href="#">English</a></li> <!-- 스크롤로 언어(영어/한국) 선택 -->
					</ul>
				</div>
			</div> <!-- <div id="topMenu"> 끝 -->
			
			<div id="bottomMenu">
				
			</div>
		</nav>
</header>