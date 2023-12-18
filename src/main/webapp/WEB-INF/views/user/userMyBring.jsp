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
                <div class="myBring_link">
                    <a href="/user/mypage/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/external-febrian-hidayat-flat-febrian-hidayat/25/external-information-ui-essential-febrian-hidayat-flat-febrian-hidayat.png" alt="external-information-ui-essential-febrian-hidayat-flat-febrian-hidayat"/>
                            <span>나의 정보</span>
                        </div>
                    </a>
                    <a href="/user/team/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/emoji/48/soccer-ball-emoji.png" alt="soccer-ball-emoji"/>
                            <span>나의 팀</span>
                        </div>
                    </a>
                    <a href="">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/emoji/48/page-facing-up.png" alt="page-facing-up"/>
                            <span>팀 신청 내역</span>
                        </div>
                    </a>
                    <a href="/user/bookmark/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/fluency/25/bookmark.png" alt="bookmark"/>
                            <span>북마크</span>
                        </div>
                    </a>
                    <a href="/user/reservation/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/emoji/48/calendar-emoji.png" alt="calendar-emoji"/>
                            <span>예약 내역</span>
                        </div>
                    </a>
                    <a href="/user/payment/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/fluency/25/cheap-2--v1.png" alt="cheap-2--v1"/>
                            <span>결제 내역</span>
                        </div>
                    </a>
                    <a href="/user/review/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/bubbles/50/review.png" alt="review"/>
                            <span>후기 관리</span>
                        </div>
                    </a>
                    <a href="/user/update/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/fluency/25/gender-neutral-user--v1.png" alt="gender-neutral-user--v1"/>
                            <span>
                                개인정보 수정
                            </span>
                        </div>
                    </a>
                    <a href="/user/setting/${sessionUser.id}">
                        <div>
                            <img width="25" height="25" src="https://img.icons8.com/emoji/48/gear-emoji.png" alt="gear-emoji"/>
                            <span> 설정</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>