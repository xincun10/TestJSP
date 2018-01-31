<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%--新闻汇总页面，页面的开发人员变更文件Item1.html到Item3.html中的新闻项时，
	不必更新主新闻页面。
	要注意被包含的页面不是完整的web页面。
	一般放到WEB-INF目录中，防止客户出于偶然访问到这些页面。
 --%>
<body>
	<table border=5 align="center">
		<tr><th>
		What's New at JspNews.com
	</table>
	<p>
	Here is a summary of our three most recent news stories:
	<ol>
		<li><jsp:include page="/WEB-INF/Item1.html"></jsp:include>
		<li><jsp:include page="/WEB-INF/Item2.html"></jsp:include>
		<li><jsp:include page="/WEB-INF/Item3.html"></jsp:include>
	</ol>
</body>
</html>