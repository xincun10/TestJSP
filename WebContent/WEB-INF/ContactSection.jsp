<%@ page import="java.util.Date" %>
<%--下面的内容会成为每一个servlet的一部分 --%>
<%!
private int accessCount = 0;
private Date accessDate = new Date();
private String accessHost = "<I>No previous access</I>";
%>
<P>
<hr>
This page has been accessed <%= ++accessCount  %>
times since server reboot.It was most recently accessed from
<%=accessHost %> at <%=accessDate %>.
<% accessHost=request.getRemoteHost(); %>
<% accessDate = new Date(); %>