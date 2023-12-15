<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="col-md-9 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">개인정보 수정</div>
                </div>
                <hr/>
                <form action="/user-update" method="post" enctype="multipart/form-data">
                    <div>
                        <div class="userInfo_main">
                            <div class="userUpdate_image">
                                <div>
                                    <img id="preview" class="circle_avatar" src="/img/${user.userPicUrl}">
                                </div>
                                <div>
                                    <input type="file" class="form-control" placeholder="Enter pic"
                                           onchange="changePic(event)" name="pic">
                                </div>
                            </div>
                            <div class="userUpdate_username">${user.nickName}</div>
                        </div>
                    </div>

                    <hr>
                    <div class="userUpdate_main_contents">
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">
                                휴대전화
                            </div>
                            <div>
                                ${user.userPhoneNumber}
                            </div>
                        </div>
                        <hr>
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">
                                이메일
                            </div>
                            <div>
                                ${user.userEmail}
                            </div>
                        </div>
                        <hr>
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">새비밀번호</div>
                            <input type="password" class="userUpdate_pwd"
                                   placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" name="password">
                        </div>
                        <hr>
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">새비밀번호확인</div>
                            <input type="password" class="userUpdate_pwd"
                                   placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" name="newPassword">
                        </div>
                        <hr>
                        <div class="userUpdate_button">
                            <button type="submit"> 수정하기</button>
                        </div>
                    </div>
                </form>
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
</script>


<%@ include file="../layout/footer.jsp" %>