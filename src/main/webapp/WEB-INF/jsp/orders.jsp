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
        <th>Number of places</th>
        <th>Duration hours</th>
        <th>Order status</th>
        <th>Number of room</th>
        <th>User id</th>

        </thead>
        <c:forEach items="${allOrders}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.places}</td>
                <td>${order.durationHours}</td>
                <td>${order.orderStatus}</td>
                <td>${order.room.roomNumber}</td>
                <td>${order.user.id}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="/">Главная</a>
</div>
</body>
</html>