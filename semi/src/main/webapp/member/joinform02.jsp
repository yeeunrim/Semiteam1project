<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입2</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../resources/js/main.js"></script>
<script src="../resources/js/validation.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
      <section id="joinform02" >
      	
	  <div id="joinform02_box">
	  	  <form action="/insertusers.do" method="post" name="users">
		  <h2>회원 가입</h2>
		    	<ul>
		    		<li>
		    			<label for="name">닉네임</label>
		    			<input type="text" id="id" name="id" 
		    							placeholder="한글, 영문, 숫자만 사용해 주세요">
						<div id="message"></div>
		    		</li>
		    		
		    		<li>
		    			<label for="passwd">비밀번호</label>
		    			<input type="password" id="pw" name="pw" 
		    							placeholder="영문, 숫자, 특수문자 조합 8~15자를 사용해주세요">
		    			<div id="message"></div>
		    		</li>
		    		<li>
		    			<label for="passwd2">비밀번호 확인</label>
		    			<input type="password" id="pw2" name="pw2">
		    			<div id="message"></div>
		    		</li>
		    		<li>
		    			<label for="email">이메일</label>
		    			<input type="text" id="email" name="email" 
		    				placeholder="이메일"><span>@</span>
		    			<input class="domain_box" id="domain-txt" type="text" name="domain-txt"/>
							<select class="box" id="domain-list" >
							  <option value="type">직접 입력</option>
							  <option value="naver.com">naver.com</option>
							  <option value="google.com">google.com</option>
							  <option value="hanmail.net">hanmail.net</option>
							  <option value="nate.com">nate.com</option>
							  <option value="kakao.com">kakao.com</option>
							</select>
						<!-- 이메일 전체값 받는 input 박스 -->	
						<input type="hidden" id="full-email" name="full-email" value="">
		    		</li>
		    		<li>
		    			<div class="info" id="info__birth">
		    			<label for="birthday">생년월일</label>
						  <select class="box" id="birth-year" name="birth-year">
						    <option disabled selected>출생 연도</option>
						  </select>
						  <select class="box" id="birth-month" name="birth-month">
						    <option disabled selected>월</option>
						  </select>
						  <select class="box" id="birth-day" name="birth-day">
						    <option disabled selected>일</option>
						  </select>
						</div>
		    		</li>
		    		<li>
		    			<div class="tel" id="tel_box">
		    			<label for="tel">전화번호</label>
						  <input type="text" id="tel" name="tel" 
		    				placeholder="' - '을 제외한 숫자를 입력해주세요">
						</div>
		    		</li>
		    		
		    		<li>
		    			<label for="gender">성별</label>
		    			<div id="gender-option">
			    			<input type="radio" id="gender" name="gender" value="남" checked>
			    			<p>남자</p>
			    			<input type="radio" id="gender" name="gender" value="여">
			    			<p>여자</p>
		    			</div>
		    		</li>
		    	</ul>
		    <div class="button">
		    	<!-- checkMember(): 유효성 검사  -->
		    	<button type="button" onclick="checkUser()">가입하기</button> 
	    	</div>
	    	</form>
	  	</div>
		  
	  </section>
	<jsp:include page="../footer.jsp" />
</body>
</html>