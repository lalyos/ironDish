<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul>
<c:forEach items="${header }" var="entry">
	<li> <strong> ${entry.key} </strong> :  ${entry.value }</li>
</c:forEach>
</ul>