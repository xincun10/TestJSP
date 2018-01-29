<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--记录当前页面被请求的次数 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Declarations</title>
</head>
<body>
	<h1>JSP Declarations</h1>
	<%! private int accessCount = 0; %>
	<h2>Accesses to page since server reboot:
		<%=++accessCount %>
	</h2>
</body>
</html>