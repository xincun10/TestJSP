<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comparing Apples and Oranges</title>
</head>
<body>
<%--Microsoft Excel能够输入HTML中用TABLE标签表示的表格。
	如果用户仅仅要查看这些数据，应该将它们显示到常规WEB页面的表格中，
	如果用户希望将它放入到报告中，应该放置在Excel电子表格中。
 --%>
	<h2>Comparing Apples and Oranges</h2>
	<%
	String format = request.getParameter("format");
	if((format!=null) && (format.equals("excel")))
	{
		response.setContentType("application/vnd.ms-excel");
	}
	%>
	<table border=1>
		<tr><th></th>	<th>Apples<th>Oranges
		<tr><th>First Quarter	<td>2307<td>4706
		<tr><th>Second Quarter	<td>2307<td>4706
		<tr><th>Third Quarter	<td>2307<td>4706
		<tr><th>Fourth Quarter	<td>2307<td>4706
	</table>
</body>
</html>