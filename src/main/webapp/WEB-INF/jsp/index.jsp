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
    <link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
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
                    <li class="active"><a href="/">Главная</a></li>
                    <li><a href="/about-us">О нас</a></li>
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
<section class="hero-area set-bg" data-setbg="${contextPath}/resources/img/hero-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="hero-text">
                    <h1>Роскошный отдых</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Area Section End -->

<!-- Intro Text Section Begin -->
<section class="intro-section spad">
    <div class="container">
        <div class="row intro-text">
            <div class="col-lg-6">
                <div class="intro-left">
                    <div class="section-title">
                        <span>Незабываемый отдых</span>
                        <h2>Отличный отдых в прекрасном отеле</h2>
                    </div>
                    <p>Вас ждут великолепные виды на кристально чистые воды Адриатического моря.
                        Помимо потрясающих мест на побережье, элегантных интерьеров и безупречного обслуживания,
                        вы можете рассчитывать на стильный выбор баров и ресторанов.</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="intro-right">
                    <p>Наши современные конференц-центры впечатляют и отличаются гибкостью.
                        Роскошный дизайн интерьера, обилие естественного солнечного света и
                        живописные панорамы моря делают их столь же популярным выбором для проведения индивидуальных
                        мероприятий
                        и для деловых встреч.</p>

                    <p>Оставьте свои заботы позади и проживите незабываемые воспоминания,
                        наслаждаясь уединением вашего собственного просторного номера,
                        в каждом из которых открывается вид на океан, чтобы успокоить и вдохновить вас.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Intro Text Section End -->

<!-- Facilities Section Begin -->
<section class="facilities-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="facilities-item set-bg" data-setbg="${contextPath}/resources/img/faci-1.jpg">
                    <div class="fi-title">
                        <h2>Роскошный номер Люкс</h2>
                        <p>От $399</p>
                    </div>
                    <div class="fi-features">
                        <div class="fi-info">
                            <i class="flaticon-019-television"></i>
                            <p>Smart TV</p>
                        </div>
                        <div class="fi-info">
                            <i class="flaticon-029-wifi"></i>
                            <p>High Wi-fii</p>
                        </div>
                        <div class="fi-info">
                            <i class="flaticon-003-air-conditioner"></i>
                            <p>AC</p>
                        </div>
                        <div class="fi-info">
                            <i class="flaticon-036-parking"></i>
                            <p>Parking</p>
                        </div>
                        <div class="fi-info">
                            <i class="flaticon-007-swimming-pool"></i>
                            <p>Pool</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="facilities-item set-bg fi-right" data-setbg="${contextPath}/resources/img/faci-2.jpg">
                    <div class="fi-title">
                        <h2>Открытый бассейн</h2>
                        <p>Для всех наших гостей</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Facilities Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial-section spad">
    <div class="container">
        <div class="row">
            <div class="section-title">
                <h2>Отзывы посетителей</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="testimonial-item">
                    <div class="ti-time">
                        02 / 02 / 2022
                    </div>
                    <h4>Нам очень понравилось</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>Выражаем благодарность персоналу гостиницы.
                        Хочется отметить, что все очень доброжелательные и вежливые, поэтому создается атмосфера
                        хорошего отдыха и отличного настроения.
                        Мы уже дважды здесь побывали, надеемся приехать еще!Огромное Спасибо всем!</p>
                    <div class="ti-author">
                        <div class="author-pic">
                            <img src="${contextPath}/resources/img/author-1.png" alt="">
                        </div>
                        <div class="author-text">
                            <h6>Лаптев Сергей <span>Новополоцк</span></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="testimonial-item">
                    <div class="ti-time">
                        02 / 02 / 2022
                    </div>
                    <h4>Я вернусь снова</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>Отличная гостиница. Все чисто, уютно, сделано со вкусом.
                        Приятный дизайн, новая мебель, белоснежные пушистые полотенца. Персонал вежливый и дружелюбный.
                        К уборке нареканий не было.
                        Была приятно удивлена бесплатным вай-фаем с хорошей скоростью и наличием парковки.</p>
                    <div class="ti-author">
                        <div class="author-pic">
                            <img src="${contextPath}/resources/img/author-2.png" alt="">
                        </div>
                        <div class="author-text">
                            <h6>Партасевич Анастасия<span>Полоцк</span></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Video Section Begin -->
<div class="video-section">
    <div class="video-bg set-bg" data-setbg="${contextPath}/resources/img/video-bg.jpg"></div>
    <div class="container">
        <div class="video-text set-bg" data-setbg="${contextPath}/resources/img/video-inside-bg.jpg">
            <a href="https://www.youtube.com/watch?v=j56YlCXuPFU" class="pop-up"><i class="fa fa-play"></i></a>
        </div>
    </div>
</div>
<!-- Video Section End -->

<!-- Home Page About Section Begin -->
<section class="homepage-about spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-text">
                    <div class="section-title">
                        <h2>“Клиенты любят наши
                            удобства”</h2>
                    </div>
                    <a href="/request" class="prmr-btn">Сделайте предварительный заказ</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/home-about-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/home-about-2.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/home-about-3.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="about-img">
                            <img src="${contextPath}/resources/img/home-about-4.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Home Page About Section End -->

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
                        <input type="email" placeholder="Ваш Email Здесь" path="email">
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
                        <li class="active"><a href="/">Главная</a></li>
                        <li><a href="/about-us">О нас</a></li>
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