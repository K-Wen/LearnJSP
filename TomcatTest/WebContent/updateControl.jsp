<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.db.DBUtil, com.test.bean.Emp, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Control</title>
</head>
<body>
<%
	Map<String,Emp> map = DBUtil.map;
	Emp emp = map.get(request.getParameter("account"));
	emp.setName(request.getParameter("name"));
	emp.setEmail(request.getParameter("email"));
%>
<h3 align="center"> Successfully !</h3>
</body>
</html>