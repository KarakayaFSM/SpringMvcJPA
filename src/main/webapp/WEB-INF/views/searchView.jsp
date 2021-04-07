<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Hello</title>
</head>
<body>
<h1>Welcome</h1>
<br>
<h3>Search by ID </h3>
    <form:form action="/employee/search" modelAttribute="employee">
        Employee ID: <form:input path="id"/>
        <br><br>
        <input type="submit" value="Search"/>
    </form:form>
</body>
</html>
