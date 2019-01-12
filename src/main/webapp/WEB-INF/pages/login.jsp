<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Login</title>
</head>
<body>

<div>
    <form method="POST" action="${contextPath}/login">
        <h2 class="form-heading">Log in</h2>
        <input name="userName" type="text" placeholder="Username"
               autofocus="true"/>
        <input name="password" type="password"  placeholder="Password"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button  type="submit">Log In</button>
        <a href="<c:url value="/registration"/>">Create an account</a>
    </form>

</div>
</body>
</html>
