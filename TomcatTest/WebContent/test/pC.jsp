<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Result:
<hr>
<%=
	request.getParameter("name")
%>
<%=
	request.getParameter("pw")
%>
<hr>
page基本信息：<%= this.getServletInfo() %>
</body>
</html>