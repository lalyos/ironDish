<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="breakTimes" class="com.irondish.web.BreakTimeList" scope="application" />

<c:if  test="${not empty param.timestamp}">
	<jsp:setProperty name="breakTimes" property="addTime" value="${param.timestamp}"/>
</c:if>

<h2>Actual brakeTimes:</h2>

<ul>
<c:forEach items="${breakTimes.breakTimes}" var="next">
	<li>${next }</li>
</c:forEach>
</ul>
<h2>please enter the new break</h2>

<form action="">
	<br/>timestamp : <input type="text" name="timestamp" />
	<input type="submit" value="add" />
</form>
