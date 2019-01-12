<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    This is welcome page
<div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <h2>
            Welcome ${pageContext.request.userPrincipal.name}
            <br>
            <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>
    </c:if>
    <div>
        <a href="/admin">to admin page</a>
    </div>
</div>
</body>
</html>
