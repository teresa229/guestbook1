<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>

<%
 	 int 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="" method="get">
			비밀번호 : <input type = "text" name="password">
			<button type="submit">확인</button>
		</form>
		<br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>