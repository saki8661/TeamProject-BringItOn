<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="userUpdate_frame">
            <div class="row">
                <div class="col-md-3">
                    <a class="nav-link title text-center fs-2" href="#"></a>
                    <div class="userUpdate_aside">
                        <div class="userUpdate_image">
                            <img src="/images/default_profile.jpg">
                        </div>
                        <div class="userUpdate_charge">
                            나의 캐시
                            <br>
                            99,999,999원
                            <button type="button">충전</button>
                        </div>
                        <hr>
                        <div class="userUpdate_link">
                            <a class="nav-link userUpdate_link_text" href="#">팀 관리</a>
                            <a class="nav-link userUpdate_link_text" href="#">북마크</a>
                            <a class="nav-link userUpdate_link_text" href="#">예약 내역</a>
                            <a class="nav-link userUpdate_link_text" href="#">결제 내역</a>
                            <a class="nav-link userUpdate_link_text" href="#">후기 관리</a>
                            <a class="nav-link userUpdate_link_text" style="font-size: 25px; color: black;" href="#">개인정보
                                수정</a>
                            <a class="nav-link userUpdate_link_text" href="#">리그/매칭 현황</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 box">
                    <div class="d-flex pe-3 my-3">
                        <div class="userUpdate_title">개인정보 수정</div>
                    </div>
                    <hr />
                    <form action="#">
                        <div>
                            <div class="userUpdate_main">
                                <div class="userUpdate_image">
                                    <img src="/images/default_profile.jpg">
                                    <div>
                                        <button type="button" class="userUpdate_image_update">
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
                                <div>
                                    휴대전화
                                </div>
                                <div>
                                    010-6295-4886
                                </div>
                            </div>
                            <hr>
                            <div class="userUpdate_main_content">
                                <div>
                                    이메일
                                </div>
                                <div>
                                    0106un@naver.com
                                </div>
                            </div>
                            <hr>
                            <div class="userUpdate_main_content">
                                <div>새비밀번호</div>
                                <input type="password" class="userUpdate_pwd"
                                       placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리">
                            </div>
                            <hr>
                            <div class="userUpdate_main_content">
                                <div>새비밀번호확인</div>
                                <input type="password" class="userUpdate_pwd"
                                       placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리">
                            </div>
                            <hr>
                            <div class="userUpdate_button_wrap">
                            <button type="submit" class="userUpdate_button"> 수정하기</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>