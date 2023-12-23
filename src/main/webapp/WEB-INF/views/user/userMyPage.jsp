<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">나의 정보</div>
                </div>
                <hr/>
                <div class="myPage_test1">
                    <div class="myPage_test_1">
                        <div class="userMyPage_title">user</div>
                        <div>nickname</div>
                        <div>email</div>
                        <div>주소</div>
                        <div>division</div>
                    </div>
                    <div class="myPage_test_2">
                        <div class="userMyPage_title">나의 팀</div>
                        <div>팀이름</div>
                        <div>팀 소개</div>
                        <div>팀레벨</div>
                        <div>팀지역</div>
                        <div>팀종목</div>
                    </div>
                    <div class="myPage_test_3">
                        <div class="userMyPage_title">예약 내역</div>
                        <div>예약 날짜</div>
                        <div>시작 시간</div>
                        <div>종료 시간</div>
                        <div>구장 이름</div>
                        <div>예약 상태</div>
                    </div>
                    <div class="myPage_test_4">
                        <div class="userMyPage_title">매칭 요청 리스트</div>
                        <br>
                        <div class="userMyPage_option">
                            <div>나의 매칭 리스트와 현황을 볼 수 있습니다 확인해볼까요?</div>
                            <form action="/matching-myMatch" method="get">
                                <input type="hidden" name="id" value="${sessionUser.id}">
                                <button class="myMatching_button myMatching_btn_style" type="submit">
                                    상세보기
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<%@ include file="../layout/footer.jsp" %>