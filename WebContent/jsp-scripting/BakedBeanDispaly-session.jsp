<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Baked Bean Values:session-based Sharing</title>
</head>
<body>
<%--scope="session"
	第一次带参数访问，第二次不带参数访问，即只要一个会话没有结束，没有超时，两次可以得到相同的结果。
 --%>
	<h1>Baked Bean Values:page-based Sharing</h1>
	<jsp:useBean id="sessionBean" class="com.beans.BakedBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="sessionBean"/>
	<h2>
		Bean level:
		<jsp:getProperty property="level" name="sessionBean"/>
	</h2>
	<h2>
		Dish bean goes with:
		<jsp:getProperty property="goesWith" name="sessionBean"/>
	</h2>
</body>
</html>