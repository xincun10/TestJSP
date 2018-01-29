<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DayWish</title>
</head>
<body>
<%--scriptlet内的代码会原封不动地插入到由JSP页面生成的servlet的_jspServlet方法
	scriptlet之前或之后的任何静态html会转换成print语句。
	scriptlet所包含的java语句不一定要完整。
 --%>
	<%if (Math.random()<0.5) { %>
	<h1>have a <I>nice</I> day!</h1>
	<%}else {%>
	<h1>have a <I>lousy</I> day!</h1>
	<%} %>
</body>
</html>