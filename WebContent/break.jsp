<h1>v1.1</h1>
<jsp:useBean id="now" class="java.util.Date" />

<jsp:useBean id="breakTimes" class="com.irondish.web.BreakTimeList" scope="application" />

<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />

<fmt:parseDate pattern="yyyy-MM-dd HH:mm"  value="${nowDate} ${breakTimes.next}" var="lunch"/>

<c:set var="minutes" value="${(lunch.time-now.time) / 60000}"/>


<fmt:formatNumber maxFractionDigits="0" value="${minutes}" ></fmt:formatNumber>

 minutes left till lunch



<%@include file="headers.jsp" %>

