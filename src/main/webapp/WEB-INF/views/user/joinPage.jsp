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


    <form action="/action_page.php" class="was-validated">
        <div style="padding-left: 200px; padding-right: 200px;">
            <div class="mb-3">
                <input type="text" class="form-control" id="uname" placeholder="아이디" name="uname" required>
                <div class="valid-feedback">사용가능한 아이디 입니다.</div>

            </div>
            <div class="mb-3">
                <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd" required>
                <div class="valid-feedback">사용가능한 비밀번호 입니다.</div>

            </div>
            <div class="mb-3">
                <input type="text" class="form-control" id="email" placeholder="이메일" name="email" required>
                <div class="valid-feedback">사용가능한 이메일 입니다.</div>

            </div>
            <div class="mb-3">
                <input type="text" class="form-control" id="phoneNumber" placeholder="전화번호" name="phoneNumber" required>

            </div>
            <div class="join_address_container mb-3">

                <input type="text" class="form-control" id="address" placeholder="주소" name="address" required>


                <button type="button" class="join_address_button" id="addressSearch" onclick="findAddr()">주소 검색</button>

            </div>


            <div class="join_check">
                <div class="join_form_company">
                    <input class="form-check-input" type="checkbox" id="companyCheck" required>
                    <label class="form-check-label" for="companyCheck">기업 회원</label>

                    <div class="valid-feedback">기업으로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
                <div class="join_form_personal">
                    <input class="form-check-input" type="checkbox" id="personalCheck" required>
                    <label class="form-check-label" for="personalCheck">개인 회원</label>
                    <div class="valid-feedback">회원으로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
            </div>
            <div class="join_button_con">
                <button type="submit" class="join_button">회원가입</button>
            </div>

        </div>

    </form>
</div>

<script>
    //finfaddr()함수
    function findAddr() {
        new daum.Postcode({
            oncomplete: function (data) {
                var addr = '';
                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }

                //부모창의 주소칸에 받아온 주소를 넣는다.
                document.getElementById("address").value = addr;
            }


        }).open();
    }
</script>

</body>
</html>

