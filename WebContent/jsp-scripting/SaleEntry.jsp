<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using jsp:setProperty</title>
</head>
<body>
	<table border=5 align="center">
		<tr><th>Using jsp:setProperty
	</table>
	<%--新建一个bean实体类 --%>
	<jsp:useBean id="entry" class="com.beans.SaleEntry"></jsp:useBean>
	<%--设置实体类属性
		它允许属性与请求参数关联，自动执行从字符串到数字、
		字符和布尔值的类型转换，可以不使用value属性，而是param指定一个输入参数，
		被指定的请求参数的值自动用作bean属性的值。类型转换自动执行。
	 --%>
	<%-- <jsp:setProperty property="itemID" name="entry" param="itemID"/>
	<jsp:setProperty property="numItems" name="entry" param="numItems"/>
	<jsp:setProperty property="discountCode" name="entry" param="discountCode"/> --%>
	<%--若请求参数名字和属性名相同，可以省略param --%>
	<%--进一步简化，将所有的属性与同名的请求参数关联起来 --%>
	<jsp:setProperty property="*" name="entry"/>
	<br>
	<table border=1>
		<tr><th>Item ID<th>Unit Price<th>Number Ordered<th>Total Price
		<tr align="right">
			<td><jsp:getProperty property="itemID" name="entry"/>
			<td><jsp:getProperty property="itemCost" name="entry"/>
			<td><jsp:getProperty property="numItems" name="entry"/>
			<td><jsp:getProperty property="totalCost" name="entry"/>
	</table>
</body>
</html>