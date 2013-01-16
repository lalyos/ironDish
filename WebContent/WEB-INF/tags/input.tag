<%@taglib tagdir="/WEB-INF/tags"  prefix="iron"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="input" description="" small-icon="" body-content="empty" dynamic-attributes="dynamo" %>
<%@ attribute name="name" description="" required="true" type="java.lang.String" %>
<%@ attribute name="value" description="" required="true" type="java.lang.String" %>


<div class="control-group">
    <label class="control-label" for="${name}">${name}</label>
    <div class="controls">
      <input type="text" name="${name}" id="${name}" placeholder="${name}" value="${value}"
      <c:forEach items="${dynamo }" var="entry">
      	${entry.key}="${entry.value}"
      </c:forEach> 

      />
    </div>
  </div>

  
<hr/>
