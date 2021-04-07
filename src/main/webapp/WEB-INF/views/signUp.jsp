<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 7.04.2021
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp</title>
</head>
<body>
<h3>SignUp</h3>

<c:url var="signUpUrl" value="/employee/signUp"/>

<form:form action="${signUpUrl}"
           method="post"
           modelAttribute="employee">
    First Name: <form:input path="firstName"/>
    <br><br>
    Last Name: <form:input path="lastName"/>
    <br><br>
    Email: <form:input path="email"/>
    <br><br>
    <button type="submit">SignUp</button>
</form:form>

</body>
</html>
