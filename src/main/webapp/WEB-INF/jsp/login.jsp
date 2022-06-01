<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Вход в аккаунт</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 15px 50px;
            background-color: #F9AD81;
            font-size: 17px;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
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

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
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



<h2>Войдите в свой аккаунт</h2>

<br>


<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<form method="POST" action="/login">
    <div class="container">
        <%--@declare id="username"--%><%--@declare id="password"--%>
        <label for="username"><b>Имя пользователя</b></label>
        <label>
            <input name="username" type="text" placeholder="Username"
                   autofocus="true"/>
        </label>

        <label for="password"><b>Пароль</b></label>
        <label>
            <input name="password" type="password" placeholder="Password"/>
        </label>
        <button type="submit">Вход</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
        <button onclick="window.location.href = 'http://localhost:8080/registration';" type="button" class="cancelbtn">Регистрация</button>
        <span class="psw">Забыли <a href="/">пароль?</a></span>
    </div>
</form>
</body>
</html>
