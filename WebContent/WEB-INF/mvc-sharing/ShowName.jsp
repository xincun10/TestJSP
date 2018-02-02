<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thanks for Registering</title>
</head>
<body>
	<jsp:useBean id="nameBean" type="com.beans.NameBean" scope="session"></jsp:useBean>
	<h2>
	First Name:
	<jsp:getProperty property="firstName" name="nameBean"/>
	</h2>
	<h2>
	Last Name:
	<jsp:getProperty property="lastName" name="nameBean"/>
	</h2>
</body>
</html>