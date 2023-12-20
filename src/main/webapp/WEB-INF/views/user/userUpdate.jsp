<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">개인정보</div>
                </div>
                <hr/>
                <div>
                    <div class="userInfo_main">
                        <div class="userUpdate_image">
                            <div>
                                <c:choose>
                                    <c:when test="${user.kakaoLogin == true}">
                                        <!-- 카카오 로그인이고 패스워드가 없는 경우 -->
                                        <img id="kakao_preview" class="circle_avatar" src="${user.userPicUrl}">
                                    </c:when>
                                    <c:otherwise>
                                        <form action="/user/update-image" method="post" enctype="multipart/form-data">
                                            <!-- 카카오 로그인이고 패스워드가 있는 경우 -->
                                            <div class="userUpdate_image_box">
                                                <img id="preview" class="circle_avatar" src="/img/${user.userPicUrl}">
                                            </div>
                                            <!-- 파일 업로드 input은 패스워드가 없을 경우에만 표시 -->
                                            <div>
                                                <input type="file" class="form-control" placeholder="Enter pic"
                                                       onchange="changePic(event)" name="pic">
                                            </div>
                                            <div class="userUpdate_button">
                                                <button type="submit"> 이미지 변경</button>
                                            </div>
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="userUpdate_username">${user.nickName}</div>
                        </div>
                    </div>

                    <hr>
                    <div class="userUpdate_main_contents">

                        <c:choose>
                        <c:when test="${user.kakaoLogin == true}">
                            <div class="userUpdate_content">
                                <div class="userUpdate_content_two">
                                    <div class="userUpdate_main_content_title">
                                        휴대전화
                                    </div>
                                    <div>
                                            ${user.userPhoneNumber}
                                    </div>
                                </div>
                                <div class="userUpdate_content_two_two">
                                    <div class="userUpdate_main_content_title">
                                        성별
                                    </div>
                                    <div>
                                            ${user.gender}
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="userUpdate_content">
                                <div class="userUpdate_content_two">
                                    <div class="userUpdate_main_content_title">
                                        이메일
                                    </div>
                                    <div>
                                            ${user.userEmail}
                                    </div>
                                </div>
                                <div class="userUpdate_content_two_two">
                                    <div class="userUpdate_main_content_title">
                                        나이
                                    </div>
                                    <div>
                                            ${user.age}
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </c:when>
                        <c:otherwise>
                        <!-- 카카오 로그인이고 패스워드가 있는 경우 -->
                        <div class="userUpdate_content">
                            <div class="userUpdate_content_two">
                                <div class="userUpdate_main_content_title">
                                    휴대전화
                                </div>
                                <div>
                                        ${user.userPhoneNumber}
                                </div>
                            </div>
                            <div class="userUpdate_content_two_two">
                                <div class="userUpdate_main_content_title">
                                    성별
                                </div>
                                <div>
                                        ${user.gender}
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="userUpdate_content">
                            <div class="userUpdate_content_two">
                                <div class="userUpdate_main_content_title">
                                    이메일
                                </div>
                                <div>
                                        ${user.userEmail}
                                </div>
                            </div>
                            <div class="userUpdate_content_two_two">
                                <div class="userUpdate_main_content_title">
                                    나이
                                </div>
                                <div>
                                        ${user.age}
                                </div>
                            </div>
                        </div>

                        <hr>
                        <form id="passwordForm" action="/user/update-password" method="post">
                            <div class="userUpdate_main_content">
                                <div class="userUpdate_main_content_title">새 비밀번호</div>
                                <input type="password" class="userUpdate_pwd"
                                       placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" id="password1" required>
                            </div>
                            <hr>
                            <div class="userUpdate_password_box">
                                <div class="userUpdate_main_content">
                                    <div class="userUpdate_main_content_title">새 비밀번호 확인</div>
                                    <input type="password" class="userUpdate_pwd"
                                           placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" name="password" id="password2"
                                           required>
                                </div>
                                <div class="userUpdate_button">
                                    <button type="button" onclick="passwordCheck()">비밀번호 변경</button>
                                </div>
                            </div>
                            <hr>

                        </form>
                    </div>
                    </c:otherwise>
                    </c:choose>


                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function changePic(e1) {
        console.log(e1);
        let f = e1.target.files[0]; // 파일에 접근한다.
        console.log(f);

        // 버퍼를 만들자
        let reader = new FileReader(); // call back메서드 (직접 호출한 것이 아니라 이벤트 종료시 실행 되는 것)
        reader.onload = function (e2) { // 파일이 다 읽어지면 콜백됨
            console.log(1);
            console.log(e2);
            let previewEl = document.querySelector("#preview");
            previewEl.setAttribute("src", e2.target.result); // 하나씩 찍어봐야 함
        }
        reader.readAsDataURL(f); // 파일 읽기 onload()를 실행한다.
    }

    function passwordCheck() {
        var p1 = document.getElementById('password1').value;
        var p2 = document.getElementById('password2').value;
        if (p1 !== p2) {
            alert("비밀번호가 일치하지 않습니다");
        } else {
            document.getElementById('passwordForm').submit();
        }

    }
</script>


<%@ include file="../layout/footer.jsp" %>