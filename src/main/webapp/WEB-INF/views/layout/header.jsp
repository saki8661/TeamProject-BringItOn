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
    <script src="script.js" defer></script>
    <!--별점 아이콘 라이브러리-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!--하트 아이콘 라이브러리-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
                <a class="nav_add" href="javascript:void(0)">시설등록</a>
                <div class="dropdown">
                    <button class="dropbtn">
                        <img src="/images/info.png">
                    </button>
                    <div class="dropdown-content">
                        <c:choose>
                            <c:when test="${empty sessionUser}">
                                <a href="/kakao-login">로그인</a>
                                <a href="/join">회원가입</a>
                            </c:when>
                            <c:otherwise>
                                <a href="/league-matching-page">My페이지</a>
                                <a href="/user-check-password/${sessionUser.id}">회원정보 수정</a>
                                <a href="/logout">로그아웃</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
<%--<hr class="nav_hr"/>--%>