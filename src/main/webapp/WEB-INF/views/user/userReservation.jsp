<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">예약 내역</div>
                </div>
                <hr/>
                <div class="userInfo_main">

                    <div class="userReservation_tabbox">
                        <div class="userReservation_tab">
                            <a class="nav-link userReservation_link" href="#">전체(1)</a>
                            <a class="nav-link userReservation_link" href="#">진행중(1)</a>
                            <a class="nav-link userReservation_link" href="#">완료(1)</a>
                            <a class="nav-link userReservation_link" href="#">취소/환불(1)</a>
                        </div>
                    </div>
                    <form class="d-flex">
                        <div class="userReservation_search">
                            <input class="form-control" type="text" placeholder="예약번호를 입력해주세요.">
                            <button type="submit" class="search_button">
                                <img src="/images/search.png">
                            </button>
                        </div>
                    </form>
                    <table class="table userReservation_table">
                        <thead>
                        <tr>
                            <th>예약번호</th>
                            <th colspan="2">시설 정보</th>
                            <th>사용 시간</th>
                            <th>상품 금액</th>
                            <th>상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="userReservation_table_tr">
                            <td>16-12369</td>
                            <td>
                                <div class="userReservation_pic">
                                    <img src="/images/stadium.png">
                                </div>
                            </td>
                            <td>
                                <div class="userReservation_detail">
                                    <button type="button" data-bs-toggle="modal"
                                            data-bs-target="#myModal">
                                        부산 준타스 풋볼아레나
                                    </button>
                                </div>
                            </td>
                            <td>2023-12-06 (수) 13시 시작 <br> 2023-12-06 (수) 15시 종료</td>
                            <td>30,000원</td>
                            <td>결제 대기</td>
                        </tr>
                        <tr class="userReservation_table_tr">
                            <td>16-12369</td>
                            <td>
                                <div class="userReservation_pic">
                                    <img src="/images/stadium.png">
                                </div>
                            </td>
                            <td>
                                <div class="userReservation_detail">
                                    <button type="button" data-bs-toggle="modal"
                                            data-bs-target="#myModal">
                                        부산 준타스 풋볼아레나
                                    </button>
                                </div>
                            </td>
                            <td>2023-12-06 (수) 13시 시작 <br> 2023-12-06 (수) 15시 종료</td>
                            <td>30,000원</td>
                            <td>결제 대기</td>
                        </tr>
                        </tbody>
                    </table>


                    <!-- The Modal -->
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="userReservation_modal_header">
                                    <h2 style="width: 100%; text-align: center">예약 상세</h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="userReservation_modal_body">
                                        <div class="userReservation_modal_body_detail">
                                            <img src="/images/stadium.png">
                                            <div class="userReservation_modal_body_detail_text">
                                                <div> 구장 이름</div>
                                                <div> 위치</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="userReservation_modal_footer">
                                    <div>
                                        <a href="/">결제하기</a>
                                        <a href="/">예약취소</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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


<%@ include file="../layout/footer.jsp" %>