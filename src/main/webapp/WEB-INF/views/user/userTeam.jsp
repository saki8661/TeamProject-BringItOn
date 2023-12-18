<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">팀 관리</div>
                </div>
                <hr/>
                <form action="#">
                    <div>
                        <div class="userInfo_main">
                            <div class="userTeam_image">
                                <img src="/images/${teamInfo.teamPicUrl}">
                                <div>
                                    <button type="button">
                                        이미지 변경
                                    </button>
                                </div>
                            </div>
                            <div class="userTeam_teamname">${teamInfo.teamName}</div>
                        </div>
                    </div>
                    <hr>
                    <div class="userTeam_main_contents">
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                위치
                            </div>
                            <div>
                                ${teamInfo.regionName}
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                인원
                            </div>
                            <div>
                                ${teamInfo.teamCapacity}
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                종목
                            </div>
                            <div>
                                ${teamInfo.sportName}
                            </div>
                        </div>
                        <hr>
                        <div class="userTeam_main_content">
                            <div class="userTeam_main_content_title">
                                소개
                            </div>
                            <div>
                                ${teamInfo.teamIntroduce}
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