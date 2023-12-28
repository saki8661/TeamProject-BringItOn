<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">

        <div class="row">
            <%@include file="../layout/userInfoInside.jsp" %>
            <div class="userInfo_body col-md-8 box">
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
                                    data-bs-target="#userPaymentModal">상세보기
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
                                    data-bs-target="#userPaymentModal">상세보기
                            </button>
                        </div>
                    </div>

                    <div class="modal" id="userPaymentModal">
                        <div class="modal-dialog">
                            <div class="league_matching_modal modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h2>결제 내역</h2>
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
                                                        <th>진행상태</th>
                                                        <td>결제완료</td>
                                                        <th>결제일</th>
                                                        <td>2023-12-01</td>
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
                                        <button type="button" id="refundButton">
                                            환불 요청
                                        </button>
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

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // 버튼 클릭 이벤트 처리
        document.getElementById("refundButton").addEventListener("click", function () {
            // POST 요청을 보낼 URL
            var url = "http://localhost/payment/refund";

            // POST 요청 데이터 (필요에 따라 수정)
            var postData = {
                merchant_uid: "order_no_202312146445340777",
                reason: "환불"
                // 추가 필드가 있으면 여기에 추가
            };

            // XMLHttpRequest를 사용하여 POST 요청 보내기
            var xhr = new XMLHttpRequest();
            xhr.open("POST", url, true);
            xhr.setRequestHeader("Content-Type", "application/json");

            // 요청이 완료되면 실행되는 콜백 함수
            xhr.onload = function () {
                if (xhr.status === 200) {
                    // 성공 시 실행할 코드
                    console.log("POST 요청 성공", xhr.responseText);
                    $('#userPaymentModal').modal('hide');
                    alert("결제가 정상적으로 취소되었습니다.")

                } else {
                    // 실패 시 실행할 코드
                    console.error("POST 요청 실패", xhr.statusText);
                }
            };

            // 요청 전송
            xhr.send(JSON.stringify(postData));
        });
    });
</script>
<%@ include file="../layout/footer.jsp" %>