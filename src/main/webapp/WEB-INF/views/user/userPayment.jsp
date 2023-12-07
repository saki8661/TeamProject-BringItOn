<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="col-md-9 box">
                <div class="d-flex pe-3 my-3">
                    <div class="userInfo_title">결제 내역</div>
                </div>
                <hr/>
                <div class="userInfo_main">
                    <div class="userPayment_box">
                        <div class="userPayment_detail">
                            <div class="userPayment_title">
                                <div class="userPayment_status">결제완료</div>
                                <div>2023-12-05 00:00</div>
                            </div>

                        </div>
                        <div class="userPayment_body">
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
                            <button type="button" data-bs-toggle="modal"
                                    data-bs-target="#myModal">상세보기
                            </button>
                        </div>
                    </div>

                    <div class="userPayment_box">
                        <div class="userPayment_detail">
                            <div class="userPayment_title">
                                <div class="userPayment_status">결제완료</div>
                                <div>2023-12-05 00:00</div>
                            </div>

                        </div>
                        <div class="userPayment_body">
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
                            <button type="button" data-bs-toggle="modal"
                                    data-bs-target="#myModal">상세보기
                            </button>
                        </div>
                    </div>

                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="userReservation_modal_header">
                                    <h2 style="width: 100%; text-align: center">결제 내역</h2>
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
                                                <tr class="userPayment_table_header">
                                                    <th>진행상태</th>
                                                    <td>결제완료</td>
                                                    <th>결제일</th>
                                                    <td>2023-12-01</td>
                                                </tr>
                                                <tr>
                                                    <th>인원수</th>
                                                    <td>6명</td>
                                                    <th>가격</th>
                                                    <td>120,000원</td>
                                                </tr>
                                            </Table>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="userPayment_modal_footer">
                                    <div>
                                        <a href="#">
                                            <button>환불 요청</button>
                                        </a>
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