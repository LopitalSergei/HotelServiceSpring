<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Регистрация</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            /*background-color: black;*/
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for the submit button */
        .registerbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        .registerbtn:hover {
            opacity: 1;
        }

        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
            background-color: #f1f1f1;
            text-align: center;
        }
    </style>

    <meta charset="utf-8">

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

<div class="container">
    <%--@elvariable id="userForm" type="com.laptev.entity.User"--%>
    <form:form method="POST" modelAttribute="userForm">
    <h2>Регистрация</h2>
    <p>Пожалуйста, заполните все поля в этой форме, чтобы создать аккаунт.</p>
    <hr>

    <div>
        <label for="Username"><b>Имя пользователя</b></label>
        <form:input type="text" path="username" placeholder="Username"
                    autofocus="true"></form:input>
        <form:errors path="username"></form:errors>
            ${usernameError}
    </div>
    <div>
        <label for="email"><b>Электронная почта</b></label>
        <form:input type="text" path="email" placeholder="Email"></form:input>
        <form:errors path="email"></form:errors>
            ${emailError}
    </div>
    <div>
        <label for="name"><b>Имя</b></label>
        <form:input type="text" path="name" placeholder="Name"></form:input>
        <form:errors path="name"></form:errors>
            ${nameError}
    </div>
    <div>
        <label for="surname"><b>Фамилия</b></label>
        <form:input type="text" path="surname" placeholder="Surname"></form:input>
        <form:errors path="surname"></form:errors>
            ${surnameError}
    </div>
    <div>
        <label for="phoneNumber"><b>Номер телефона</b></label>
        <form:input type="text" path="phoneNumber" placeholder="Phone number"></form:input>
        <form:errors path="phoneNumber"></form:errors>
            ${phoneNumberError}
    </div>
    <div>
        <label for="password"><b>Пароль</b></label>
        <form:input type="password" path="password" placeholder="Password"></form:input>
    </div>
    <div>
        <label><b>Подтверждение пароля</b></label>
        <form:input type="password" path="passwordConfirm"
                    placeholder="Confirm your password"></form:input>
        <form:errors path="password"></form:errors>
            ${passwordError}
    </div>
    <button type="submit" class="registerbtn">Зарегестрироваться</button>
    </form:form>
    <div class="container signin">
        <p>У вас уже есть аккаунт? <a href="/login">Войти</a>.</p>
    </div>

</body>
</html>



