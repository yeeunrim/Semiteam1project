<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정 설정</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="../resources/js/a.js"></script>
</head>
<body>
	<section class="my_container">
	  <section id="memberlist">
		<h2>계정 설정</h2>
			<form>
				<fieldset id="fd">
                    <ul>
                        <li>
                            <label for="name">이름</label>
                            <input type="text" id="name" name="name" required>
                        </li>
                        <li>
                            <label for="id">아이디</label>
                            <input type="text" id="id" name="id" required>
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
                            <label for="email">이메일</label>
                            <input type="text" id="email" name="email">
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
</body>
</html>