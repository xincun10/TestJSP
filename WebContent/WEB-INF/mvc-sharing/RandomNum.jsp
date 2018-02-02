<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Random Number</title>
</head>
<body>
	<jsp:useBean id="randomNum" type="com.beans.NumberBean" scope="request"></jsp:useBean>
	<h2>
	Random Number:
	<jsp:getProperty property="num" name="randomNum"/>
	</h2>
</body>
</html>