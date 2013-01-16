<%@taglib tagdir="/WEB-INF/tags" prefix="iron" %>
<jsp:useBean id="deliveryAddress" class="com.irondish.Address" scope="session" />

<c:if test="${pageContext.request.method eq 'POST'}">
	<jsp:setProperty name="deliveryAddress" property="*" />
</c:if>

<h2>delivery address v1.0</h2>
<form action="" method="post" class="form-horizontal">
		<iron:input name="street" value="${sessionScope.deliveryAddress.street}" />
		<iron:input name="city" value="${sessionScope.deliveryAddress.city}" />
		<iron:input name="zip" value="${sessionScope.deliveryAddress.zip}" />
		<iron:input name="country" value="${sessionScope.deliveryAddress.country}" />

	<br/><button type="submit" class="btn btn-primary">Set</button>
</form>
