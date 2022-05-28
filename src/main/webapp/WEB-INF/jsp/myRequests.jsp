<%@ page import="com.laptev.entity.Request" %>
<%@ page import="com.laptev.entity.RequestStatus" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Список заказов</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div>
    <table>
        <thead>
        <th>ID</th>
        <th>Places</th>
        <th>Room class</th>
        <th>Duration hours</th>
        <th>Request status</th>
        </thead>
        <c:forEach items="${myRequests}" var="request">
            <tr>
                <td>${request.id}</td>
                <td>${request.places}</td>
                <td>${request.roomClass}</td>
                <td>${request.durationHours}</td>
                <td>${request.requestStatus}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="/">Главная</a>
</div>
</body>
</html>