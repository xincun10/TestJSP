<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A Prime Number</title>
</head>
<body>
	<jsp:useBean id="primeBean" type="com.beans.PrimeBean" scope="application"></jsp:useBean>
	<h2>
	<jsp:getProperty property="prime" name="primeBean"/>
	</h2>
</body>
</html>