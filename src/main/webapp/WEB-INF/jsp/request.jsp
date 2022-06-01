<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Создание заявки</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
    <style>
        button {
            background-color: #f44336;
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

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #F9AD81;
            float: right;
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
<br>

<h2>Создание заявки</h2>

<br>


<div class="container">

    <%--@elvariable id="requestForm" type="com.laptev.entity.Request"--%>
    <form:form method="POST" modelAttribute="requestForm">
        <%--@declare id="numofplaces"--%><label for="numOfPlaces">Количество мест в комнате</label>
        <form:input type="text" path="places" placeholder="Num of places"
                    autofocus="true"></form:input>
        <form:errors path="places"></form:errors>
        ${placesError}

        <label for="roomClass">Класс комнаты</label>
        <select id="roomClass" name="roomClass">
            <option value="FIRST_CLASS">Первый Класс</option>
            <option value="SECOND_CLASS">Второй Класс</option>
            <option value="THIRD_CLASS">Третий Класс</option>
            <option value="LUX_CLASS">Класс Люкс</option>
        </select>

        <label for="durationHours">Продолжительность пребывания (в часах)</label>
        <form:input type="text" path="durationHours" placeholder="Duration Hours"></form:input>
        <form:errors path="durationHours"></form:errors>
        ${durationHoursError}
        <input type="submit" value="Подтвердить">
        <button onclick="location.href='http://localhost:8080/';" type="button" class="cancelbtn">На главную</button>
    </form:form>

</div>
</body>
</html>