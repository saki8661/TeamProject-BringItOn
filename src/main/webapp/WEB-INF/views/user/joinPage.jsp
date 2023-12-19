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


    <form action="/join" method="post">
        <div style="padding-left: 200px; padding-right: 200px;">
            <div class="join_user_id">
                <input type="text" class="form-control" id="username" placeholder="아이디" name="username" maxlength="20"
                       required>
                <div class="joinPage_box"></div>
                <button type="button" name="dbCheckId" class="join_address_button" id="userCheck">
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
                <input type="text" class="form-control" id="nickName" placeholder="닉네임" name="nickName"
                       maxlength="8"
                       required>
            </div>
            <div class="join_email mb-3">
                <input type="text" class="form-control" id="email" placeholder="이메일을 입력해주세요" name="email"
                       maxlength="30" required>
                <div class="joinPage_box"></div>
                <button type="button" class="bring_number_btn" id="bringNumberBtn">인증요청
                </button>
            </div>
            <div id="joinEamil">
                <div class="join_email mb-3">
                    <input type="text" class="form-control" id="verifyNumber" placeholder="인증번호을 입력해주세요"
                           maxlength="30" name="verifyNumber">
                    <div class="joinPage_box"></div>
                    <button type="button" class="join_address_button" id="joinAddressButton">번호인증</button>
                </div>
            </div>


            <div class="mb-3">
                <input type="text" class="form-control" id="userPhoneNumber" placeholder="전화번호" name="userPhoneNumber"
                       maxlength="30" required>

            </div>
            <div class="join_address_container mb-3">
                <input type="text" class="form-control" id="userAddress" placeholder="주소" name="userAddress"
                       onclick="findAddr()" required>
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
                    <div class="valid-feedback">유저로 로그인 합니다.</div>
                    <div class="invalid-feedback"></div>
                </div>
            </div>
        </div>

        <div class="join_button_con">
            <button type="submit" class="join_button" id="submitBtn">회원가입</button>
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

    window.onload = function () {
        let joinEamil = document.getElementById("joinEamil");
        let eamilcheck = false;
        let usercheck = false;
        let form = document.querySelector('form');

        form.addEventListener('submit', function (e) {
            e.preventDefault(); // 기존의 폼 서브밋 동작을 막음

            // 두 상태 모두 true일 때 서버로 데이터를 전송
            if (usercheck !== true) {
                alert("ID 중복체크 해주세요.");
            } else if (!eamilcheck) {
                alert("이메일 인증 해주세요.");
            } else if (!checkAddress()) {
                alert("주소를 입력해주세요.");
            } else {
                alert('회원가입 완료 로그인해주세요');
                form.submit(); // 폼을 서브밋
            }
        });

        function checkAddress() {
            let addressValue = document.getElementById("userAddress").value;
            return addressValue.trim() !== ''; // 주소가 비어있지 않으면 true 반환
        }


        $(document).ready(function () {
            $('#bringNumberBtn').on('click', function () {
                let emailValue = $('#email').val();
                console.log(emailValue);

                // 값이 비어 있는지 확인
                if (emailValue.trim() === '') {
                    alert("이메일을 입력해주세요.");
                    return; // 값이 비어있으면 중복 체크를 진행하지 않고 종료
                }
                let emailRegex = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;

                if (!emailRegex.test(emailValue)) {
                    alert("올바른 이메일 형식이 아닙니다.");
                    return;
                }
                alert("이메일 확인 중입니다. 잠시만 기다려주세요.");

                $.ajax({
                    type: 'POST',
                    url: '/mailSend',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        "email": $('#email').val()
                    }),
                    success: function (result) {
                        console.log(result)
                        if (result) {
                            alert("인증 번호가 발송되었습니다. 메일을 확인해주세요.");
                            joinEamil.style.display = "block";
                        } else {
                            alert("인증번호 발송 실패");
                        }
                    },
                    error: function () {
                        alert("사용중인 이메일 입니다.");
                    }
                });    //end ajax
            });    //end on
        });

        $(document).ready(function () {
            $('#joinAddressButton').on('click', function () {
                $.ajax({
                    type: 'POST',
                    url: '/mailCheck',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        "verifyNumber": $('#verifyNumber').val()
                    }),
                    success: function (result) {
                        console.log(result)
                        if (result) {
                            alert("인증이 완료되었습니다.");
                            joinEamil.style.display = "none";
                            eamilcheck = true;
                        } else {
                            alert("인증번호가 일치하지 않습니다.");
                        }
                    },
                    error: function () {
                        alert("인증번호 발송 실패");
                    }
                });    //end ajax
            });    //end on
        });


        $(document).ready(function () {
            $('#userCheck').on('click', function () {
                let usernameValue = $('#username').val();

                // 값이 비어 있는지 확인
                if (usernameValue.trim() === '') {
                    alert("아이디를 입력해주세요.");
                    return; // 값이 비어있으면 중복 체크를 진행하지 않고 종료
                }
                $.ajax({
                    type: 'POST',
                    url: '/check',
                    data: {
                        "username": $('#username').val()
                    },
                    success: function (data) {
                        if (data === 1) {
                            alert("사용 가능한 아이디입니다.");
                            usercheck = true;
                        } else if (data === 0) {
                            alert("유저 아이디가 중복되었습니다.");
                        }
                    }
                });    //end ajax
            });    //end on
        });
    }
</script>

</body>
</html>

