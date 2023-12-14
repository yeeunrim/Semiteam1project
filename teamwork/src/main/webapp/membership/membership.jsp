<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버쉽</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://kit.fontawesome.com/69798321c6.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section class="membership">
        <div class="membership-title">
           <div class="board">
               <h1>회원 / 비회원</h1>
           </div>
       </div>
       <div class="membership-member">
           <h3>회원</h3>
           <p>모든 카테고리, 모든 글 열람이 가능합니다.</p>
           <p>글쓰기, 찜, 좋아요 등 다양한 활동이 가능합니다.</p>
       </div>
       <div class="membership-nonmember">
           <h3>비회원</h3>
           <p>모든 카테고리, 모든 글 열람이 가능합니다.</p>
           <p>글쓰기, 찜, 좋아요 등 다양한 활동이 제한됩니다.</p>
       </div>
   </section>
    <jsp:include page="../footer.jsp"/>
</body>
</html>