<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Создание заявки</title>
</head>

<body>
<div>
    <%--@elvariable id="requestForm" type="com.laptev.entity.Request"--%>
    <form:form method="POST" modelAttribute="requestForm">
        <h2>Создание заявки</h2>
        <div>
            <form:input type="text" path="places" placeholder="Num of places"
                        autofocus="true"></form:input>
            <form:errors path="places"></form:errors>
                ${placesError}
        </div>
        <div>
            <form:input type="text" path="roomClass" placeholder="Room Class"></form:input>
            <form:errors path="roomClass"></form:errors>
                ${roomClassError}
        </div>
        <div>
            <form:input type="text" path="durationHours" placeholder="Duration Hours"></form:input>
            <form:errors path="durationHours"></form:errors>
                ${durationHoursError}
        </div>

        <button type="submit">Создать заявку</button>
    </form:form>
    <a href="/">Главная</a>
</div>
</body>
</html>