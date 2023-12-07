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
                            <div class="userUpdate_image">
                                <img src="/images/default_profile.jpg">
                                <div>
                                    <button type="button">
                                        이미지 변경
                                    </button>
                                </div>
                            </div>
                            <div class="userUpdate_username">김언약</div>
                        </div>
                    </div>
                    <hr>
                    <div class="userUpdate_main_contents">
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">
                                휴대전화
                            </div>
                            <div>
                                010-6295-4886
                            </div>
                        </div>
                        <hr>
                        <div class="userUpdate_main_content">
                            <div class="userUpdate_main_content_title">
                                이메일
                            </div>
                            <div>
                                0106un@naver.com
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