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

<div class="common_frame">
    <div class="user_container">
        <div class="d-flex" style="flex-direction: column; align-items: center">
            <div>
                <a href="/home">
                    <img src="./images/logo.png" class="user_logo">
                </a>
            </div>

            <form action="/login" class="was-validated" method="post">
                <div>
                    <div class="mb-3" style="width: 500px">
                        <input type="text" class="form-control" id="uname" placeholder="아이디" name="username" required
                               value="cos">
                    </div>
                    <div class="mb-3" style="width: 500px">
                        <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="password" required
                               value="password">
                    </div>
                </div>


                <button type="submit" class="login_button">로그인</button>
                <div class="search_box">
                    <div class="login_search_sign_in"><a href="/id-find">
                        아이디 찾기 /
                    </a>
                    </div>

                    <div style="width: 5px"></div>
                    <div class="login_search_sign_in"><a href="/password-find">
                        비밀번호 찾기
                    </a>
                    </div>
                </div>

                <div class="loginPage_box"></div>
                <a href="/join">
                    회원가입하기
                </a>
            </form>
        </div>
    </div>
</div>


</body>
</html>

