<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Регистрация</title>
</head>

<body>
<div>
  <%--@elvariable id="userForm" type="com.laptev.entity.User"--%>
  <form:form method="POST" modelAttribute="userForm">
    <h2>Регистрация</h2>
    <div>
      <form:input type="text" path="username" placeholder="Username"
                  autofocus="true"></form:input>
      <form:errors path="username"></form:errors>
        ${usernameError}
    </div>
    <div>
      <form:input type="email" path="email" placeholder="Email"></form:input>
      <form:errors path="email"></form:errors>
        ${emailError}
    </div>
    <div>
      <form:input type="text" path="name" placeholder="Name"></form:input>
    </div>
    <div>
      <form:input type="text" path="surname" placeholder="Surname"></form:input>
    </div>
    <div>
      <form:input type="phoneNumber" path="phoneNumber" placeholder="Phone number"></form:input>
      <form:errors path="phoneNumber"></form:errors>
        ${phoneNumberError}
    </div>
    <div>
      <form:input type="password" path="password" placeholder="Password"></form:input>
    </div>
    <div>
      <form:input type="password" path="passwordConfirm"
                  placeholder="Confirm your password"></form:input>
      <form:errors path="password"></form:errors>
        ${passwordError}
    </div>
    <button type="submit">Зарегистрироваться</button>
  </form:form>
  <a href="/">Главная</a>
</div>
</body>
</html>