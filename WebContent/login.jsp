<fmt:setBundle basename="messages"/>


<c:choose>
	<c:when test="${param.cmd eq 'logout'}">
		<c:remove var="username" scope="session"/>
	</c:when>
	<c:when test="${param.cmd eq 'login'}">
		<c:set var="username" scope="session" value="${param.username}" />
	</c:when>
</c:choose>


<c:choose>
	<c:when test="${not empty username}">
		<h2><fmt:message key="login.welcome" /> ${username}</h2>
		<a href="?cmd=logout" >logout</a>
	</c:when>
	<c:otherwise>
		<form action="">
			<fmt:message key="login.username" />: <input type="text" name="username"/>
			<input type="submit" name="cmd" value="login"/>
		</form>
	</c:otherwise>
</c:choose>