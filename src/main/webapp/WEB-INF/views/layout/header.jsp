<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>BringItOn</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <%--    swiper--%>
    <!-- FullCalendar Stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.css"/>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Moment.js (FullCalendar requires this) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <!-- FullCalendar Script -->
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.js"></script>

    <link rel="stylesheet" href="/css/styles.css">
    <!--별점 아이콘 라이브러리-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!--하트 아이콘 라이브러리-->
    <%--iamport 결제 api--%>
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="></script>
    <script crossorigin="anonymous"></script>
    <!-- Summernote CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css">
    <!-- Summernote JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.js"></script>

</head>


<body>

<div class="wrap">
    <div class="frame">
        <nav class="navbar navbar-expand-sm nav_bar">
            <div class="container-fluid">
                <a class="nav_logo" href="/">
                    <img src="/images/logo.png">
                </a>
                <form class="d-flex">
                    <div class="search_form">
                        <input class="form-control" type="text" placeholder="무엇이든 검색해보세요.">
                        <button type="submit" class="search_button">
                            <img src="/images/search.png">
                        </button>
                    </div>
                </form>
                <a class="nav_add" href="/place-registration">시설등록</a>
                <div class="header_auth">
                    <c:choose>
                        <c:when test="${empty sessionUser}">
                            <div class="header_login_button">
                                <a href="/kakao-login"><img src="/images/info.png"></a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${sessionUser.userDivision eq 'admin'}">
                                    <!-- admin인 경우 다른 URL을 사용 -->
                                    <button class="header_myPage_button">
                                        <a href="/user/admin/${sessionUser.id}"><img src="/images/info.png"></a>
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button class="header_myPage_button">
                                        <a href="/user/mybring/${sessionUser.id}"><img src="/images/info.png"></a>
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </nav>
    </div>
</div>
<%--<hr class="nav_hr"/>--%>