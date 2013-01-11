<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF8" %>
    
 <%
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
 Date gohome = sdf.parse("2013-01-09 17:00");
 pageContext.setAttribute("gohome", gohome);
 %>   
 
 <h1>Go Home</h1>


<jsp:useBean id="now"  class="java.util.Date"/>
 

There are ${(gohome.time - now.timex)/60000} minutes left until we can go home.




<%@include file="footer.jspf" %>
<hr/>
<h2>request Headesr</h2>
<table border="2">
	<tr>
		<th>key</th>
		<th>value</th>
	</tr>
	<%
	Enumeration en = request.getHeaderNames();
	while (en.hasMoreElements()) {
		String key = (String) en.nextElement();
		String value = request.getHeader(key);
		%>
		
		<tr>
			<td><%=key %></td>
			<td><%=value %></td>
		</tr>

		<%
	}
	%>
</table>


</body>
</html>
