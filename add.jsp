<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestVo guestVo = new GuestVo(name, password, content);
	GuestDao guestDao = new GuestDao();
	
	/* 저장 */
	guestDao.guestInsert(guestVo);
	
	/* 리다이렉트 */
	response.sendRedirect("./addList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  add
</body>
</html>