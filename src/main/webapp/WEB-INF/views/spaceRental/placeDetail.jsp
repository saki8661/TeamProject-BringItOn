<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<div class="frame">
    <div class="place_detail_container">

        <div class="place_detail_stick_menu_container">
            <div class="place_detail_description">
                <div class="slider-container">
                    <div class="slider">
                        <img src="/images/${spaceDetail.spacePic}" alt="Image 1">
                        <img src="/images/${spaceDetail.spacePic}" alt="Image 2">
                        <img src="/images/${spaceDetail.spacePic}" alt="Image 3">
                        <!-- Add more images as needed -->
                    </div>
                    <div class="place_detail_slider_button">
                        <button class="prev-button"> <<</button>
                        <button class="next-button"> >></button>
                    </div>
                </div>
                <div class="place_detail_photo_name_container">
                    <div class="place_detail_photo_name">
                        <h1>${spaceDetail.spaceName}</h1>
                    </div>
                    <div class="place_detail_photo_name_field">
                        야외시설 테니스장/풋살장
                    </div>
                    <div class="place_detail_photo_location">

                    </div>
                    <div class="place_detail_photo_star_container">

                        <i class="fas fa-star text-warning"></i>
                        <div class="place_detail_photo_star_num">
                            ${spaceReview.rating}
                        </div>
                        <div class="separated_line"></div>
                        <div class="place_detail_review">
                            후기(22)
                        </div>

                    </div>
                </div>
                <div class="place_detail_tab_bar_container">
                    <ul class="place_detail_list">
                        <li class="place_detail_li"><a href="#scroll1_place_detail_info"
                                                       class="scroll_move">공간정보</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll2_place_detail_caution" class="scroll_move">주의사항</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll3_place_detail_review" class="scroll_move">공간후기</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll4_place_detail_qna"
                                                       class="scroll4_place_detail_qna">공간문의</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll5_return_rule" class="scroll_move">환불규정</a>
                        <li>
                    </ul>
                </div>

                <div class="place_detail_listbox">
                    <div class="scroll1_place_detail_info" id="scroll1_place_detail_info">
                        ${spaceDetail.description}
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
                            <form method="post" action="/space-review">


                                <div class="scroll3_place_detail_review_write">
                                    <div class="scroll3_place_detail_review_title">공간후기</div>
                                    <i class="fas fa-star text-warning"></i>
                                    <div class="scroll3_place_detail_review_rating_star">
                                        <label for="rating">별점주기:</label>
                                        <select id="rating" name="rating">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="scroll3_place_detail_review_textarea_container">
                                    <div class="scroll3_place_detail_review_textarea">
                                <textarea class="scroll3_place_detail_review_textarea" id="comment" name="comment"
                                          placeholder="후기를 작성해주세요"></textarea>
                                    </div>
                                    <input type="hidden" name="spaceId" value="${spaceDetail.id}">

                                    <button class="scroll3_place_detail_review_write_button" type="submit">
                                        후기쓰기
                                    </button>
                                </div>
                            </form>

                            <c:forEach var="spaceReview" items="${spaceReviewList}">
                                <div class="scroll3_place_detail_review_star">
                                    <i class="fas fa-star text-warning"></i>
                                    <div class="rated_star">${spaceReview.rating}</div>
                                    <div class="rated_star_username">${sessionUser.username}
                                    </div>
                                    <div class="separated_line"></div>
                                    <div class="rated_star_date">${spaceReview.createdAt}</div>
                                </div>
                                <div class="scroll3_place_detail_review_content_container">
                                    <h3>>${spaceReview.comment}</h3>
                                </div>
                            </c:forEach>
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
                            <h1 style="font-size: 20px; font-weight: bolder; padding-top: 20px; padding-bottom: 20px">
                                환불
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
                        <h2>${spaceDetail.spaceName}</h2>
                    </div>
                    <div class="place_detail_stick_area_menu_location">
                        서울 성북구 삼선교로16길 116
                    </div>
                    <div class="place_detail_stick_area_menu_location_copy">
                        <a href="" style="padding-right: 20px; text-decoration: underline; color: #8A8A8A">주소 복사</a>
                        <a href="" style="text-decoration: underline;color: #8A8A8A">지도 보기</a>
                    </div>
                    <div class="place_detail_stick_area_menu_location_cost">
                        ${spaceDetail.pricePerHour}
                    </div>
                </div>

                <div class="place_detail_stick_area_menu_bottom">
                    <div class="place_detail_stick_area_menu_bottom">
                        <i class="fas fa-heart fa-2x" id="heartIcon" style="padding-right: 10px"
                           onclick="toggleHeartColor()"></i>
                        <a href="http://localhost/reservation">
                            <button class="place_detail_stick_area_menu_button">예약하기</button>
                        </a>
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