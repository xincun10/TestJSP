<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The import Attribute</title>
</head>
<body>
	<h2>The import Attribute</h2>
	<%--JSP page directive --%>
	<%@ page import="java.util.*, com.utils.*" %>
	<%!
	private String randomID()
	{
		int num = (int)(Math.random()*10000000.0);
		return ("id" + num);
	}
	private final String NO_VALUE = "<I>No Value</I>";
	%>
	<%--_jspService类里面,JSP Scriptlet --%>
	<%
	String oldID = 
		CookieUtilities.getCookieValue(request, "userID", NO_VALUE);
	if(oldID.equals(NO_VALUE))
	{
		String newID = randomID();
		Cookie cookie = new LongLivedCookie("userID", newID);
		response.addCookie(cookie);
	}
	%>
	<%--JSP Expressions --%>
	This page was accessed on <%=new Date() %> with a userID
	 cookie of <%=oldID %>
</body>
</html>