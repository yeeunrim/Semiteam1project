<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
  <link rel="stylesheet" href="../resources/css/style.css">
  <script src="https://kit.fontawesome.com/d591ef8969.js" crossorigin="anonymous"></script>
  <script src="../resources/js/a.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<header>
	<div id = "header">
		<div id="welcome">
			<p>All travel information can be found in the YeoJeongDam !</p>
		</div>
		<nav>
		<div id="topMenu">
			<div id="mainMenu">
				<ul>
					<li><a href="http://localhost:8080/main.do">홈</a></li>
					<li><a href="#">여행지</a>
						<div class="test">
							<ul>
								<li><a href="/viewdetail/intravel.jsp">국내</a></li>
								<li><a href="/viewdetail/outtravel.jsp">여행</a></li>
								<li><a href="#">숙소 / 교통</a></li>
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
								<li><a href="#">여정담 정보</a></li>
								<li><a href="#">고객센터</a></li>
								<li><a href="#">멤버쉽</a></li>
								<li><a href="#">자주하는 질문</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<div id="sideMenu">
				<ul id="sideMenu_1">
					<li><a href="http://localhost:8080/member/loginform.jsp">로그인</a></li>
					<li><a href="http://localhost:8080/member/joinform01.jsp">회원가입</a></li>
					<li><a href="#"><i class="fa-solid fa-earth-americas"></i>&nbsp;South Korea</a></li>
				</ul>
				<ul id="sideMenu_2">
					<li><a href="/mypage/mypage.jsp">마이페이지</a></li>
					<li><a href="#">찜한 목록(0)</a></li>
					<li><a href="#">English</a></li> <!-- 스크롤로 언어(영어/한국) 선택 -->
				</ul>
			</div>
		</div>
		
		<div id="bottomMenu">
			
		</div>
		</nav>
	</div>
</header>
<body>

<div id=mmm>
  <section class="my_container">
    <div class="profile">
      <img src="../resources/images/page.png" alt="프로필사진">
      <div id="my_an">
        <p>나의 프로필</p>
        <p><br>닉네임</p>
        <p>주소</p>
        <p><br>안녕하세요</p>
      </div>
      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close" onclick="closeModal()">&times;</span>
          <!-- 프로필 수정 폼이 들어갈 부분 -->
          <form id="profileForm">
            <img src="../resources/images/page.png" alt="프로필사진">
            <!-- 프로필 수정 내용 입력 폼 등을 추가하세요 -->
            <div id="my_p">
              <p>나의 프로필</p>
              <hr>
              <p><label for="nic">닉네임</label>
                <input type="text" id="nic" name="nic"></p>
              <p><label for="addr">주소</label>
                <input type="text" id="addr" name="addr"></p>
              <p><label for="long">한 줄 소개</label>
                <input type="textarea" id="long" name="long"></p>
              
              <button type="button" onclick="saveProfile()">변경사항 저장</button>
            </div>
          </form>
        </div>
      </div>
      <button id="modify" onclick="openModal()"><i class="fa-solid fa-pen"></i></button>
      <button id="modify2"><a href="setting.jsp"><i class="fa-solid fa-gear"></i></a></button>
    </div>
    <div class="select">
      <a href="#" class="toggle-link">내 게시물 </a>
      <a href="#" class="toggle-link">내 댓글 </a>
      <a href="#" class="toggle-link">찜 </a>
    </div>
    <div class="box">
      <div id="box1">
        <div class="title"><a href="">제목</a></div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">제목</a></div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">제목</a></div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">제목</a></div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
    </div>
    <div class="more">
        <a href="">+ MORE</a>
    </div>
  </section>
  </div>
</body>
</html>