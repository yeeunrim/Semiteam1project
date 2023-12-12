<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지</title>
  <link rel="stylesheet" href="../resources/css/style.css">
  <script src="../resources/js/a.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
  <div class="container">
    <div class="profile">
      <img src="resource/images/dog.PNG" alt="프로필사진">
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
            <img src="resource/images/dog.PNG" alt="프로필사진">
            <!-- 프로필 수정 내용 입력 폼 등을 추가하세요 -->
            <div id="my_p">
              <p>나의 프로필</p>
              <hr>
              <p><label for="nic">닉네임</label>
                <input type="text" id="nic" name="nic"></p>
              <p><label for="addr">주소</label>
                <input type="text" id="addr" name="addr"></p>
              <p><label for="long">한 줄 소개</label>
                <input type="text" id="long" name="long"></p>
              
              <button type="button" onclick="saveProfile()">변경사항 저장</button>
            </div>
          </form>
        </div>
      </div>
      <button id="modify" onclick="openModal()">프로필 수정</button>
      <button id="modify2"><a href="계정설정.html">설정</a></button>
    </div>
    <div class="select">
      <a href="#" class="toggle-link">내 게시물 </a>
      <a href="#" class="toggle-link">내 댓글 </a>
      <a href="#" class="toggle-link">찜 </a>
      <a href="#" class="toggle-link">좋아요 </a>
    </div>
    <div class="box">
      <div id="box1">
        <div class="title">제목</div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">제목</div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">제목</div>
        <div class="con">글내용</div>
        <div class="like">
          <a href=""> 찜 0 </a>
          <a href=""> 댓글 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">제목</div>
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
  </div>
</body>
</html>