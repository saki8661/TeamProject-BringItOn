<!-- user/userMyMatchingPage.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">findMyMatchingList</div>
                </div>
                <table class="table">
                    <thead class="table-success">
                    <tr>
                        <th>reservationDate</th>
                        <th>startTime</th>
                        <th>endTime</th>
                        <th>nickName</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="matching" items="${myMatchings}">
                        <tr>
                            <td>${matching.reservationDate}</td>
                            <td>${matching.startTime}</td>
                            <td>${matching.endTime}</td>
                            <td>${matching.nickName}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <br>
                <hr>

                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">findMyApplyMatchingList</div>
                </div>
                <table class="table">
                    <thead class="table-success">
                    <tr>
                        <th>nickName</th>
                        <th>reservationDate</th>
                        <th>startTime</th>
                        <th>endTime</th>
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

<%@ include file="../layout/footer.jsp" %>
