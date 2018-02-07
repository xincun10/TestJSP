<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test jstl functions</title>
</head>
<body>
	<%
	String[] strs = {"a","b","c"};
	List list = new ArrayList();
	list.add("a");
	pageContext.setAttribute("arr", strs);
	pageContext.setAttribute("list", list);
	%>
	${fn:length(list) }
	${fn:length(arr) }
</body>
</html>