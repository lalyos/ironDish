
<jsp:useBean id="deliveryAddress" class="com.irondish.Address"
	scope="session" />

<c:if test="${pageContext.request.method eq 'POST'}">

	<jsp:setProperty name="deliveryAddress" property="*" />

</c:if>


<form action="" method="post" class="form-horizontal">
	<c:forEach items="street,city,zip,country" var="nextField">

<div class="control-group">
    <label class="control-label" for="${nextField}">${nextField}</label>
    <div class="controls">
      <input type="text" id="${nextField}" placeholder="${nextField}" value="${sessionScope.deliveryAddress[nextField]}" >
    </div>
  </div>


	</c:forEach>

	<br />
	
	<button type="submit" class="btn btn-primary">Set</button>
</form>
