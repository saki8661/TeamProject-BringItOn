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

                    <%-- <div class="userReservation_tabbox">
                        <div class="userReservation_tab">
                            <a class="nav-link userReservation_link" href="#">전체()</a>
                            <a class="nav-link userReservation_link" href="#">진행중()</a>
                            <a class="nav-link userReservation_link" href="#">완료()</a>
                            <a class="nav-link userReservation_link" href="#">취소/환불()</a>
                        </div>
                        </div> --%>
                    <form class="d-flex">
                        <div class="userReservation_search">
                            <h2>결제 이후에 예약상태가 예약완료 상태가 됩니다.</h2>
                            <div style="height: 4px"></div>
                            <h2 style="text-align: center">시설 정보를 클릭해 결제해주세요.</h2>

                            <input type="hidden" id="point" value="${sessionScope.userPoint.myPoint}">
                            <input type="hidden" id="userId" value="${sessionUser.id}">
                            <%--                            <input class="form-control" type="text" placeholder="예약번호를 입력해주세요.">--%>
                            <%--                            <button type="submit" class="search_button">--%>
                            <%--                                <img src="/images/search.png">--%>
                            <%--                            </button>--%>
                        </div>
                    </form>
                    <c:choose>
                        <c:when test="${empty reservationList}">
                            <div>
                                예약한 목록이 없습니다.
                            </div>
                        </c:when>
                    </c:choose>


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

                        <c:forEach var="reservation" items="${reservationList}">
                            <tr class="userReservation_table_tr">
                                <td>${reservation.reservationNumber}</td>
                                <td>
                                    <div class="userReservation_pic">
                                        <img src="/images/${reservation.spacePic}">
                                    </div>
                                </td>
                                <td>
                                    <div class="userReservation_detail">
                                        <button type="button" data-bs-toggle="modal"
                                                data-bs-target="#reservation-${reservation.id}">
                                                ${reservation.spaceName}
                                        </button>
                                    </div>
                                </td>
                                <td>${reservation.reservationDate} <br>
                                        ${reservation.startTime} ~ ${reservation.endTime}
                                </td>
                                <td>${reservation.price}원</td>
                                <td>${reservation.status}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>


                    <!-- The Modal -->
                    <c:forEach var="reservation" items="${reservationList}">
                        <div class="modal" id="reservation-${reservation.id}">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h2>예약 상세</h2>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="userReservation_modal_body">
                                            <div class="userReservation_modal_body_detail">
                                                <img src="/images/stadium.png">
                                                <div class="userReservation_modal_body_detail_text">
                                                    <div>
                                                            ${reservation.spaceName}
                                                    </div>
                                                    <div>
                                                            ${reservation.spaceLocation}
                                                    </div>
                                                    <div>
                                                        시작: ${reservation.reservationDate} ${reservation.startTime}</div>
                                                    <div>종료: ${reservation.reservationDate} ${reservation.endTime}</div>
                                                </div>
                                            </div>
                                            <div class="userPayment_table">
                                                <Table>
                                                    <div class="userPayment_detail_style">
                                                        <tr class="userPayment_table_header">
                                                            <th>진행상태</th>
                                                            <td>${reservation.status}</td>
                                                            <th>예약일</th>
                                                            <td>${reservation.reservationDate}</td>
                                                        </tr>
                                                        <tr class="userPayment_table_header">
                                                            <th>예약인원</th>
                                                            <td>${reservation.personnel}명</td>
                                                            <th>결제금액</th>
                                                            <td>${reservation.price}원</td>
                                                        </tr>
                                                    </div>
                                                </Table>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="userReservation_modal_footer">
                                        <div>
                                            <c:choose>
                                                <c:when test="${reservation.status == '예약완료'}">

                                                </c:when>
                                                <c:otherwise>
                                                    <button type="button" id="pointUse" class="print_use"
                                                            onclick="pointUse(${reservation.price},${reservation.id})">
                                                        결제하기
                                                    </button>
                                                    <button type="button" id="reservationCancellation"
                                                            class="reservation_cancellation"
                                                            onclick="reservationCancellation(${reservation.id})">예약취소
                                                    </button>
                                                </c:otherwise>
                                            </c:choose>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
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

    // JavaScript 코드로 버튼 가시성 제어
    var reservationStatus = "${reservation.status}";

    if (reservationStatus === '결제완료') {
        document.getElementById('pointUse').style.display = 'none';
    }

    function reservationCancellation(reservationId) {
        let userId = document.getElementById("userId").value
        console.log("-------reservationId--------" + reservationId)
        if (!confirm('예약을 취소하시겠습니까?')) {
            return false;
        }
        $.ajax({
            type: 'DELETE',  // HTTP 메서드 변경
            url: '/user/reservation-delete/' + reservationId,
            success: function (data) {
                console.log(data)
                // 성공 시의 동작
                alert('예약이 취소되었습니다.');
                window.location.href = "/user/reservation/" + userId;
                // 여기에서 추가로 필요한 동작을 수행할 수 있습니다.
            },
            error: function (error) {
                // 실패 시의 동작
                console.error('예약 취소 실패:', error.responseText);
                // 여기에서 에러 처리 등 추가로 필요한 동작을 수행할 수 있습니다.
            }
        });
    }


    function pointUse(price, reservationId) {
        let point = document.getElementById("point").value
        let userId = document.getElementById("userId").value
        if (!confirm(price + '만큼 포인트가 차감됩니다. \n 결제하시겠습니까?')) {
            console.log("-----------------------" + point);
            return false;
        }
        price = parseInt(price);
        point = parseInt(point);

        if (price > point) {
            alert("충전이 필요합니다.");
            $('.modal').modal('hide');
            $('#paymentModal').modal('show');
        }
        let nowPoint = point - price;
        console.log("----------------------- point   " + nowPoint)
        $.ajax({
            type: 'POST',
            url: '/point-use',
            data: {
                nowPoint: nowPoint,
                id: userId,
                price: price,
                point: point,
                reservationId: reservationId
            },
            success: function (result) {
                console.log(result)
                if (result === "성공") {
                    alert('결제가 완료되었습니다');
                    window.location.href = "/user/reservation/" + userId;
                } else {
                    alert('결제 실패했습니다.');
                }
            },
            error: function () {
                alert('결제 실패했습니다.');
            }
        })

    }


</script>

<%@ include file="../layout/footer.jsp" %>