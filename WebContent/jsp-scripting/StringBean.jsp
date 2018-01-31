<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using JavaBeans with JSP</title>
</head>
<body>
<%--怎么设置bean对象及其属性 --%>
	<table border=5 align="center">
		<tr><th>Using JavaBeans with JSP	
	</table>
	<jsp:useBean id="stringBean" class="com.beans.StringBean"></jsp:useBean>
	<ol>
		<li>Initial value (from jsp:getProperty (first choice)):
			<I><jsp:getProperty property="message" name="stringBean"/></I>
		<li>Initial value (from JSP expression):
			<I><%=stringBean.getMessage() %></I>
		<li><jsp:setProperty property="message" name="stringBean" value="new mwssage"/>
		Value after setting property with jsp:setProperty:
		<I><jsp:getProperty property="message" name="stringBean"/></I>
		<li><% stringBean.setMessage("hhh"); %>
		Value after setting property with scriptlet:
		<I><%=stringBean.getMessage() %></I>
	</ol>
</body>
</html>