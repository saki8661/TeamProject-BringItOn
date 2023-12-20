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
            <input type="text" class="form-control" id="email" placeholder="이메일을 입력해주세요" name="email"
                   maxlength="30" required>
        </div>

        <div class="join_button_con">
            <button type="submit" class="join_button" id="submitBtn" onclick="findUsername()">비밀번호 찾기</button>
        </div>
        <div class="loginPage_box"></div>
        <a href="/id-find">
            아이디 찾기
        </a>
    </div>
</div>
<script>
    function findUsername() {
        alert("이메일을 확인중입니다. 잠시만 기다려주세요.");
        $.ajax({
            type: 'POST',
            url: '/password-find',
            data: {
                email: $('#email').val()
            },
            success: function (result) {
                if (result) {
                    alert(result + ' 이메일에서 비밀번호 확인하세요.');
                } else {
                    alert('해당 이메일을 찾지 못했습니다.');
                }
            },
            error: function () {
                alert('해당 이메일을 찾지 못했습니다.');
            }
        });
    }

    function showNotification(message) {
        alert(message); // 간단한 알림 창 사용
    }
</script>
</body>
</html>