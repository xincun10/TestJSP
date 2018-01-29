<%@page import="com.utils.RanUtilities"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Semi-Random Number</title>
</head>
<body>
<%--第一次请求时生成一个随机数，除非服务器重启，否则这个数不改变 --%>
	<%!
	private int randomNum = RanUtilities.randomInt(10);
	%>
	<h1>the Number is:<br><%=randomNum %></h1>
</body>
</html>