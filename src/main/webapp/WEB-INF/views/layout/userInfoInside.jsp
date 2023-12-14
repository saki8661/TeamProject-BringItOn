<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="col-md-3">
    <div class="userInfo_aside">
        <div class="userInfo_image">
            <img src="/images/default_profile.jpg">
        </div>
        <div class="userInfo_charge">
            나의 캐시
            <br>
            99,999,999원
            <!-- Button to Open the Modal -->
            <button type="button" class="userInfo_charge_button" data-bs-toggle="modal" data-bs-target="#paymentModal">
                충전
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
                                        <button type="button" onclick="kakaoPay()">
                                            <img src="/images/kakao_payment_icon.png">
                                        </button>
                                        <button type="button" onclick="nicePay()">
                                            <img src="/images/nicepay_payment_icon.png">
                                        </button>
                                    </div>
                                </div>
                                <div class="modal_charge_checkbox">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="terms" required>
                                        <div class="form-check-label modal_charge_checkbox_label">
                                            <div>
                                                [필수]결제 서비스 이용약관
                                            </div>
                                            <a href="#"> ></a>
                                        </div>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="privacy" required>
                                        <div class="form-check-label modal_charge_checkbox_label">
                                            <div>
                                                [필수]개인정보 처리 동의
                                            </div>
                                            <a href="#"> ></a>
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
        <hr>
        <div class="userInfo_link">
            <a class="nav-link userInfo_link_text" href="/user-team/${sessionUser.id}">팀 관리</a>
            <a class="nav-link userInfo_link_text" href="/user-bookmark">북마크</a>
            <a class="nav-link userInfo_link_text" href="/user-reservation">예약 내역</a>
            <a class="nav-link userInfo_link_text" href="/user-payment">결제 내역</a>
            <a class="nav-link userInfo_link_text" href="/user-review">후기 관리</a>
            <a class="nav-link userInfo_link_text" href="/user-update/${sessionUser.id}">개인정보
                수정</a>
            <a class="nav-link userInfo_link_text" href="/league-matching-page">리그/매칭 현황</a>
        </div>
    </div>
</div>

<script>
    function activateButton(button) {
        // 모든 버튼에서 'active' 클래스 제거
        var buttons = document.querySelectorAll('.modal_price_button_item');
        buttons.forEach(function (btn) {
            btn.classList.remove('active');
        });

        // 클릭된 버튼에 'active' 클래스 추가
        button.classList.add('active');
    }

    IMP.init('imp70414440');

    function createOrderNum(){
        const date = new Date();
        const year = date.getFullYear();
        const month = String(date.getMonth() + 1).padStart(2, "0");
        const day = String(date.getDate()).padStart(2, "0");

        let orderNum = year + month + day;
        for(let i=0;i<10;i++) {
            orderNum += Math.floor(Math.random() * 8);
        }
        return orderNum;
    }

    function kakaoPay() {
        const orderNum = createOrderNum();
        console.log(orderNum);

        IMP.request_pay({
            pg : 'kakaopay.TC0ONETIME',
            pay_method : 'card', //생략 가능
            merchant_uid: 'order_no_'+orderNum, // 상점에서 관리하는 주문 번호
            name : '주문명:결제테스트',
            amount : 14000,
            buyer_email : 'iamport@siot.do',
            buyer_name : '구매자이름',
            buyer_tel : '010-1234-5678',
            buyer_addr : '서울특별시 강남구 삼성동',
            buyer_postcode : '123-456'
        }, function(rsp) { if ( response.success ) { //결제 성공
            console.log(response);
        } else {
            alert('결제실패 : ' + response.error_msg);
        }
        });
    }

    function nicePay() {
        const orderNum = createOrderNum();
        console.log(orderNum);


        IMP.request_pay(
            {
                pg: "nice_v2.",
                pay_method: "card",
                merchant_uid: 'orderNo'+orderNum,
                name: "주문명:결제테스트",
                amount: 1004,
                buyer_email: "test@portone.io",
                buyer_name: "구매자이름",
                buyer_tel: "010-1234-5678",
                buyer_addr: "서울특별시 강남구 삼성동",
                buyer_postcode: "123-456",
            },
            function (rsp) {
                if ( response.success ) { //결제 성공
                    console.log(response);
                } else {
                    alert('결제실패 : ' + response.error_msg);
                }
            }
        );
    }
</script>