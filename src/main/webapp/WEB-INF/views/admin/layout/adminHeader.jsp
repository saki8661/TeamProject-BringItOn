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

    <link rel="stylesheet" href="/css/admin/admin.css">
    <!--별점 아이콘 라이브러리-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!--하트 아이콘 라이브러리-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <%--iamport 결제 api--%>
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="></script>
    <script crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Summernote CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css">
    <!-- Summernote JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.js"></script>
</head>
<body>
<div class="admin_header">
    <div class="admin_header_logo">
        <a href="/admin/admin-main">
            <div class="admin_header_logo_text col-md-3">
                <img src="/images/logo.png">
                <span>Admin</span>
            </div>
        </a>
    </div>
    <div class="admin_header_content">
        <div class="admin_visitor_count">
            <ul>
                <li>오늘: 0</li>
                <li>어제: 0</li>
                <li>최대: 10</li>
                <li>전체: 100</li>
            </ul>
        </div>
        <div class="admin_header_links">
            <ul>
                <li><a href="">관리자 정보</a></li>
                <li><a href="/admin/admin-main">관리자 홈</a></li>
                <li><a href="/home">사이트</a></li>
                <li><a href="/user/logout">로그아웃</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="admin_tab_container">
    <ul class="admin_tab_category">
        <li><a href="#">회원 관리</a></li>
        <li><a href="#">시설 관리</a></li>
<%--        <li><a href="#">상품 관리</a></li>--%>
<%--        <li><a href="#">주문 관리</a></li>--%>
        <li><a href="#">공지 관리</a></li>
    </ul>
</div>
<div class="admin_tab_content">
    <ul class="admin_tab_items">
        <li>
            <%@ include file="../adminUser/adminUser.jsp" %>
        </li>
        <li>
            <%@ include file="../adminSpace/adminSpace.jsp" %>
        </li>
        <li>
            <%@ include file="../adminProduct/adminProduct.jsp" %>
        </li>
        <li>
            <%@ include file="../adminOrder/adminOrder.jsp" %>
        </li>
        <li>
            <%@ include file="../adminCustomer/adminCustomer.jsp" %>
        </li>
    </ul>
</div>


