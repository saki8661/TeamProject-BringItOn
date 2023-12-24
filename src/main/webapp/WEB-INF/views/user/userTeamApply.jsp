<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="userTeamApply_container" style="height:700px; width: 100%">
                    <div class="d-flex pe-3 my-3">
                        <div class="userInfo_title">신청 내역</div>
                    </div>
                    <div class="userTeamApply_item">
                        <c:choose>
                            <c:when test="${empty applyUser}">
                                <div class="d-flex"style="height: 700px; justify-content: center;
    align-items: center;">
                                <div class="userTeamAPPly_empty_box" style="text-align: center">
                                    <div>신청 내역이 없습니다.</div>
                                </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="applyUser" items="${applyUser}" varStatus="loopStatus">
                                    <div class="d-flex"
                                         style="align-items: center; justify-content: space-around; margin: 10px; border-bottom: 1px solid #19B357; padding:10px">
                                        <div>${loopStatus.index+1}.</div>
                                        <div>
                                            <div>
                                                <img src="/images/${applyUser.userPicUrl}" style="border-radius: 15px; width: 30px; height: 30px">
                                            </div>
                                        </div>
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