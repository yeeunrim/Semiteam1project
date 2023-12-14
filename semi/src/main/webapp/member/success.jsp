<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="users" class="users.Users" />
<!-- setId() -->
<jsp:setProperty property="username" name="users"/>
<jsp:setProperty property="id" name="users"/>
<jsp:setProperty property="pw" name="users"/>
<jsp:setProperty property="email" name="users"/>
<jsp:setProperty property="gender" name="users"/>
<jsp:useBean id="userDAO" class="users.UsersDAO" scope="application" />
<%
	//수정 처리 메서드 호출
	userDAO.updateUsers(users);

	out.println("<script>");
	out.println("alert('주소를 수정했습니다.')");
	out.println("location.href='mypage.jsp' "); //마이페이지로 이동
	out.println("</script>");
%>