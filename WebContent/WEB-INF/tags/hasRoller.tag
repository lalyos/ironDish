<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="" description="" small-icon="" %>
<%@ attribute name="role" description="" required="true" type="java.lang.String" %>

<c:set var="desiredRole" value="${role}" scope="request" />
<c:if test='<%= request.isUserInRole((String)request.getAttribute("desiredRole")) %>'>
	<jsp:doBody />
</c:if>