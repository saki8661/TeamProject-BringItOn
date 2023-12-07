<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="col-md-9 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">팀 관리</div>
                </div>
                <hr/>
                <form action="#">
                    <div>
                        <div class="userInfo_main">
                            <div class="userTeam_image">
                                <img src="/images/psg.jpg">
                                <div>
                                    <button type="button">
                                        이미지 변경
                                    </button>
                                </div>
                            </div>
                            <div class="userTeam_teamname">파리생제르망</div>
                        </div>
                    </div>
                    <hr>
                    <div class="userTeam_main_contents">
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                위치
                            </div>
                            <div>
                                부산진구
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                인원
                            </div>
                            <div>
                                6명
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                종목
                            </div>
                            <div>
                                풋살
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                소개
                            </div>
                            <div>
                                부산 진구 풋살 친목 팀입니다. <br> 즐겜 위주로 하고 있습니다.
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_button">
                            <button type="submit"> 수정하기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>