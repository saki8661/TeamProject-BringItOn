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


    <form action="/join" class="was-validated" method="post" name="joinForm">
        <div style="padding-left: 200px; padding-right: 200px;">
            <div class="join_user_id">
                <input type="text" class="form-control" id="uname" placeholder="아이디" name="uname" maxlength="20"
                       required>

                <button type="button" name="dbCheckId" class="join_check_button">
                    중복확인
                </button>
            </div>
            <div class="valid-feedback" onclick="return check()">사용가능한 아이디 입니다.</div>
            <div class="mb-3">
                <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd" maxlength="30"
                       required>
                <div class="valid-feedback">사용가능한 비밀번호 입니다.</div>

            </div>
            <div class="mb-3">

                <input type="text" class="form-control" id="email" placeholder="이메일" name="email"
                       maxlength="30"
                       pattern="[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}" required>
                <div class="valid-feedback">사용가능한 이메일 입니다.</div>


            </div>
            <div class="mb-3">
                <input type="text" class="form-control" id="phoneNumber" placeholder="전화번호" name="phoneNumber"
                       oninput="oninput(this)"
                       maxlength="30" required>

            </div>
            <div class="join_address_container mb-3">

                <input type="text" class="form-control" id="address" placeholder="주소" name="address" required>


                <button type="button" class="join_address_button" id="addressSearch" onclick="findAddr()">주소 검색</button>

            </div>


            <div class="join_check">
                <div class="join_form_company">
                    <input class="form-check-input" type="radio" name="memberType" value="true" id="companyCheck"
                           required>
                    <label class="form-check-label" for="companyCheck">기업 회원</label>
                    <div class="valid-feedback">기업으로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
                <div class="join_form_personal">
                    <input class="form-check-input" type="radio" name="memberType" value="false" id="personalCheck"
                           required>
                    <label class="form-check-label" for="personalCheck">개인 회원</label>
                    <div class="valid-feedback">회원으로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
            </div>
        </div>
    </form>
    <div class="join_button_con">
        <a href="http://localhost/kakako-login">
            <button type="submit" class="join_button">회원가입</button>
        </a>
    </div>
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

        function check() {
            if (joinForm.uname.value.length == 0) {
                alert("아이디가 누락됐습니다.");
                joinForm.id.focus();
                return false;
            }
        }

        function oninputPhone(target) {
            target.value = target.value
                .replace(/[^0-9]/g, '')
                .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
        }

        var radioGroups = document.querySelectorAll('input[type="radio"][name="memberType"]');

        radioGroups.forEach(function (radioGroup) {
            radioGroup.addEventListener('change', function () {
                radioGroups.forEach(function (radio) {
                    if (radio !== radioGroup) {
                        radio.checked = false;
                    }
                });
            });
        });
    }
</script>

</body>
</html>

