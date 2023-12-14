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
    <div><img src="./images/logo.png" class="user_logo"></div>


    <form action="/join" method="post">
        <div style="padding-left: 200px; padding-right: 200px;">
            <div class="join_user_id">
                <input type="text" class="form-control" id="username" placeholder="아이디" name="username" maxlength="20"
                       required>
                <div class="joinPage_box"></div>
                <button type="button" name="dbCheckId" class="join_check_button" id="userCheck">
                    중복확인
                </button>
            </div>
            <div class="valid-feedback">사용가능한 아이디 입니다.</div>
            <div class="mb-3">
                <input type="password" class="form-control" id="password" placeholder="비밀번호" name="password"
                       maxlength="30"
                       required>
                <div class="valid-feedback">사용가능한 비밀번호 입니다.</div>

            </div>
            <div class="mb-3">

                <input type="text" class="form-control" id="userEmail" placeholder="이메일" name="userEmail"
                       maxlength="30"
                       pattern="[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}" required>
                <div class="valid-feedback">사용가능한 이메일 입니다.</div>


            </div>
            <div class="mb-3">
                <input type="text" class="form-control" id="userPhoneNumber" placeholder="전화번호" name="userPhoneNumber"
                       oninput="oninput(this)"
                       maxlength="30" required>

            </div>
            <div class="join_address_container mb-3">
                <input type="text" class="form-control" id="userAddress" placeholder="주소" name="userAddress" required
                       disabled>
                <div class="joinPage_box"></div>
                <button type="button" class="join_address_button" id="addressSearch" onclick="findAddr()">주소
                    검색
                </button>
            </div>


            <div class="join_check">
                <div class="join_form_company">
                    <input class="form-check-input" type="radio" name="userDivision" value="호스트" id="companyCheck"
                           required>
                    <label class="form-check-label" for="companyCheck">호스트로 가입</label>
                    <div class="valid-feedback">호스트로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
                <div class="join_form_personal">
                    <input class="form-check-input" type="radio" name="userDivision" value="게스트" id="personalCheck"
                           required>
                    <label class="form-check-label" for="personalCheck">유저로 가입</label>
                    <div class="valid-feedback">유저으로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
            </div>
        </div>

        <div class="join_button_con">
            <button type="submit" class="join_button">회원가입</button>
        </div>
        <div class="loginPage_box"></div>
        <a href="/kakao-login">
            로그인 페이지
        </a>
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
                document.getElementById("userAddress").value = addr;
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

        var radioGroups = document.querySelectorAll('input[type="radio"][name="isAdmin"]');

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

    $(document).ready(function () {
        $('#userCheck').on('click', function () {
            console.log('userCheck clicked');
            $.ajax({
                type: 'POST',
                url: '/check',
                data: {
                    "id": $('#id').val()
                },

                success: function (data) {
                    if ($.trim(data) == 0) {
                        alert("사용 가능한 아이디 입니다.");

                    } else {
                        alert("사용 불가능한 아이디 입니다.");
                    }
                }
            });    //end ajax
        });    //end on
    });

</script>

</body>
</html>

