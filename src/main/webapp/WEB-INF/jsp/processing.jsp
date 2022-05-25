<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Обработка запросов</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div>
    <a href="/adminRequest">Назад</a>
    <br>
    <br>
    <table>
        <thead>
        <th>ID</th>
        <th>Places</th>
        <th>Room class</th>
        <th>Duration hours</th>
        <th>Request status</th>
        <th>User id</th>
        </thead>
            <tr>
                <td>${request.id}</td>
                <td>${request.places}</td>
                <td>${request.roomClass}</td>
                <td>${request.durationHours}</td>
                <td>${request.requestStatus}</td>
                <td>${request.user.id}</td>
            </tr>
    </table>
    <br>
    <form action="${pageContext.request.contextPath}/roomSelect" method="post">
        <input type="hidden" name="requestId" value="${request.id}"/>
        <input type="hidden" name="places" value="${request.places}"/>
        <input type="hidden" name="roomClass" value="${request.roomClass}"/>
        <input type="hidden" name="action" value="processing"/>
        <button type="submit">Показать подходящие комнаты</button>
    </form>
    <br>
    <a href="/">Главная</a>
</div>
</body>
</html>