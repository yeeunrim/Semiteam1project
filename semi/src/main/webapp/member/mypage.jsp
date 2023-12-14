<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <link rel="stylesheet" href="../resources/css/style.css">
  <script src="https://kit.fontawesome.com/d591ef8969.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="../resource/js/a.js"></script>
  <script src="../resources/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id=mmm>
  <section class="my_container">
    <div class="profile">
      <img src="../resources/images/page.png" alt="프로필사진">
      <div id="my_an">
        <h3>나의 프로필</h3>
        <p><br>닉네임 : ${sessionId}</p>
		  <c:choose>
		    <c:when test="${empty user.introduction}">
		      <p><br>소개글을 입력해주세요</p>
		    </c:when>
		    <c:otherwise>
		      <p><br>${user.introduction}</p>
		    </c:otherwise>
		  </c:choose>
      </div>
      
      <!-- 프로필 변경 -->
      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close" onclick="closeModal()">&times;</span>
          
          <!-- 프로필 수정 폼이 들어갈 부분 -->
          <form id="profileForm" action="/editprofile.do" method="post" name="profile">
            <img src="../resources/images/page.png" alt="프로필사진">
            <!-- 프로필 수정 내용 입력 폼 등을 추가하세요 -->
            <div id="my_p">
              <p>나의 프로필</p>
              <hr>
              <p><label for="nic">닉네임</label>
                <input type="text" id="id" name="id" value=${user.id}></p>
              <p><label for="long">한 줄 소개</label>
                <input type="textarea" id="introduction" name="introduction" value=${user.introduction}></p>
              
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
      <a href="/wishlist.do" class="toggle-link">찜 </a>
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
  <jsp:include page="../footer.jsp" />
</body>
</html>