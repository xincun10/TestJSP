<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Baked Bean Values:page-based Sharing</title>
</head>
<body>
<%--scope="application"
	即应用级别的修改，
	基于ServletContext的共享
 --%>
	<h1>Baked Bean Values:ServletContext-based Sharing</h1>
	<jsp:useBean id="applicationBean" class="com.beans.BakedBean" scope="application"></jsp:useBean>
	<jsp:setProperty property="*" name="applicationBean"/>
	<h2>
		Bean level:
		<jsp:getProperty property="level" name="applicationBean"/>
	</h2>
	<h2>
		Dish bean goes with:
		<jsp:getProperty property="goesWith" name="applicationBean"/>
	</h2>
</body>
</html>