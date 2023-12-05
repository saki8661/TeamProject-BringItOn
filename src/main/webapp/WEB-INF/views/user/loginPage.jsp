<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>SignUp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link
            href="/css/styles.css" rel="stylesheet">
</head>
<body>


<div class="user_container">
    <div><img src="./images/logo.png" class="user_logo"></div>
    <h1 class="join-us-text">Login</h1>


    <form action="/action_page.php" class="was-validated">
        <div style="padding-left: 200px; padding-right: 200px;">
            <div class="mb-3">
                <input type="text" class="form-control" id="uname" placeholder="아이디" name="uname" required>
                <div class="valid-feedback">사용가능한 아이디 입니다.</div>

            </div>
            <div class="mb-3">
                <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd" required>
                <div class="valid-feedback">사용가능한 아이디 입니다.</div>

            </div>
        </div>


        <button type="submit" class="signup-button">로그인</button>
        <div class="search-sign-in"><a href="">
            아이디/비밀번호 찾기
        </a>
        </div>


    </form>
</div>


</body>
</html>

