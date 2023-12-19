<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">


<div class="frame">
    <ul class="nav">
        <li class="main_link nav-item dropdown">
            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                나의 공간보기
            </a>
            <ul class="dropdown-menu sub_navbar_style">
                <li><a class="dropdown-item" href="#">실내 스포츠</a></li>
                <li><a class="dropdown-item" href="#">야외 스포츠</a></li>
            </ul>
        </li>
        <li class="main_link">
            <a href="/matching-main">매칭</a>
        </li>

        <li class="main_link">
            <a href="/league-main">리그</a>
        </li>

        <li class="main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-4">
            <h2>About Me</h2>
            <h5>Photo of me:</h5>
            <div class="userTeam_image">
                <img src="/images/coin.jpg">
                <div>
                    <button type="button">
                        이미지 변경
                    </button>
                </div>
            </div>

            <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
            <h3 class="mt-4">Some Links</h3>
            <p>Lorem ipsum dolor sit ame.</p>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <hr class="d-sm-none">
        </div>
        <div class="col-sm-8">
            <h2>TITLE HEADING</h2>
            <h5>Title description, Dec 7, 2020</h5>
            <div class="fakeimg">Fake Image</div>
            <p>Some text..</p>
            <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>

            <h2 class="mt-5">TITLE HEADING</h2>
            <h5>Title description, Sep 2, 2020</h5>
            <div class="fakeimg">Fake Image</div>
            <p>Some text..</p>
            <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
        </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>