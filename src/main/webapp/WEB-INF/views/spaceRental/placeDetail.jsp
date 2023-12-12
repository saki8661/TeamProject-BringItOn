<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<div class="frame">
    <div class="place_detail_container">

        <div class="place_detail_stick_menu_container">
            <div class="place_detail_description">
                <div class="slider-container">
                    <div class="slider">
                        <img src="/images/place.jpg" alt="Image 1">
                        <img src="/images/place.jpg" alt="Image 2">
                        <img src="/images/place.jpg" alt="Image 3">
                        <!-- Add more images as needed -->
                    </div>
                    <div class="place_detail_slider_button">
                        <button class="prev-button"> <<</button>
                        <button class="next-button"> >></button>
                    </div>
                </div>
                <div class="place_detail_photo_name_container">
                    <div class="place_detail_photo_name">
                        <h1>한성대학교</h1>
                    </div>
                    <div class="place_detail_photo_name_field">
                        야외시설 테니스장/풋살장
                    </div>
                    <div class="place_detail_photo_location">
                        서울 성북구 삼선교로16길 116
                    </div>
                    <div class="place_detail_photo_star_container">
                        <i class="fas fa-star text-warning"></i>
                        <div class="place_detail_photo_star_num">
                            4.9
                        </div>
                        <div class="separated_line"></div>
                        <div class="place_detail_review">
                            후기(22)
                        </div>
                    </div>
                </div>
                <div class="place_detail_tab_bar_container">
                    <ul class="place_detail_list">
                        <li class="place_detail_li" style="padding-left: 50px"><a href="#scroll1_place_detail_info"
                                                                                  class="scroll_move">공간정보</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll2_place_detail_caution" class="scroll_move">주의사항</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll3_place_detail_review" class="scroll_move">후기</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll4_place_detail_qna"
                                                       class="scroll4_place_detail_qna">문의</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll5_return_rule" class="scroll_move">환불규정</a>
                        <li>
                    </ul>
                </div>

                <div class="place_detail_listbox">
                    <div class="scroll1_place_detail_info" id="scroll1_place_detail_info">
                        ++++++++ 공간 정보++++++
                        호스트에 받을 내용들
                    </div>
                    <div class="scroll2_place_detail_caution" id="scroll2_place_detail_caution">
                        <div class="scroll2_place_detail_caution_title">
                            주의사항
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 대관 중 시설 훼손이 발생한 경우 손해액을 호스트에게 배상해야합니다.
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 시간 초과시, 추가 요금은 현장 결제합니다.(1시간 마다 발생)
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 대여 시간 보다 적게 사용 하시더라도 환불되지 않습니다.
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 실내 공간 이용 시 반드시 실내 용 운동화를 착용 바랍니다.
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 분리수거를 철저히 해주시기 바랍니다.
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 생활체육 상품의 경우, 동호인 체육 활동 목적으로 사용이 가능하십니다.
                        </div>
                        <div class="scroll2_place_detail_caution_content">
                            - 목적과 달리 시설물을 사용하실 경우 이용이 제한됩니다.
                        </div>

                        <div class="scroll3_place_detail_review" id="scroll3_place_detail_review">
                            <div class="scroll3_place_detail_review_write">
                                <button class="scroll3_place_detail_review_write_button">
                                    댓글쓰기
                                </button>
                            </div>
                            <div class="scroll3_place_detail_review_title">
                                후기 22
                            </div>
                            <div class="scroll3_place_detail_review_textarea">
                                <textarea class="scroll3_place_detail_review_textarea"></textarea>
                            </div>
                            <div class="scroll3_place_detail_review_star">
                                <i class="fas fa-star text-warning"></i>
                                <div class="rated_star">5</div>
                                <div class="rated_star_username">이**
                                </div>
                                <div class="separated_line"></div>
                                <div class="rated_star_date">2023-08-19</div>
                            </div>
                            <div class="scroll3_place_detail_review_content_container">
                                <h3>항상 이용할 때마다 넘모 죠슴둥</h3>
                            </div>
                        </div>

                        <div class="scroll4_place_detail_qna" id="scroll4_place_detail_qna">
                            <div class="scroll4_place_detail_qna_container">
                                <button class="scroll4_place_detail_qna_container_button">
                                    문의하기
                                </button>
                            </div>
                            문의 23
                            <div class="scroll4_place_detail_qna_list">
                                <div class="scroll4_place_detail_qna_list_title">
                                    수요일 저녁 9~11시 예약 안되나영? 12월엔 예약 안되나용?
                                </div>
                                <div class="scroll4_place_detail_qna_list_username">
                                    지**
                                </div>
                            </div>
                            <div class="scroll4_place_detail_qna_list_pagination">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="scroll5_return_rule" id="scroll5_return_rule">
                            <h1 style="font-size: 20px; font-weight: bolder; padding-top: 20px; padding-bottom: 20px">환불
                                규정</h1>
                            <h1 style="font-size: 15px; font-weight: bolder; padding-bottom: 20px">공통 상품</h1>
                            <h1 style="font-size: 15px; font-weight: bolder; padding-bottom: 20px">회원</h1>
                            <h1 style="padding-bottom: 20px">- 공간 이용일 기준 8일전 : 100%환불</h1>
                            <h1 style="padding-bottom: 20px">- 공간 이용일 기준 7일전 : 환불 불가</h1>

                            <h1 style="font-size: 15px; font-weight: bolder; padding-top: 20px; padding-bottom: 20px">
                                천재지변 및 불가항력</h1>
                            <h1 style="font-size: 15px;  padding-bottom: 20px">- 공간 이용일 기준 당일 취소 시 : 100% 환불</h1>


                        </div>
                    </div>
                </div>
            </div>

            <div id="container" class="place_detail_stick_area">
                <div class="place_detail_stick_area_menu">
                    <div class="place_detail_stick_area_menu_date">
                        12월 4일
                    </div>
                    <div class="place_detail_stick_area_menu_place">
                        <h2>한성 대학교</h2>
                    </div>
                    <div class="place_detail_stick_area_menu_location">
                        서울 성북구 삼선교로16길 116
                    </div>
                    <div class="place_detail_stick_area_menu_location_copy">
                        <a href="" style="padding-right: 20px; text-decoration: underline; color: #8A8A8A">주소 복사</a>
                        <a href="" style="text-decoration: underline;color: #8A8A8A">지도 보기</a>
                    </div>
                    <div class="place_detail_stick_area_menu_location_cost">
                        60000 원
                    </div>
                </div>

                <div class="place_detail_stick_area_menu_bottom">
                    <div class="place_detail_stick_area_menu_bottom">
                        <i class="fas fa-heart fa-2x" id="heartIcon" style="padding-right: 10px"
                           onclick="toggleHeartColor()"></i>
                        <button class="place_detail_stick_area_menu_button">예약하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function ($) {
        $(".scroll_move").click(function (event) {
            console.log(".scroll_move");
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 500);
        });

    });

    function toggleHeartColor() {
        var heartIcon = document.getElementById('heartIcon');

        // 색상 클래스를 토글합니다.
        heartIcon.classList.toggle('heart-filled');
    }

    document.addEventListener("DOMContentLoaded", function () {
        const slider = document.querySelector(".slider");
        const prevButton = document.querySelector(".prev-button");
        const nextButton = document.querySelector(".next-button");

        let currentIndex = 0;

        nextButton.addEventListener("click", function () {
            if (currentIndex < slider.children.length - 1) {
                currentIndex++;
                updateSlider();
            }
        });

        prevButton.addEventListener("click", function () {
            if (currentIndex > 0) {
                currentIndex--;
                updateSlider();
            }
        });

        function updateSlider() {
            const translateValue = -currentIndex * 100 + "%";
            slider.style.transform = "translateX(" + translateValue + ")";
        }
    });
</script>


<%@ include file="../layout/footer.jsp" %>