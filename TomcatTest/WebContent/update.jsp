<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 align="right">登录账号：<%= session.getAttribute("account") %></h3>
	<h3>信息更新</h3>
	<hr>
	<form action="updateControl.jsp">
		<table>
			<tr>
				<td>
					账号
				</td>
				<td>
					<input type="text" name="account" value="<%= request.getParameter("account") %>"/>
				</td>
			</tr>
			<tr>
				<td>
					名字
				</td>
				<td>
					<input type="text" name="name" value="<%= request.getParameter("name") %>"/>
				</td>
			</tr>
			<tr>
				<td>
					邮箱
				</td>
				<td>
					<input type="text" name="email" value="<%= request.getParameter("email") %>"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>