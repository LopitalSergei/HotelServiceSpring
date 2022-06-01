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
                    <li class="active"><a href="/about-us">О нас</a></li>
                    <li><a href="/rms">Комнаты</a></li>
                    <li><a href="/services">Услуги</a></li>
                    <li><a href="/blog">Новости</a></li>
                    <li><a href="/contact">Контакты</a></li>
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

<!-- About Us Section Begin -->
<section class="about-us spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="about-left">
                    <div class="section-title">
                        <span>Незабываемый отдых</span>
                        <h2>Отличный отдых в<br />прекрасном отеле.</h2>
                    </div>
                    <p class="second-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                        Risus commodo viverra maecenas. Donec in sodales dui, a blandit nunc. Pellentesque id eros
                        venenatis, sollicitudin neque sodales, vehicula nibh. Nam massa odio, porttitor vitae
                        efficitur non, ultricies volutpat tellus.</p>
                    <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra.</p>
                    <a href="/request" class="primary-btn">Сделать предварительный заказ</a>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/about/about-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <div class="about-img second-img">
                            <img src="${contextPath}/resources/img/about/about-2.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5 col-md-5">
                        <div class="about-img third-img">
                            <img src="${contextPath}/resources/img/about/about-3.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/about/about-4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Us Section End -->

<!-- Milestone Counter Section Begin -->
<section class="milestone-counter spad set-bg" data-setbg="${contextPath}/resources/img/about/milestone-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="mc-item">
                    <div class="mc-num">
                        <span class="counter">25</span>
                    </div>
                    <div class="mc-text">
                        <h3>Номеров люкс</h3>
                        <p>От $399</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mc-item">
                    <div class="mc-num">
                        <span class="counter">35</span>
                        <strong>K</strong>
                    </div>
                    <div class="mc-text">
                        <h3>Клиентов</h3>
                        <p>Ежегодно</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mc-item">
                    <div class="mc-num">
                        <span class="counter">365</span>
                    </div>
                    <div class="mc-text">
                        <h3>Дней в году</h3>
                        <p>От $399</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Milestone Counter Section End -->

<!-- Award Section Begin -->
<section class="award-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Нашы награды</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2011</h5>
                    <h4>Лучший Отель в Европе</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2012</h5>
                    <h4>Лучшие Услуги</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2014</h5>
                    <h4>Лучший Спа Отель</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2016</h5>
                    <h4>Лучший Отель класса Люкс</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2017</h5>
                    <h4>2е Место @ Лучший Отель</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="award-item">
                    <img src="${contextPath}/resources/img/about/award-img.png" alt="">
                    <h5>2018</h5>
                    <h4>1е Место @ Лучший Отель</h4>
                    <span>Elite Hotel award</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Award Section End -->

<!-- Call To Action Begin -->
<section class="callto-section">
    <div class="container">
        <div class="callto-text">
            <h2>Забронируйте номер у нас прямо сейчас!</h2>
        </div>
        <a href="/request" class="primary-btn">Сделать заказ</a>
    </div>
</section>
<!-- Call To Action End  -->

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
                        <li class="active"><a href="/about-us">О нас</a></li>
                        <li><a href="/rms">Комнаты</a></li>
                        <li><a href="/services">Услуги</a></li>
                        <li><a href="/blog">Новости</a></li>
                        <li><a href="/contact">Контакты</a></li>
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