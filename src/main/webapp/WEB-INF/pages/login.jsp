
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<div>

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>
        <input name="userName" type="text" class="form-control" placeholder="Username"
               autofocus="true"/>
        <input name="password" type="password" class="form-control" placeholder="Password"/>
        <button  type="submit">Log In</button>
        <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
    </form>

</div>
</body>
</html>
