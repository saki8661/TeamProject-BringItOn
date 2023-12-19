<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="col-md-4">
    <div class="userInfo_aside">
        <div class="userInfo_image">
            <img src="/images/sh_profile.jpg">
        </div>
        <div class="userInformation">
            <div>
                <div class="userInfo_point_nickname">박세환</div>
                <div class="userInfo_point_username">cos</div>
            </div>
            <div class="userInfo_profile_button">
                <button>
                    프로필 보기
                </button>
            </div>
        </div>
        <div class="userInfo_charge">
            <div>
                나의 캐시
                <br>
                <div class="userInfo_point">
                    <c:set var="userPoint" value="${sessionScope.userPoint}"/>

                    <c:if test="${not empty userPoint and not empty userPoint.myPoint}">
                        ${userPoint.myPoint}원
                    </c:if>
                    <c:if test="${empty userPoint or empty userPoint.myPoint}">
                        0원
                    </c:if>
                </div>
            </div>

            <!-- Button to Open the Modal -->
            <button type="button" class="userInfo_charge_button" data-bs-toggle="modal" data-bs-target="#paymentModal">
                충전하기
            </button>

            <!-- The Modal -->
            <div class="modal" id="paymentModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="modal_charge_body">
                                <div class="modal_charge_body_title">충전할 금액</div>
                                <div class="modal_price_button">
                                    <button class="modal_price_button_item " onclick="activateButton(this)"
                                            type="button">
                                        5,000원
                                    </button>
                                    <button class="modal_price_button_item " onclick="activateButton(this)"
                                            type="button">
                                        10,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        15,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        20,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        30,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        50,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        100,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        500,000원
                                    </button>
                                    <button class="modal_price_button_item" onclick="activateButton(this)"
                                            type="button">
                                        1,000,000원
                                    </button>
                                </div>
                                <div class="modal_charge_point">보유 포인트 : 0원</div>
                                <div class="modal_charge_method">
                                    <div class="modal_charge_body_title">
                                        충전 방법
                                    </div>
                                    <div class="modal_charge_icon">
                                        <div class="modal_charge_icon_container">
                                            <button type="button" onclick="kakaoPay()">
                                                <img src="/images/kakao_payment_icon.png">
                                            </button>
                                        </div>
                                        <div class="modal_charge_icon_container">
                                            <button type="button" onclick="nicePay()">
                                                <img src="/images/nicepay_payment_icon.png">
                                            </button>
                                        </div>
                                        <div class="modal_charge_icon_container">
                                            <button type="button" onclick="tossPay()">
                                                <img src="/images/toss_payment_icon.png">
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer" style="margin-top: 10px">
                            <button type="button" class="modal_charge_button">충전하기</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
<%--        <div class="userInfo_link">--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-mypage/${sessionUser.id}">나의 정보</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-team/${sessionUser.id}">팀 관리</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-bookmark">북마크</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-reservation">예약 내역</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-payment">결제 내역</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-review">후기 관리</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/user-update/${sessionUser.id}">개인정보--%>
<%--                수정</a>--%>
<%--            <a class="nav-link userInfo_link_text" href="/league-matching-page">리그/매칭 현황</a>--%>
<%--        </div>--%>
    </div>
</div>

<script>
    var amount = 0;

    function activateButton(button) {
        // 모든 버튼에서 'active' 클래스 제거
        var buttons = document.querySelectorAll('.modal_price_button_item');
        buttons.forEach(function (btn) {
            btn.classList.remove('active');
        });

        // 클릭된 버튼에 'active' 클래스 추가
        button.classList.add('active');

        amount = parseInt(button.innerText.replace(/[^0-9]/g, ''), 10);
        console.log(amount);
    }

    IMP.init('imp70414440');

    function createOrderNum() {
        const date = new Date();
        const year = date.getFullYear();
        const month = String(date.getMonth() + 1).padStart(2, "0");
        const day = String(date.getDate()).padStart(2, "0");

        let orderNum = year + month + day;
        for (let i = 0; i < 10; i++) {
            orderNum += Math.floor(Math.random() * 8);
        }
        return orderNum;
    }


    function kakaoPay() {
        const orderNum = createOrderNum();

        IMP.request_pay({
                pg: 'kakaopay.TC0ONETIME',
                pay_method: 'card', //생략 가능
                merchant_uid: 'order_no_' + orderNum, // 상점에서 관리하는 주문 번호
                name: amount + 'point 충전',
                amount: amount,
                buyer_email: "${userPoint.userEmail}",
                buyer_name: "${userPoint.username}",
                buyer_tel: "${userPoint.userPhoneNumber}",
                buyer_addr: "${userPoint.userAddress}",
            }, async (rsp) => {
                if (amount == 0) {
                    alert("충전할 금액을 선택해주세요.")
                }
                if (rsp.success) {
                    // 결제 성공시
                    alert("결제 성공");
                    $.ajax({
                        url: '/payment-write',
                        type: 'POST',
                        contentType: 'application/json',
                        data: JSON.stringify({
                            amount: amount,
                            paymentNumber: orderNum,
                            isCharge: true,
                            userId: ${userPoint.id}
                            // 추가 필요한 데이터가 있다면 여기에 추가
                        }),
                        success: function (response) {
                            console.log(response);
                            window.location.href = "/user/mypage/${userPoint.id}";
                            // 성공적으로 데이터를 서버로 전송한 후 추가적으로 수행할 작업이 있다면 여기에 추가
                        },
                        error: function (error) {
                            console.error('Ajax 통신 에러:', error);
                        }
                    });
                }

            }
        );

    }


    function nicePay() {
        const orderNum = createOrderNum();

        IMP.request_pay(
            {
                pg: "nice_v2.",
                pay_method: "card",
                merchant_uid: 'orderNo' + orderNum,
                name: amount + 'point 충전',
                amount: amount,
                buyer_email: "${userPoint.userEmail}",
                buyer_name: "${userPoint.username}",
                buyer_tel: "${userPoint.userPhoneNumber}",
                buyer_addr: "${userPoint.userAddress}",
            },
            function (rsp) {
                if (amount == 0) {
                    alert("충전할 금액을 선택해주세요.")
                }
                if (rsp.success) { //결제 성공
                    console.log(response);
                } else {
                    alert('결제실패 : ' + response.error_msg);
                }
            }
        );
    }

    function tossPay() {
        const orderNum = createOrderNum();

        IMP.request_pay({
                pg: 'tosspay',
                pay_method: 'card',
                merchant_uid: 'order_no_' + orderNum,
                name: amount + 'point 충전',
                amount: amount,
                buyer_email: "${userPoint.userEmail}",
                buyer_name: "${userPoint.username}",
                buyer_tel: "${userPoint.userPhoneNumber}",
                buyer_addr: "${userPoint.userAddress}",
                m_redirect_url: 'http://localhost/home'
            }, function (rsp) {
                if (amount == 0) {
                    alert("충전할 금액을 선택해주세요.")
                }
                if (rsp.success) { //결제 성공
                    console.log(response);
                }
            }
        );
    }
</script>