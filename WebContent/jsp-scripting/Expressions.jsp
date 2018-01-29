<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" 
		content="text/html; charset=UTF-8">
<meta name="keywords" 
		content="JSP,expressions,JavaServer Pages,servlets">
<meta name="description"
		content="A quick example of JSP expressions.">
<link rel=stylesheet href="JSP-Styles.css" type="text/css">

<title>JSP Excepssions</title>
</head>
<body>
	<h2>JSP Expressions</h2>
	<ul>
		<li>Current time:<%= new java.util.Date() %>
		<li>Server:<%= application.getServerInfo() %>
		<li>Session ID:<%= session.getId() %>
		<li>The <code>testParam</code> from parameter:
			<%= request.getParameter("testParam") %>
	</ul>
</body>
</html>