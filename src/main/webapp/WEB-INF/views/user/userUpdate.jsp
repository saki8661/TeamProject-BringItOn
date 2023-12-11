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
                <form action="#">
                    <div>
                        <div class="userInfo_main">
                            <form action="">
                                <div class="userUpdate_image">
                                    <div>
                                        <button type="button" onclick="">
                                            <img src="/images/default_profile.jpg">
                                        </button>
                                    </div>
                                    <div>
                                        <button type="submit" class="userUpdate_image_button">
                                            이미지 변경
                                        </button>
                                    </div>
                                </div>
                            </form>
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
                                   placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리">
                        </div>
                        <hr>
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">새비밀번호확인</div>
                            <input type="password" class="userUpdate_pwd"
                                   placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리">
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


<%@ include file="../layout/footer.jsp" %>