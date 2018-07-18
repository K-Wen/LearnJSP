<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Hello World</title>
</head>
<body>
<%!
int x = -5;
int y = 0;
%>

<% 
if(x<0) y = -1;
else if (x==0) y=0;
else y = 1;
%>

<div style="height:100px;width:100px;margin: 0 auto;">
y的值是：<%= y %>
</div>
</body>
</html>