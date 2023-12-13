<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 게시물</title>
	<link rel="stylesheet" href="../resources/css/style.css">
    <script src="https://kit.fontawesome.com/d591ef8969.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
    <section class="my_container">
        <div id="tt">
        <div id="wish">
			<h1><i class="fa-solid fa-heart-circle-check"></i>찜 리스트</h1>
            <a href=""> 전체 </a>
            <a href="/boardlist.do"> 여행 후기 </a>
            <a href="/board1list.do"> 동행자 찾기 </a>
            <a href="/board2list.do"> 나의 계획 </a>
            <a href="/board3list.do"> Q&A </a>
        </div>
        <div class="box2">
            <h4>여행후기</h4>
            <hr>
            <a href="/boardview.do?bno=${w1.bno }">${w1.title} </a><a href="">${w1.id} </a>
            <hr id="b">
            <a href="/boardview.do?bno=${w2.bno }">${w2.title} </a><a href="">${w2.id}</a>
            <hr id="b">
            <a href="/boardview.do?bno=${w3.bno }">${w3.title} </a><a href="">${w3.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div>
        <div class="box2">
            <h4>동행자 찾기</h4>
            <hr>
            <a href="/board1view.do?bno1=${w11.bno1 }">${w11.title1}</a><a href="">${w11.id}</a>
            <hr id="b">
            <a href="/board1view.do?bno1=${w21.bno1 }">${w21.title1}</a><a href="">${w21.id}</a>
            <hr id="b">
            <a href="/board1view.do?bno1=${w31.bno1 }">${w31.title1}</a><a href="">${w31.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>나의 계획</h4>
            <hr>
            <a href="/board2view.do?bno2=${w12.bno2 }">${w12.title2}</a><a href="">${w12.id}</a>
            <hr id="b">
            <a href="/board2view.do?bno2=${w22.bno2 }">${w22.title2}</a><a href="">${w22.id}</a>
            <hr id="b">
            <a href="/board2view.do?bno2=${w32.bno2 }">${w32.title2}</a><a href="">${w32.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>Q&A</h4>
            <hr>
            <a href="/board3view.do?bno3=${w13.bno3 }">${w13.title3}</a><a href="">${w13.id}</a>
            <hr id="b">
            <a href="/board3view.do?bno3=${w23.bno3 }">${w23.title3}</a><a href="">${w23.id}</a>
            <hr id="b">
            <a href="/board3view.do?bno3=${w33.bno3 }">${w33.title3}</a><a href="">${w33.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div>
        <!--
        <div id="more2">
            <h2><a href=""> + MORE </a></h2>
        </div>
        -->
    </div>
    <jsp:include page="../footer.jsp"/>
</div>
</body>
</html>
</body>
</html>