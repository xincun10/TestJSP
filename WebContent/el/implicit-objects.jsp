<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using Implicit Objects</title>
</head>
<body>
<%--使用隐式对象 --%>
	<table border=5 align="center">
		<tr><th>Using Implicit Objects
	</table>
	<p>
	<ul>
		<li><B>test Request Parameter:</B>${param.test }
		<li><B>User-Agent Header:</B>${header["User-Agent"] }
		<li><B>JSESSIONID Cookie Value:</B>${cookie.JSESSIONID.value }
		<li><B>Server:</B>${pageContext.servletContext.serverInfo }
	</ul>
</body>
</html>