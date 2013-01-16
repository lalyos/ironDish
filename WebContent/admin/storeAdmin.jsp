<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="catalog" class="com.irondish.SimpleProductCatalog" scope="application" />
<c:if  test="${not empty param.delete}">
	<%
		catalog.deleteProduct(request.getParameter("delete"));
	%>	
</c:if>

<c:if test="${not empty param.command}">

	<%
		catalog.addProduct(request.getParameter("name"), request.getParameter("price"));
	%>	
</c:if>

<table class="table table-hover table-condensed table-bordered table-striped">
  <caption>${title}</caption>
  <thead>
    <tr>
      <th>name</th>
      <th>price</th>
      <th>actions</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${catalog.products}" var="product">
  	<c:url var="deleteUrl" value="/admin/storeAdmin.jsp" >
		<c:param name="delete" value="${product.name }" />
	</c:url>
  
    <tr>
      <td>${product.name }</td>
      <td>${product.price }</td>
      <td>
      	 <a class="btn btn-danger" href="${deleteUrl}"><i class="icon-trash icon-white"></i></a>
      </td>
    </tr>
  </c:forEach>    
  </tbody>
</table>

<h2>New Product</h2>

<form action="" method="post" class="form-horizontal">
		<iron:input name="name" value="" />
		<iron:input name="price" value="" />
	<br/><button type="submit" class="btn btn-primary" name="command" value="add" >Add</button>
</form>

