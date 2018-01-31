<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Computing Speed</title>
</head>
<body>
<%--页面指定SpeedErrors.jsp来处理ComputeSpeed.jsp中发生的错误.
	SpeedErrors.jsp放置在WEB-INF目录中，由于服务器禁止客户直接访问
	WEB-INF，这种安排能够阻止客户无意间直接访问SpeedErrors.jsp.
	这类错误页面不会生成response.sendRedirect调用，
	客户只看到最初请求页面的URL，看不到错误页面的URL。
 --%>
	<%@ page errorPage="/WEB-INF/SpeedErrors.jsp" %>
	<table border=5 align="center">
		<tr><th class="title">
		Computing Speed
	</table>
	<%!
	private double toDouble(String value)
	{
		return Double.parseDouble(value);
	}
	%>
	<%
	double furlongs = toDouble(request.getParameter("furlongs"));
	double fortnights = toDouble(request.getParameter("fortnights"));
	double speed = furlongs/fortnights;
	%>
	<ul>
		<li>Distance: <%=furlongs %> furlongs.
		<li>Time: <%=fortnights %> fortnights.
		<li>Speed: <%=speed %> furlongs per fortnights.
	</ul>
</body>
</html>