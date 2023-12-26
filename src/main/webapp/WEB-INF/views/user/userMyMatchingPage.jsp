<!-- user/userMyMatchingPage.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">매칭 신청 목록</div>
                </div>
                <div class="text-center">
                    <table class="table">
                        <thead class="table-success">
                        <tr>
                            <th>예약일</th>
                            <th>시작시간</th>
                            <th>종료시간</th>
                            <th>신청자명</th>
                            <th>매칭상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="matching" items="${myMatchings}">
                            <tr>
                                <td>${matching.reservationDate}</td>
                                <td>${matching.startTime}</td>
                                <td>${matching.endTime}</td>
                                <td>${matching.nickName}</td>
                                <td>${matching.matchingStatus}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <br>
                <hr>

                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">나의 지원 목록</div>
                </div>
                <div class="text-center">
                    <table class="table">
                        <thead class="table-success">
                        <tr>
                            <th>예약자명</th>
                            <th>예약일</th>
                            <th>시작시간</th>
                            <th>종료시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="applyMatching" items="${myApplyMatchings}">
                            <tr>
                                <td>${applyMatching.nickName}</td>
                                <td>${applyMatching.reservationDate}</td>
                                <td>${applyMatching.startTime}</td>
                                <td>${applyMatching.endTime}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
