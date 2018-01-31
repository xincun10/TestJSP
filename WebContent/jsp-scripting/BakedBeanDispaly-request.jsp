<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Baked Bean Values:request-based Sharing</title>
</head>
<body>
<%--scope="request"
	在共享同一请求对象的两个不同页面中创建、修改和访问bean。
	本例中使用jsp:include的JSP语法
 --%>
	<h1>Baked Bean Values:page-based Sharing</h1>
	<jsp:useBean id="requestBean" class="com.beans.BakedBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="requestBean"/>
	<h2>
		Bean level:
		<jsp:getProperty property="level" name="requestBean"/>
	</h2>
	<h2>
		Dish bean goes with:
		<jsp:getProperty property="goesWith" name="requestBean"/>
	</h2>
	<!-- 第二个页面 -->
	<jsp:include page="/WEB-INF/BakedBeanDisplay-snippet.jsp"></jsp:include>
</body>
</html>