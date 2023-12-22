<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">


<div class="frame">
    <ul class="nav">
        <li class="host_main_link">
            <a href="">내시설보기</a>
        </li>
        <li class="host_main_link">
            <a href="">내예약현황</a>
        </li>

        <li class="host_main_link">
            <a href="">시설이용내역</a>
        </li>

        <li class="host_main_link">
            <a href="">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>

<div class="frame">
    <div class="row host_managementPage">
        <div class="col-md-9  box">
            <div class="d-flex pe-3 my-3">
                <div class="userInfo_title">내 시설</div>
            </div>
            <div>
                <div class="matching_box">
                    <div class="league_matching_table_title">
                        시설목록
                    </div>
                    <div class="league_matchin  g_table_sub_title">
                        <div class="league_matching_title">시설명</div>
                        <div class="league_matching_title">전화번호</div>
                        <div class="league_matching_title">주소</div>
                        <div class="league_matching_title">제한인원</div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>

                    <!--내 매칭 등록 해놓은 현황(매칭상태가 대기중인거)을 리스트로 뿌릴꺼임.-->
                    <c:forEach var="spaces" items="${spacesList}">

                        <div class="league_matching_table_content">
                            <div class="league_matching_content_team_name"><img src="/img/${spaces.spacePic}">
                                <div>${spaces.spaceName}</div>
                            </div>
                            <div class="league_matching_content-date">${spaces.spacePhoneNumber}</div>
                            <div class="league_matching_content-date">${spaces.spaceLocation}</div>
                            <div class="league_matching_content"> ${spaces.capacity}</div>

                            <div class="spoace_detail_button">
                                <button class="matching_button host_btn_style"
                                        type="button"><a href="/space/space-update/${spaces.id}"
                                                         style="color: white">수정하기</a>
                                </button>
                                <button class="matching_button host_btn_style_red" type="button" id="deleteButton"
                                        data-space-id="${spaces.id}">
                                    삭제하기
                                </button>
                            </div>
                        </div>
                    </c:forEach>


                </div>
                <div class="league_matching_button">

                </div>
                <div class="modal" id="myModal_two">
                    <div class="modal-dialog">
                        <div class="modal_test modal-content">

                            <!-- Modal Header -->
                            <div class="userReservation_modal_header">
                                <h2>총 전적</h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body mt-2">
                                <div class="modal_body">
                                    <div>
                                        <div class="matching_my_score_title">
                                            <div class="spoace_detail_button">
                                                <button class="matching_button league_matching_btn_style"
                                                        type="button"><a href="/space/space-update/{id}"
                                                                         style="color: white">수정하기</a>
                                                </button>
                                                <button class="matching_button league_matching_btn_style_red"
                                                        type="button">
                                                    <a href="#" style="color: white">삭제하기</a>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="matching_my_score_box"></div>


                                    <div class="league_matching_table_sub_title">
                                        <div class="league_matching_title">팀명</div>
                                        <div class="league_matching_title">경기일</div>
                                        <div class="league_matching_title">경기장</div>
                                        <div class="league_matching_title">경기결과</div>
                                        <div class="league_matching_title">상태</div>
                                    </div>
                                    <!--내 매칭 등록 해놓은 현황(매칭상태가 대기중인거)을 리스트로 뿌릴꺼임.-->
                                    <div class="league_matching_table_content">
                                        <div class="league_matching_content_team_name"><img src="/images/psg.jpg">
                                            <div>FC 세환</div>
                                        </div>
                                        <div class="league_matching_content-date">2023-06-01 18:00</div>
                                        <div class="league_matching_content-date"> 부산 준타스 풋볼 아레나</div>
                                        <div class="league_matching_content"> 0 : 0 (무)</div>
                                        <div class="league_matching_content">경기 종료</div>
                                    </div>
                                    <div class="league_matching_table_content">
                                        <div class="league_matching_content_team_name"><img src="/images/psg.jpg">
                                            <div>FC 세환</div>
                                        </div>
                                        <div class="league_matching_content-date">2023-06-01 18:00</div>
                                        <div class="league_matching_content-date"> 부산 준타스 풋볼 아레나</div>
                                        <div class="league_matching_content"> 0 : 0 (무)</div>
                                        <div class="league_matching_content">경기 종료</div>
                                    </div>
                                    <div class="league_matching_table_content">
                                        <div class="league_matching_content_team_name"><img src="/images/psg.jpg">
                                            <div>FC 세환</div>
                                        </div>
                                        <div class="league_matching_content-date">2023-06-01 18:00</div>
                                        <div class="league_matching_content-date"> 부산 준타스 풋볼 아레나</div>
                                        <div class="league_matching_content"> 0 : 0 (무)</div>
                                        <div class="league_matching_content">경기 종료</div>
                                    </div>
                                    <div class="mt-5 d-flex justify-content-center">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="#"><</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $("#deleteButton").on("click", function () {
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