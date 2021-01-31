<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@page import="bean.UserDao,bean.User"%>

	<%
	String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>More Details</h1>
	<input type="hidden" name="id" value="<%=u.getId()%>" />
	<table>
		<tr>
			<td>Name:</td>
			<td><label><%=u.getName()%></label></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><label><%=u.getPassword()%></label></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><label><%=u.getEmail()%></label></td>
		</tr>
		<tr>
			<td>Sex:</td>
			<td><label><%=u.getSex()%></label></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><label><%=u.getCountry() %></label></td>
		</tr>
		<tr>
			<button onclick="location.href = 'viewusers.jsp' ">Back</button>
		</tr>
	</table>
</body>
</html>