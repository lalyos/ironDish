<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="catalog" class="com.irondish.SimpleProductCatalog" scope="application" />
<c:if  test="${not empty param.delete}">
	<%
		catalog.deleteProduct(request.getParameter("delete"));
	%>	
</c:if>

<c:if test="${not empty param.command}">
    <h2>Add ...</h2>
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
  	<c:url var="deleteUrl" value="/admin/storeAdmin.jsp" />
  
    <tr>
      <td> <c:out value="${product.name }"  />
      </td>
      <c:out value="${product.price }" />
      <td></td>
      <td>
      	 <form action="${deleteUrl}" method="post"  style="display:inline;">
      	 	<input type="hidden" name="delete"  value="${product.name }"/>
      	 	<button type="submit" class="btn btn-danger" ><i class="icon-trash icon-white"></i></button>
      	 </form>
      	 <form action="" method="post" style="display:inline;" >
      	 	<input type="hidden" name="name"  value="${product.name }"/>
      	 	<input type="hidden" name="price"  value="${product.price }"/>
      	 	<button type="submit" class="btn btn-info" ><i class="icon-pencil icon-white"></i></button>
      	 </form>
      </td>
    </tr>
  </c:forEach>    
  </tbody>
</table>

<h2>New Product</h2>

<form action="" method="post" class="form-horizontal">
		<iron:input name="name" value="${param.name}" />
		<iron:input name="price" value="${param.price}" />
	<br/><button type="submit" class="btn btn-primary" name="command" value="add" >Add</button>
</form>

