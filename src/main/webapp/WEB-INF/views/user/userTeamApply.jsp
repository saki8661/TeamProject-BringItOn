<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="userTeamApply_container">
                    <div class="d-flex pe-3 my-3">
                        <div class="userInfo_title">신청 내역</div>
                    </div>
                    <hr/>
                    <div class="userTeamApply_item">
                        <c:choose>
                            <c:when test="${empty applyUser}">
                                <div class="userInfo_item_empty">
                                    <div>
                                        <div>신청 내역이 없습니다.</div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="applyUser" items="${applyUser}" varStatus="loopStatus">
                                    <div class="userTeamApply_items">
                                        <div>${loopStatus.index+1}.</div>
                                        <img src="/images/${applyUser.userPicUrl}">
                                        <div>${applyUser.nickName}</div>
                                        <div>/</div>
                                        <div>${applyUser.gender}</div>
                                        <div>/</div>
                                        <div>${applyUser.age}</div>
                                        <div>/</div>
                                        <div>${applyUser.userEmail}</div>
                                        <div>/</div>
                                        <div>${applyUser.userAddress}</div>
                                        <form action="/team-apply-approve/${applyUser.applyId}" method="POST">
                                            <input type="hidden" value="${applyUser.applyTeamId}" name="teamId">
                                            <input type="hidden" value="${applyUser.personalUserId}" name="userId">
                                            <button type="submit" class="btn btn-primary">
                                                수락
                                            </button>
                                        </form>
                                        <button type="button" class="btn btn-danger">
                                            <a href="/team-apply-refuse/${applyUser.applyId}" style="color: white">거절</a>
                                        </button>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>