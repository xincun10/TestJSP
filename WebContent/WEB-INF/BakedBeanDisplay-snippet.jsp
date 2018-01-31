<h1>Repeated Baked Bean Values:request-based Sharing</h1>
<jsp:useBean id="requestBean" class="com.beans.BakedBean" scope="request"></jsp:useBean>
<h2>
	Bean level:
	<jsp:getProperty property="level" name="requestBean"/>
</h2>
<h2>
	Dish bean goes with:
	<jsp:getProperty property="goesWith" name="requestBean"/>
</h2>