<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">


<div class="frame">
    <ul class="nav">
        <li class="host_main_link">
            <a href="/host/management-main/${sessionUser.id}">내시설관리</a>
        </li>
        <li class="host_main_link">
            <a href="/host/reservation-status/${sessionUser.id}">예약현황</a>
        </li>

        <li class="host_main_link">
            <a href="">후기관리</a>
        </li>

        <li class="host_main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>

<div class="frame">
    <div class="row host_managementPage">
        <div class="col-md-9 box hostPage_box">
            <div class="d-flex pe-3 my-3">
                <div class="userInfo_title">예약 현황</div>
            </div>
            <div>
                <div class="matching_box">
                    <div class="league_matching_table_title">
                        예약 목록
                    </div>
                    <div class="league_matchin  g_table_sub_title">
                        <div class="hostPage_status_title">시설명</div>
                        <div class="hostPage_status_title">예약자명</div>
                        <div class="hostPage_status_title">인원수</div>
                        <div class="hostPage_status_title">예약자 전화번호</div>
                        <div class="hostPage_status_title">예약시간</div>
                        <div class="hostPage_status_title">예약상태</div>
                        <div class="hostPage_status_title">전하는말</div>

                    </div>

                    <!--내 매칭 등록 해놓은 현황(매칭상태가 대기중인거)을 리스트로 뿌릴꺼임.-->
                    <c:choose>
                        <c:when test="${empty spaceReservationList}">
                            <div class="hostPage_table_content">
                                <p style="color: black"><a href="/host/place-registration">시설등록을 해주세요</a></p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="reservationList" items="${spaceReservationList}">
                                <div class="hostPage_table_content">
                                    <div class="host_content_team_name">
                                        <div>${reservationList.spaceName}</div>
                                    </div>
                                    <div class="host_content-date">${reservationList.nickName}</div>
                                    <div class="host_content-date">${reservationList.personnel}</div>
                                    <div class="host_content_data">${reservationList.userPhoneNumber}</div>
                                    <div class="host_content_data">
                                        <div>
                                                ${reservationList.reservationDate}
                                        </div>
                                        <div>
                                                ${reservationList.startTime} ~ ${reservationList.endTime}
                                        </div>
                                    </div>
                                    <div class="host_content_data">
                                            ${reservationList.status}

                                    </div>
                                    <div class="host_content_data">${reservationList.toHost}</div>

                                        <%--                                    <div class="host_button_two">--%>
                                        <%--                                        <button class="matching_button host_btn_style_two" type="button">--%>
                                        <%--                                            예약목록보기--%>
                                        <%--                                        </button>--%>
                                        <%--                                    </div>--%>
                                </div>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".deleteButton").on("click", function () {
            // 클릭 시 DELETE 요청 보내기
            var spaceId = $(this).data("space-id");

            $.ajax({
                url: "/space/space-delete/" + spaceId,
                type: "DELETE",
                success: function (response) {
                    // 성공 시 페이지 새로고침 또는 필요한 동작 수행
                    window.location.reload();
                },
                error: function (error) {
                    console.error("삭제 요청 실패:", error);
                }
            });
        });
    });
</script>
<%@ include file="../layout/footer.jsp" %>