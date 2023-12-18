<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="col-md-9 box">
                <div class="d-flex pe-3 my-3">
                    <%--                    <input type="hidden" th:name="userId" th:value="${sessionUser.id}"/>--%>
                    <div class="userInfo_title">비밀번호 확인</div>
                </div>
                <hr/>
                <div class="card-body">
                    <div class="check_pwd_text">회원님의 개인 정보를 소중하게 보호하고 있습니다. <br>
                        회원님의 동의 없이 회원정보를 제3자에게 제공하지 않습니다.
                    </div>
                    <div class="check_pwd_card_body">
                        <div class="check_pwd_text_start">
                            <div class="check_pwd_box">
                                <div class="input-group input-group-outline">
                                    <input type="password" id="password" name="password" class="form-control"
                                           placeholder="비밀번호를 입력해주세요">
                                </div>
                                <div class="joinPage_box"></div>
                                <div class="check_pwd_text-center">
                                    <button class="matching_button check_pwd_btn_style" id="checkPwd"> 회원 확인</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>


        <script>

            $('#checkPwd').click(function () {
                const checkPassword = $('#password').val();
                if (!checkPassword || checkPassword.trim() === "") {
                    alert("비밀번호를 입력하세요.");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: '/user/check-password',
                        data: {'checkPassword': checkPassword},
                        datatype: "text"
                    }).done(function (result) {
                        console.log(result);

                        if (result.success) {
                            console.log("비밀번호 일치");
                            alert("비밀번호 인증 성공")
                            window.location.href = "/user/update/" + result.userId;

                        } else {
                            console.log("비밀번호 틀림");
                            // 비밀번호가 일치하지 않으면
                            alert("비밀번호가 맞지 않습니다.");
                            window.location.reload();
                        }

                    }).fail(function (error) {
                        alert(JSON.stringify(error));
                    })
                }
            });
        </script>
<%@ include file="../layout/footer.jsp" %>