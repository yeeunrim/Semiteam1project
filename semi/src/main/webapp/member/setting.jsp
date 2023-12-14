<%@page import="users.UsersDAO"%>
<%@ page import="users.Users"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
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
	<jsp:useBean id="userDAO" class="users.UsersDAO" scope="application" />
	<% 
		//bnum���� ã�� ��ü�� ����
		String id = request.getParameter("id");
		Users users = userDAO.getUsers(id);
	%>
	<section class="my_container">
	  <section id="memberlist">
		<h2>���� ����</h2>
			<form action="success.jsp" method="post">
				<fieldset id="fd">
                    <ul>
                        <li>
                            <label for="name">�̸�</label>
                            <input type="text" id="name" name="name" 
                            value=<%=users.getUsername() %>required>
                        </li>
                        <li>
                            <label for="id">���̵�</label>
                            <input type="text" id="id" name="id" required
                            value=<%=users.getId() %>>
                        </li>
                        <li>
                            <label for="passwd">��й�ȣ</label>
                            <input type="password" id="passwd" name="passwd" required
                            value=<%=users.getPw() %>>
                        </li>
                        <li>
                            <label for="email">�̸���</label>
                            <input type="text" id="email" name="email"
                            value=<%=users.getEmail() %>>
                        </li>
                        <%-- <li class="ch">
                            <label for="gender">����</label>
                            <% if(users.getGender().equals("��")){ %>
                            <input type="radio" id="gender" name="gender" value="��" checked>��
                            <input type="radio" id="gender" name="gender" value="��">��
                            <% }else{ %>
                            <input type="radio" id="gender" name="gender" value="��">��
                            <input type="radio" id="gender" name="gender" value="��" checked>��
                            <% } %>
                        </li> --%>
                        <li class="ch">
                            <label for="mailing">mailing</label>
                            <input type="checkbox" id="mailing" name="mailing" value="email" checked>email
                            <input type="checkbox" id="mailing" name="mailing" value="SMS" checked>SMS
                        </li>
                        
                        <hr>
                        
                        <div class="button">
                            <a href="#">ȸ�� Ż��</a>
                            <button type="submit">������� ����</button>
                      	</div>
                    </ul>
                    	
                   
				</fieldset>
			</form>
	  </section>
	</section>
  <jsp:include page="../footer.jsp" />
</body>
</html>