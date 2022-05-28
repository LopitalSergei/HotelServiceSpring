<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
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
            padding: 10px 18px;
            background-color: #f44336;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
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
    <title>Вход в аккаунт</title>
</head>

<body>

<h2>Войдите в свой аккаунт</h2>

<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<form method="POST" action="/login">
    <div class="container">
        <%--@declare id="username"--%><%--@declare id="password"--%>
        <label for="username"><b>Username</b></label>
        <label>
            <input name="username" type="text" placeholder="Username"
                   autofocus="true"/>
        </label>

        <label for="password"><b>Password</b></label>
        <label>
            <input name="password" type="password" placeholder="Password"/>
        </label>
        <button type="submit">Вход</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
        <button onclick="location.href='http://localhost:8080/';" type="button" class="cancelbtn">Отмена</button>
        <span class="psw">Забыли <a href="/">пароль?</a></span>
    </div>
</form>
</body>
</html>
