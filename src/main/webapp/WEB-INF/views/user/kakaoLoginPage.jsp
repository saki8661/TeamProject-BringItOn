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
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>


<div class="user_container">
    <div><img src="./images/logo.png" class="user_logo"></div>

    <h3 class="join_us_text">고객님 환영합니다! 기다리고 있었습니다.</h3>

    <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=34c1c00d8709bac5b82f2488a3a86d65&redirect_uri=http://localhost:80/kakao-callback">
        <div><img src="./images/kakao_login_button.png" class="kakao_login_button">
        </div>
    </a>


    <div class="common_button">
        <a href="http://localhost/login">
            <button type="submit" class="kakao_login_common_button">로그인 (호스트는 일반로그인 필수)</button>
        </a>
    </div>

    <div class="kakao_login_or_container">
        <hr class="kakao_login_or_line">
        <p class="kakao_login_or_text">or</p>
        <hr class="kakao_login_or_line">
    </div>

    <div class="kakao_login_txt">
        <div class="kakao_login_acoount_q">계정이 없으신가요?</div>
        <a href="http://localhost/join" class="sign_up_go">회원가입하기</a>
    </div>

</div>

</body>
</html>
