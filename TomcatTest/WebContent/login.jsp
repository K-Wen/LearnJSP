<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>人事管理系统登录</title>
</head>
<body>
	config对象： <%= config.getServletName() %>
	<hr>
	age: <%= config.getInitParameter("age") %>
	<h3 align="center">登录</h3>
	<hr/>
	<form action="loginControl.jsp">
		<table align="center">
			<tr>
				<td>账号</td>
				<td>
					<input type="text" name="account"/>
				</td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
					<input type="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="登录"/>
				</td>
				<td>
					<input type="submit" value="注册"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>