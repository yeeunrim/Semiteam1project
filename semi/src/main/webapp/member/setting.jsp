<%@page import="users.UsersDAO"%>
<%@ page import="users.Users"%>
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
  <jsp:include page="../header.jsp" />
	<jsp:useBean id="userDAO" class="users.UsersDAO" scope="application" />

	<section class="my_container">
	  <section id="memberlist">
		<h2>ȸ�� ���� ����</h2>
			<form action="/updateUsers.do" method="post" name="setting">
				<fieldset id="fd">
                    <ul>
                        <li>
			 			<li>
			                <label for="passwd">��й�ȣ</label>
			                <input type="password" id="passwd" name="passwd" required
			                placeholder="������, ����, Ư������ ���� 8�� �̻� �Է�">
			            </li>
			            <li>
			                <label for="passwd2">��й�ȣ Ȯ��</label>
			                <input type="password" id="passwd2" name="passwd2" required
			                placeholder="��й�ȣ�� �����ϰ� �Է�">
			            </li>
                        <li>
                            <label for="tel">�޴��� ��ȣ</label>
                            <input type="tel" id="tel" name="tel" value="${user.tel}" required
			                placeholder="��ȭ��ȣ�� '-'�� ������ 9�ڸ�~11�ڸ��� �Է�">
                        </li>
                        <li>
                            <label for="email">�̸���</label>
                            <input type="email" id="email" name="email" value="${user.email}" required 
			                placeholder="@�� ������ �̸��� �������� �Է����ּ���">
                        </li>
  
                        <li class="ch">
                            <label for="mailing">mailing</label>
                            <input type="checkbox" id="mailing" name="mailing" value="email" checked>email
                            <input type="checkbox" id="mailing" name="mailing" value="SMS" checked>SMS
                        </li> 
                        <hr>
                        <div class="button">
                            <a href="/deleteUser.do"
                             onclick="return confirm('������ Ż���Ͻðڽ��ϱ�?')">
                             ȸ�� Ż��</a>
                          <button type="button" onclick="checkMember()">
                            ������� ����</button>
						</div>
                    </ul>
				</fieldset>
			</form>
	  </section>
	</section>
  <jsp:include page="../footer.jsp" />
</body>
</html>