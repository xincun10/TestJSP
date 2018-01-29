<%@page import="com.utils.RanUtilities"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Random List Version 1</title>
</head>
<body>
<%--产生随机个数的随机数 --%>
	<ul>
		<%
		int numEntries = RanUtilities.randomInt(10);
		for(int i=0; i<numEntries; i++)
		{
			out.println("<li>" + RanUtilities.randomInt(10));
		}
		%>
	</ul>
</body>
</html>