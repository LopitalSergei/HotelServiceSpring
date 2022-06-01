<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Hotel Template">
    <meta name="keywords" content="Hotel, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hotel | Diplom</title>

    <!-- Google Font -->
    <link
            href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
            rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="/"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
            </div>
            <div class="nav-right">
                <sec:authorize access="isAuthenticated()">
                    <nav class="main-menu mobile-menu">
                        <ul>
                            <li><h2 style="color: #F9AD81">${pageContext.request.userPrincipal.name}</h2>
                                <ul class="drop-menu">
                                    <sec:authorize access="hasRole('ADMIN')">
                                        <li><a href="/adminRequest">Обработка заявок</a></li>
                                        <li><a href="/allOrders">Все заказы</a></li>
                                        <li><a href="/admin">Все пользоваетли</a></li>
                                        <li><a href="/allRooms">Все комнаты</a></li>
                                    </sec:authorize>
                                    <li><a href="/request">Бронирование</a></li>
                                    <li><a href="/myRequests">Мои заявки</a></li>
                                    <li><a href="/myOrders">Мои заказы</a></li>
                                    <li><a href="/">Оставить отзыв</a></li>
                                    <li><a href="/logout">Выход</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <a href="/login" class="primary-btn">Войти в аккаунт</a>
                </sec:authorize>
            </div>
            <nav class="main-menu mobile-menu">
                <ul>
                    <li><a href="/">Главная</a></li>
                    <li><a href="/about-us">О нас</a></li>
                    <li><a href="/rms">Комнаты</a></li>
                    <li><a href="/services">Услуги</a></li>
                    <li><a href="/blog">Новости</a></li>
                    <li class="active"><a href="/contact">Контакты</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
</header>
<!-- Header End -->

<!-- Hero Area Section Begin -->
<div class="hero-area set-bg other-page" data-setbg="${contextPath}/resources/img/about_bg.jpg">
</div>
<!-- Hero Area Section End -->

<!-- Contact Section Begin -->
<section class="contact-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact-title">
                    <div class="section-title">
                        <span>Незабываемый отдых</span>
                        <h2>Есть вопросы? Задавайте их <br>по электронной почте</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <form action="#" class="contact-form">
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" placeholder="Ваше имя">
                        </div>
                        <div class="col-lg-6">
                            <input type="email" placeholder="Ваша электронная почта">
                        </div>
                        <div class="col-lg-12">
                            <input type="text" class="subject" placeholder="Тема вопроса">
                            <textarea placeholder="Описание"></textarea>
                            <button type="submit">Отправить письмо</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4">
                <div class="info-box">
                    <img src="${contextPath}/resources/img/contact-logo.png" alt="">
                    <ul>
                        <li>ул. Стрелецкая, 4, <br />211400, г. Полоцк</li>
                        <li>+375(25)523-99-12</li>
                        <li>sl260401@gmail.com</li>
                        <li>Ежедневно: 08:00-21:00</li>
                    </ul>
                    <div class="social-links">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

<!-- Map Section Begin -->
<div class="map">
    <div style="position:relative;overflow:hidden;"><a
            href="https://yandex.by/maps/org/korpus_pgu/197423583974/?utm_medium=mapframe&utm_source=maps"
            style="color:#eee;font-size:12px;position:absolute;top:0px;">Корпус ПГУ</a><a
            href="https://yandex.by/maps/10275/polotsk/category/university_college/184106140/?utm_medium=mapframe&utm_source=maps"
            style="color:#eee;font-size:12px;position:absolute;top:14px;">ВУЗ в Полоцке</a>
        <iframe src="https://yandex.by/map-widget/v1/-/CCUJmKH4WB" width="560" height="910" frameborder="1"
                allowfullscreen="true" style="position:relative;"></iframe>
    </div>
</div>
<!-- Map Section End -->

<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="footer-item">
                    <div class="footer-logo">
                        <a href="#"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                    <p>Чтобы получить дополнительную информацию звоните по номеру телефона,
                        или обращайтесь за помощью по электронной почте.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer-item">
                    <h5>Новостная рассылка</h5>
                    <div class="newslatter-form">
                        <input type="text" placeholder="Ваш Email Здесь">
                        <button type="submit">Подписаться</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer-item">
                    <h5>Контактная информация</h5>
                    <ul>
                        <li><img src="${contextPath}/resources/img/placeholder.png" alt="">ул. Стрелецкая, 4,<br/>
                            211400, г. Полоцк
                        </li>
                        <li><img src="${contextPath}/resources/img/phone.png" alt="">+375(25)523-99-12</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <ul>
                        <li><a href="/">Главная</a></li>
                        <li><a href="/about-us">О нас</a></li>
                        <li><a href="/rms">Комнаты</a></li>
                        <li><a href="/services">Услуги</a></li>
                        <li><a href="/blog">Новости</a></li>
                        <li class="active"><a href="/contact">Контакты</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/js/jquery.nice-select.min.js"></script>
<script src="${contextPath}/resources/js/jquery.slicknav.js"></script>
<script src="${contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>