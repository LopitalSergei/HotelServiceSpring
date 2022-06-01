<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Мои заказы</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
    <style>
        button {
            background-color: #4CAF50;
            color: white;
            padding: 6px 12px;
            margin: 2px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
        }

        th, td {
            padding: 16px;
            border: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        .center{
            text-align: center;
        }

        .left{
            text-align: left;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #F9AD81;
        }

        .header-section {
            background: #353535;
            padding-left: 30px;
            padding-right: 30px;
            padding-top: 30px;
            padding-bottom: 24px;
            position: absolute;
            width: 100%;
            left: 0;
            top: 0;
            z-index: 999;
        }
    </style>
</head>

<body>
<!-- Header Section Begin -->
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="/"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
</header>
<!-- Header End -->

<br>
<br>
<br>
<br>
<br>
<br>

<h2>Мои заказы</h2>
<br>
<div>
    <table>
        <thead>
        <th>ID</th>
        <th>Количество мест</th>
        <th>Время пребывания (в часах)</th>
        <th>Статус заказа</th>
        <th>Номер комнаты</th>

        </thead>
        <c:forEach items="${myOrders}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.places}</td>
                <td>${order.durationHours}</td>
                <td>${order.orderStatus}</td>
                <td>${order.room.roomNumber}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <button onclick="location.href='http://localhost:8080/';" type="button" class="cancelbtn">На главную</button>
</div>
</body>
</html>