<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="com.test.db.DBUtil, com.test.bean.Emp, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>密码验证</title>
</head>
<body>
<%
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	/*  out.println("账号:" + account + "密码：" + password); */
	Emp emp = new Emp(account, null, password, null);
	boolean isSuccess = DBUtil.vertifyEmp(emp);
	if (isSuccess) {
		Map<String, Emp>map = DBUtil.map;
		Object obj = application.getAttribute("count");
		if (obj == null) {
			application.setAttribute("count", 1);
		} else {
			application.setAttribute("count", Integer.parseInt(obj.toString()) + 1);
		}
		session.setAttribute("account", account);
%>
		<h3 align="right"> 访问量：<%= application.getAttribute("count") %></h3>
		<h3 align="right"> 登录账户是：<%= session.getAttribute("account") %></h3>
		<h3 align="center">欢迎登录</h3>
		<hr/>
		<table align="center" style="border:1px solid green;">
			<tr>
				<td>账号</td>
				<td>姓名</td>
				<td>邮箱</td>
				<td>修改</td>
			</tr>
<%
				for(String key : map.keySet()) {
					Emp e = map.get(key);
%>
					<tr>
						<td><%= e.getAccount() %></td>
						<td><%= e.getName() %></td>
						<td><%= e.getEmail() %></td>
						<td><a href="update.jsp?account=<%= e.getAccount()%>&name=<%= e.getName() %>&email=<%= e.getEmail()%>">修改</a></td>
					</tr>
<%
				}
%>
		</table>
<% 
	}  else {
		throw new Exception("账号密码错误");
		/* out.println("账户密码错误"); */
	}
%>
</body>
</html>