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
                <div class="userInfo_title">내 시설</div>
            </div>
            <div>
                <div class="matching_box">
                    <div class="league_matching_table_title">
                        시설목록
                    </div>
                    <div class="league_matchin  g_table_sub_title">
                        <div class="hostPage_title">시설명</div>
                        <div class="hostPage_title">전화번호</div>
                        <div class="hostPage_title">주소</div>
                        <div class="hostPage_title">제한인원</div>
                        <div class="hostPage_title"></div>

                    </div>

                    <!--내 매칭 등록 해놓은 현황(매칭상태가 대기중인거)을 리스트로 뿌릴꺼임.-->
                    <c:choose>
                        <c:when test="${empty spacesList}">
                            <div class="hostPage_table_content">
                                <p style="color: black"><a href="/host/place-registration">시설등록을 해주세요</a></p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="spaces" items="${spacesList}">
                                <div class="hostPage_table_content">
                                    <div class="league_matching_content_team_name">
                                        <img src="/img/${spaces.spacePic}">
                                        <div>${spaces.spaceName}</div>
                                    </div>
                                    <div class="league_matching_content-date">${spaces.spacePhoneNumber}</div>
                                    <div class="league_matching_content-date">${spaces.spaceLocation}</div>
                                    <div class="league_matching_content">${spaces.capacity}</div>
                                    <div class="spoace_detail_button">
                                        <button class="matching_button host_btn_style" type="button">
                                            <a href="/space/space-update/${spaces.id}" style="color: white">수정하기</a>
                                        </button>
                                        <button class="matching_button host_btn_style_red deleteButton" type="button"
                                                data-space-id="${spaces.id}">
                                            삭제하기
                                        </button>
                                    </div>
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