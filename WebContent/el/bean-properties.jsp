<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Accessing Bean Peoperties</title>
</head>
<body>
	<table border=5 align="center">
		<tr><th>Accessing Bean Properties
	</table>
	<p>
	<ul>
	<%--表达式语言允许我们任意嵌套属性 --%>
		<li><B>First Name:</B>${employee.name.firstName }
		<li><B>Last Name:</B>${employee.name.lastName }
		<li><B>Company Name:</B>${employee.company.companyName }
		<li><B>Company Business:</B>${employee.company.business }
	</ul>
</body>
</html>