<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="col-md-9 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">리그 / 매칭 현황</div>
                </div>
                <hr class="myPage-head-line">
                <div class="menu_nav_area">
                    <nav class="league_matching_menu_nav">
                        <ul id="menu__list" class="league_matching_menu_list">
                            <li class="league_matching_menu_menu"><a href="#">축구</a></li>
                            <li class="league_matching_menu_menu"><a href="#">농구</a></li>
                            <li class="league_matching_menu_menu"><a href="#">풋살</a></li>
                        </ul>
                    </nav>
                </div>

                <div>
                    <div class="matching_box">
                        <div class="league_matching_table_title">
                            매칭 신청
                        </div>
                        <div class="league_matching_table_sub_title">
                            <div></div>
                            <div class="league_matching_title">시설명</div>
                            <div class="league_matching_title">신청일</div>
                            <div class="league_matching_title">경기일</div>
                            <div class="league_matching_title">지역</div>
                            <div class="league_matching_title">상태</div>
                        </div>
                        <!--내 매칭 등록 해놓은 현황(매칭상태가 대기중인거)을 리스트로 뿌릴꺼임.-->
                        <div class="league_matching_table_content">
                            <input class="league_matching_checkbox league_matching_check_box_icon" type="checkbox"
                                   name="league_matching_checkbox"
                                   value="1">
                            <div class="league_matching_content">부산 준타스 풋살 아레나 화이트</div>
                            <div class="league_matching_content-date">2023-11-30 12:00</div>
                            <div class="league_matching_content-date">2023-12-04 09:00</div>
                            <div class="league_matching_content">부산 진구</div>
                            <div class="league_matching_content">매칭중</div>
                        </div>
                    </div>
                    <div class="league_matching_button">
                        <button class="matching_button league_matching_btn_style" type="button" data-bs-toggle="modal"
                                data-bs-target="#myModal">매칭취소
                        </button>
                    </div>
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="league_matching_modal modal-content">

                                <!-- Modal Header -->
                                <div class="userReservation_modal_header">
                                    <h2>매칭 상세</h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="modal_body">
                                        <div class="userPayment_body_desc">
                                            <img src="images/stadium.png" alt="">
                                            <div class="userPayment_text">
                                                <div>
                                                    부산 준타스 풋볼 아레나
                                                </div>
                                                <div>
                                                    부산 진구
                                                </div>
                                                <div>
                                                    시작: 2023-12-07 13시
                                                </div>
                                                <div>
                                                    종료: 2023-12-07 15시
                                                </div>
                                            </div>
                                        </div>
                                        <div class="userPayment_table">
                                            <Table>
                                                <div class="userPayment_detail_style">
                                                    <tr class="userPayment_table_header">
                                                        <th>팀명</th>
                                                        <td>FC 대욱</td>
                                                        <th>진행상태</th>
                                                        <td>매칭중</td>
                                                    </tr>
                                                    <tr class="userPayment_table_header">
                                                        <th>인원수</th>
                                                        <td>6명</td>
                                                        <th>가격</th>
                                                        <td>120,000원</td>
                                                    </tr>
                                                </div>
                                            </Table>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="userPayment_modal_footer">
                                    <div>
                                        <div style="height: 10px"></div>
                                        <a href="#">
                                            <button>매칭 취소</button>
                                        </a>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="matching_box">
                        <div class="league_matching_table_title">
                            전적 보기
                        </div>
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
                    </div>
                    <div class="league_matching_button">
                        <button class="matching_button league_matching_btn_style" type="button" data-bs-toggle="modal"
                                data-bs-target="#myModal_two">상세보기
                        </button>
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
                                            <div class="card-contain">
                                                <div class="matching_my_score">
                                                    <div>승
                                                        <div class="card">
                                                            <div class="card-body d-flex justify-content-end card-input">
                                                                0
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>무
                                                        <div class="card">
                                                            <div class="card-body d-flex justify-content-end card-input">
                                                                3
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>패
                                                        <div class="card">
                                                            <div class="card-body d-flex justify-content-end card-input">
                                                                0
                                                            </div>
                                                        </div>
                                                    </div>
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
</div>
<%@ include file="../layout/footer.jsp" %>