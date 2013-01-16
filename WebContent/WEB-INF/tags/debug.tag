<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="debug" description="" small-icon="" body-content="empty" %>
<%@ attribute name="title" description="" required="true" type="java.lang.String" %>
<%@ attribute name="map" description="" required="true" type="java.lang.Object" %>


<h2>${title}</h2>

<table class="table table-hover table-condensed table-bordered table-striped">
  <caption>${title}</caption>
  <thead>
    <tr>
      <th>key</th>
      <th>value</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${map}" var="entry">
    <tr>
      <td>${entry.key }</td>
      <td>${entry.value }</td>
    </tr>
  </c:forEach>    
  </tbody>
</table>
