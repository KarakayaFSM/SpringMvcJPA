<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>Profile</title>
</head>

<body>
    <h1>Employee Profile</h1>
    <h2>FirstName : <c:out value="${employee.firstName}"/></h2>
    <h2>LastName:  <c:out value="${employee.lastName}"/> </h2>
    <h2>Email: <c:out value= "${employee.email}"/></h2>
<%--    <button <c:url value="/employee/edit/${employee.id}"/> >Edit</button>--%>
</body>
</html>
