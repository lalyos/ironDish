
<jsp:useBean id="deliveryAddress" class="com.irondish.Address"
	scope="session" />

<c:if test="${pageContext.request.method eq 'POST'}">

	<jsp:setProperty name="deliveryAddress" property="*" />

</c:if>


<form action="" method="post">
	<c:forEach items="street,city,zip,country" var="nextField">
		<div>
			<label for="${nextField}">${nextField}</label> <input
				id="${nextField}" name="${nextField}" type="text"
				value="${sessionScope.deliveryAddress[nextField]}" />
		</div>

	</c:forEach>

	<br />
	<input type="submit" value="set" />
</form>
