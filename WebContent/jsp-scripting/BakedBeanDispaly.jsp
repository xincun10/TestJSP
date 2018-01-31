<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Baked Bean Values:page-based Sharing</title>
</head>
<body>
<%--使用scope="page"，即不共享 --%>
	<h1>Baked Bean Values:page-based Sharing</h1>
	<jsp:useBean id="pageBean" class="com.beans.BakedBean" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="pageBean"/>
	<h2>
		Bean level:
		<jsp:getProperty property="level" name="pageBean"/>
	</h2>
	<h2>
		Dish bean goes with:
		<jsp:getProperty property="goesWith" name="pageBean"/>
	</h2>
	<%--访问BakedBeanDispaly.jsp?goesWith=chicken时，页面显示为chicken
		紧接着访问BakedBeanDispaly.jsp，页面为hot dog，证明bean不共享。
	 --%>
</body>
</html>