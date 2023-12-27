<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">나의 Bring</div>
                </div>
                <hr/>

                <c:choose>
                <c:when test="${sessionUser.userDivision == 'general'}">
                    <div class="myBring_link">
                        <a href="/matching-myMatch/${sessionUser.id}">
                            <div>
                                <img width="25" height="25"
                                     src="https://img.icons8.com/external-febrian-hidayat-flat-febrian-hidayat/25/external-information-ui-essential-febrian-hidayat-flat-febrian-hidayat.png"
                                     alt="external-information-ui-essential-febrian-hidayat-flat-febrian-hidayat"/>
                                <span>나의 매칭</span>
                            </div>
                        </a>
                        <a href="/user/team/${sessionUser.id}">
                            <div>
                                <img width="25" height="25"
                                     src="https://img.icons8.com/emoji/48/soccer-ball-emoji.png"
                                     alt="soccer-ball-emoji"/>
                                <span>나의 팀</span>
                            </div>
                        </a>
                        <c:choose>
                            <c:when test="${sessionUser.isCaptain eq true}">
                                <a href="/user/team-apply/${sessionUser.id}">
                                    <div>
                                        <img width="25" height="25"
                                             src="https://img.icons8.com/emoji/48/page-facing-up.png"
                                             alt="page-facing-up"/>
                                        <span>팀 신청 내역</span>
                                    </div>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <!-- Captain is true, do nothing or show other content -->
                            </c:otherwise>
                        </c:choose>
                        <a href="/user/bookmark/${sessionUser.id}">
                            <div>
                                <img width="25" height="25" src="https://img.icons8.com/fluency/25/bookmark.png"
                                     alt="bookmark"/>
                                <span>북마크</span>
                            </div>
                        </a>
                        <a href="/user/reservation/${sessionUser.id}">
                            <div>
                                <img width="25" height="25" src="https://img.icons8.com/emoji/48/calendar-emoji.png"
                                     alt="calendar-emoji"/>
                                <span>예약 내역</span>
                            </div>
                        </a>
                        <a href="/user/payment/${sessionUser.id}">
                            <div>
                                <img width="25" height="25" src="https://img.icons8.com/fluency/25/cheap-2--v1.png"
                                     alt="cheap-2--v1"/>
                                <span>결제 내역</span>
                            </div>
                        </a>
                        <a href="/user/review/${sessionUser.id}">
                            <div>
                                <img width="25" height="25" src="https://img.icons8.com/bubbles/50/review.png"
                                     alt="review"/>
                                <span>후기 관리</span>
                            </div>
                        </a>
                        <a href="/user/check-password/${sessionUser.id}">
                            <div>
                                <img width="25" height="25"
                                     src="https://img.icons8.com/fluency/25/gender-neutral-user--v1.png"
                                     alt="gender-neutral-user--v1"/>
                                <span>
                                개인정보 수정
                            </span>
                            </div>
                        </a>
                        <a href="/user/logout">
                            <div>
                                <img width="25" height="25" src="https://img.icons8.com/emoji/48/gear-emoji.png"
                                     alt="gear-emoji"/>
                                <span>로그아웃</span>
                            </div>
                        </a>
                    </div>
                </c:when>
                <c:otherwise>
                <div class="myBring_link">
                    <a href="/user/review/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/bubbles/50/review.png"
                                 alt="review"/>
                            <span>후기 관리</span>
                        </div>
                    </a>
                    <a href="/user/check-password/${sessionUser.id}">
                        <div>
                            <img width="25" height="25"
                                 src="https://img.icons8.com/fluency/25/gender-neutral-user--v1.png"
                                 alt="gender-neutral-user--v1"/>
                            <span>
                                개인정보 수정
                            </span>
                        </div>
                    </a>
                    <a href="/user/logout">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/emoji/48/gear-emoji.png"
                                 alt="gear-emoji"/>
                            <span>로그아웃</span>
                        </div>
                    </a>
                </div>
            </div>
            </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
</div>


<%@ include file="../layout/footer.jsp" %>