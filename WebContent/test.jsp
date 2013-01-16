<%@taglib tagdir="/WEB-INF/tags"  prefix="iron"%>

pal=<%= request.getUserPrincipal() %>

<iron:hasRoller role="manager-gui-uber">

<h1>Uber Csaszar vagy!</h1>
</iron:hasRoller>