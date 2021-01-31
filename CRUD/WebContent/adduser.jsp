<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@page import="bean.UserDao"%>
	<jsp:useBean id="u" class="bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />

	<%
	int i = UserDao.save(u);
	if (i > 0) {
		response.sendRedirect("adduser-success.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
	%>
</body>
</html>