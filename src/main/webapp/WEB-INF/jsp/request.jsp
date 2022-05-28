<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
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
            background-color: #4169e1;
            float: right;
        }
    </style>
    <title>Создание заявки</title>
</head>

<body>
<h2>Создание заявки</h2>


<div class="container">

    <%--@elvariable id="requestForm" type="com.laptev.entity.Request"--%>
    <form:form method="POST" modelAttribute="requestForm">
        <%--@declare id="numofplaces"--%><label for="numOfPlaces">Number of places</label>
        <form:input type="text" path="places" placeholder="Num of places"
                    autofocus="true"></form:input>
        <form:errors path="places"></form:errors>
        ${placesError}

        <label for="roomClass">Room class</label>
        <select id="roomClass" name="roomClass">
            <option value="FIRST_CLASS">First class</option>
            <option value="SECOND_CLASS">Second class</option>
            <option value="THIRD_CLASS">Third class</option>
        </select>

        <label for="durationHours">Duration hours</label>
        <form:input type="text" path="durationHours" placeholder="Duration Hours"></form:input>
        <form:errors path="durationHours"></form:errors>
        ${durationHoursError}
        <input type="submit" value="Submit">
        <button onclick="location.href='http://localhost:8080/';" type="button" class="cancelbtn">На главную</button>
    </form:form>

</div>
</body>
</html>