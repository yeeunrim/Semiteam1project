<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<body>
	<jsp:include page="../header.jsp" />
	<section class="my_container">
        <div id="tt">
        <div id="wish">
			<h1><i class="fa-solid fa-heart-circle-check"></i>찜 리스트</h1>
            <a href=""> 전체 </a>
            <a href=""> 여행 후기 </a>
            <a href=""> 동행자 찾기 </a>
            <a href=""> 나의 계획 </a>
            <a href=""> 내 게시물 </a>
        </div>
        <div class="box2">
            <h4>여행후기</h4>
            <hr>
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div>
        <div class="box2">
            <h4>동행자 찾기</h4>
            <hr>
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>나의 계획</h4>
            <hr>
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>내 게시물</h4>
            <hr>
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#">제목</a><a href="">작성자</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div>
        <!--
        <div id="more2">
            <h2><a href=""> + MORE </a></h2>
        </div>
        -->
    </div>
    
</section>
  <jsp:include page="../footer.jsp" />
</body>
</html>