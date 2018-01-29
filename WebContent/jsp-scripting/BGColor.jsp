<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Color Testing</title>
</head>
<%
	String bgColor = request.getParameter("bgColor");
	if(bgColor==null || bgColor.equals(""))
	{
		bgColor = "papayawhip";
	}
%>
<%--使用bgColor请求参数来设置页面的背景色 --%>
<body BGCOLOR="<%= bgColor %>">
	<h2 align="center">Testing a Background of "<%= bgColor %>"</h2>
</body>
</html>