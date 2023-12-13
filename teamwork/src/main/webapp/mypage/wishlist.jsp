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
            <a href="/board1view.do?bno=${w11.bno }">${w11.title}</a><a href="">${w11.id}</a>
            <hr id="b">
            <a href="/board1view.do?bno=${w21.bno }">${w21.title}</a><a href="">${w21.id}</a>
            <hr id="b">
            <a href="/board1view.do?bno=${w31.bno }">${w31.title}</a><a href="">${w31.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>나의 계획</h4>
            <hr>
            <a href="/board2view.do?bno=${w12.bno }">${w12.title}</a><a href="">${w12.id}</a>
            <hr id="b">
            <a href="/board2view.do?bno=${w22.bno }">${w22.title}</a><a href="">${w22.id}</a>
            <hr id="b">
            <a href="/board2view.do?bno=${w32.bno }">${w32.title}</a><a href="">${w32.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div><div class="box2">
            <h4>Q&A</h4>
            <hr>
            <a href="/board3view.do?bno=${w13.bno }">${w13.title}</a><a href="">${w13.id}</a>
            <hr id="b">
            <a href="/board3view.do?bno=${w23.bno }">${w23.title}</a><a href="">${w23.id}</a>
            <hr id="b">
            <a href="/board3view.do?bno=${w33.bno }">${w33.title}</a><a href="">${w33.id}</a>
            <hr id="b">
            <a href="#"> + MORE </a>
        </div>
        <!--
        <div id="more2">
            <h2><a href=""> + MORE </a></h2>
        </div>
        -->
    </div>
    
</div>
</body>
</html>
</body>
</html>