<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Computing Speed</title>
</head>
<body>
	<%@ page isErrorPage="true" %>
	<table border=5 align="center">
		<tr><th class="title">
		Error Computing Speed
	</table>
	<p>
	ComputeSpeed.jsp reported the following error:
	<%--附加变量exception,仅仅在错误页面中才可用 --%>
	<i><%=exception %></i>. This problem occurred in
	 the following place:
	<pre>
		<%@ page import="java.io.*" %>
		<% exception.printStackTrace(new PrintWriter(out)); %>
	</pre>
</body>
</html>