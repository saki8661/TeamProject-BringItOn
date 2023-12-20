<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>SignUp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link
            href="/css/styles.css" rel="stylesheet">
</head>
<body>


<div class="user_container">
    <div><a href="/home"><img src="./images/logo.png" class="user_logo"></a></div>

    <div class="frame">
        <div class="find_box mb-3">
            <input type="text" class="form-control" id="email" placeholder="이메일을 입력해주세요" name="email" maxlength="30">
        </div>

        <div class="find_box mb-3">
            <input type="text" class="form-control" id="userPhoneNumber" placeholder="전화번호 00000000000"
                   name="userPhoneNumber" maxlength="30">
        </div>

        <div class="join_button_con">
            <button class="join_button" onclick="findUsername()">아이디 찾기</button>
        </div>
        <div class="loginPage_box"></div>
        <a href="/password-find">비밀번호 찾기</a>
    </div>
</div>

<script>
    function findUsername() {
        $.ajax({
            type: 'POST',
            url: '/id-find',
            data: {
                email: $('#email').val(),
                userPhoneNumber: $('#userPhoneNumber').val()
            },
            success: function (result) {
                if (result) {
                    showNotification('아이디: ' + result);
                } else {
                    showNotification('해당 아이디를 조회하지 못했습니다.');
                }
            },
            error: function () {
                showNotification('해당 아이디를 조회하지 못했습니다.');
            }
        });
    }

    function showNotification(message) {
        alert(message); // 간단한 알림 창 사용
    }
</script>
</body>
</html>