<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <link rel="stylesheet" href="/css/styles.css">
    <script src="script.js" defer></script>
</head>
<style>


</style>

<body>
<div class="mt-3 frame">
    <nav class="navbar navbar-expand-sm nav_bar">
        <div class="container-fluid">
            <a class="nav_logo" href="/">
                <img src="/images/logo.png">
            </a>
            <form class="d-flex">
                <div class="search_form">
                    <input class="form-control" type="text" placeholder="뭐를 검색해보세요.">
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
                    <a href="#">My페이지</a>
                    <a href="/user-update">회원정보 수정</a>
                    <a href="#">로그아웃</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<hr class="nav_hr"/>