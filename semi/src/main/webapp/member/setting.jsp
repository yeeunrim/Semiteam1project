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
  <script src="../resources/js/a.js"></script>
  <script src="../resources/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<body>
	<jsp:include page="../header.jsp" />
	<section class="my_container">
	  <section id="memberlist">
		<h2>계정 설정</h2>
			<form>
				<fieldset id="fd">
                    <ul>
                    	<li>
                            <label for="email">이메일</label>
                            <input type="text" id="email" name="email">
                        </li>
                        <li>
                            <label for="passwd">비밀번호</label>
                            <input type="password" id="passwd" name="passwd" required>
                        </li>
                        <li>
                            <label for="passwd2">비밀번호 확인</label>
                            <input type="password" id="passwd2" name="passwd2" required>
                        </li>
                        <li>
                            <label for="tel">전화번호</label>
                            <input type="text" id="tel" name="tel" required>
                        </li>
                        <li class="ch">
                            <label for="gender">성별</label>
                            <input type="radio" id="gender" name="gender" value="남" checked>남
                            <input type="radio" id="gender" name="gender" value="여">여
                        </li>
                        <li class="ch">
                            <label for="mailing">mailing</label>
                            <input type="checkbox" id="mailing" name="mailing" value="email" checked>email
                            <input type="checkbox" id="mailing" name="mailing" value="SMS" checked>SMS
                        </li>
                        <hr>
                        
                        <div class="button">
                            <a href="#">회원 탈퇴</a>
                            <button type="submit">변경사항 저장</button>
                      	</div>
                    </ul>
                   
				</fieldset>
			</form>
	  </section>
	</section>
  <jsp:include page="../footer.jsp" />
</body>
</html>