<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<style>
    body {
        font-family: Arial, serif;
    }

    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div.container {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }

</style>

<head>
    <title>Employee Edit</title>
</head>

<body>

<div class="container">
    <h1>Employee Edit</h1>
    <form action="${pageContext.request.contextPath}/employee/edit">
        <label for="emp_id">Employee ID</label>
        <input disabled id="emp_id" type="text" value="${employee.id}" placeholder="Employee ID">

        <label for="first_name">First Name</label>
        <input id="first_name" type="text" value="${employee.firstName}">

        <label for="last_name">Last Name</label>
        <input id="last_name" type="text" value="${employee.lastName}">

        <label for="email">Email</label>
        <input id="email" type="text" value="${employee.email}">

        <button type="submit" >Edit</button>
    </form>
</div>

</body>
</html>
