<%@ page import="org.springframework.ui.Model" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<div class="frame">
    <div class="place_detail_container">
        <div class="place_detail_stick_menu_container">
            <div class="place_detail_description">
                <div class="slider-container">
                    <div class="slider">
                        <img src="/img/${spaceDetail.spacePic}" alt="Image 1">
                        <img src="/img/${spaceDetail.spacePic}" alt="Image 2">
                        <img src="/img/${spaceDetail.spacePic}" alt="Image 3">
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
                            후기 ${commentCount}
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
                        <li class="place_detail_li"><a href="#scroll4_place_detail_qna" class="scroll_move">공간문의</a>
                        <li>
                        <li class="place_detail_li"><a href="#scroll5_return_rule" class="scroll_move">환불규정</a>
                        <li>
                    </ul>
                </div>

                <div class="place_detail_listbox">
                    <div class="scroll1_place_detail_info" id="scroll1_place_detail_info">
                        ${spaceDetail.description}
                        <div class="scroll1_place_detail_map">
                            <div id="map" style="width:500px;height:400px;"></div>
                        </div>
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
                                    <input type="hidden" name="userId" value="${sessionUser.id}" id="userId">
                                    <button class="scroll3_place_detail_review_write_button" type="submit">
                                        후기쓰기
                                    </button>
                                </div>
                            </form>

                            <c:forEach var="spaceReview" items="${spaceReviewList}">
                                <div class="scroll3_place_detail_review_star">
                                    <i class="fas fa-star text-warning"></i>
                                    <div class="rated_star">${spaceReview.rating}</div>
                                    <div class="rated_star_username">${spaceReview.username}
                                    </div>
                                    <div class="separated_line"></div>
                                    <div class="rated_star_date">${spaceReview.createdAt}</div>
                                </div>
                                <div class="scroll3_place_detail_review_content_container">
                                    <h3>${spaceReview.comment}</h3>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>


                <div class="scroll4_place_detail_qna" id="scroll4_place_detail_qna">
                    <form method="post" action="/space-inquire">
                        <div class="scroll4_place_detail_qna_big_title">
                            <div class="scroll4_place_detail_qna_title">공간문의
                            </div>
                            <div class="scroll4_place_detail_qna_type">
                                <label for="inquireType">문의유형:</label>
                                <select id="inquireType" name="inquireType">
                                    <option value="공간문의">공간문의</option>
                                    <option value="가격문의">가격문의</option>
                                </select>
                            </div>
                        </div>
                        <div class="scroll4_place_detail_qna_container">
                            <div class="scroll4_place_detail_qna_textarea">
                                <textarea class="scroll4_place_detail_qna_textarea" id="inquireContent"
                                          name="inquireContent"
                                          placeholder="문의를 작성해주세요"></textarea>
                            </div>
                            <input type="hidden" name="spaceId" value="${spaceDetail.id}">
                            <input type="hidden" name="userId" value="${sessionUser.id}">

                            <button class="scroll4_place_detail_qna_container_button" type="submit">
                                문의하기
                            </button>
                        </div>
                    </form>


                    <div class="scroll4_place_detail_qna_list">
                        <c:forEach var="spaceInquireList" items="${spaceInquireList}" varStatus="loop">

                            <div class="scroll4_place_detail_qna_list_total">
                                <div class="scroll4_place_detail_review_list_container">
                                    <div class="scroll4_place_detail_qna_username">${spaceInquireList.username}</div>
                                    <div class="separated_line"></div>
                                    <div class="scroll4_place_detail_qna_date">${spaceInquireList.createdAt}</div>
                                </div>
                                <div class="scroll4_place_detail_qna_content">${spaceInquireList.inquireContent}</div>
                                <div class="scroll4_place_detail_qna_answer">
                                    <p id="answerToggleButton_${loop.index}" onclick="toggleAnswer(${loop.index})"
                                       style="padding-bottom: 20px">
                                        답변</p>
                                </div>
                                <div class="scroll4_place_detail_qna_answer_content"
                                     id="answerHiddenContent_${loop.index}" style="padding-bottom: 10px">
                                        ${spaceInquireList.inquireAnswer}
                                </div>
                            </div>
                        </c:forEach>
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


            <div id="container" class="place_detail_stick_area">
                <div class="place_detail_stick_area_menu">
                    <div class="place_detail_stick_area_menu_date">
                        <i class="fas fa-star text-warning" style="padding-right: 10px"></i>
                        <h2>평점</h2>
                        <div class="star_avg" style="padding-left: 10px">${starAvg}</div>

                    </div>
                    <div class="place_detail_stick_area_menu_place">
                        <h2>${spaceDetail.spaceName}</h2>
                    </div>
                    <div class="place_detail_stick_area_menu_location">
                        ${spaceDetail.spaceLocation}
                    </div>
                    <div class="place_detail_stick_area_menu_location_copy">
                        <a href="#" onclick="copyAddress()"
                           style="padding-right: 20px; text-decoration: underline; color: #8A8A8A">주소 복사</a>
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
                        <a href="http://localhost/reservation/${spaceDetail.id}">
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

        var spaceId = "${spaceDetail.id}";
        var userId = "${sessionUser.id}";


        // Ajax를 사용하여 서버에 데이터 전송
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/space-bookmark", true);
        xhr.setRequestHeader("Content-Type", "application/json");


        var data = {
            spaceId: spaceId,
            userId: userId
            // userId는 서버 측에서 세션 등을 통해 가져오거나 클라이언트에서 미리 설정된 값으로 전달
        };

        xhr.send(JSON.stringify(data));

        // onreadystatechange << xhr객체의 readyState가 처음에 0
        // 1, 2, 3을 거쳐서 4가 됨
        // 숫자가 바뀔때 마다 인식하고 onreadystatechange가 function() 실행
        xhr.onreadystatechange = function () {
            //4 : 데이터를 전부 받은 상태
            if (xhr.readyState == 4 && xhr.status == 404) {
                // HttpStatus가 BAD_REQUEST인 경우
                alert('로그인을 먼저 해주세요.');


            }
            if (xhr.readyState == 4 && xhr.status == 200) {
                // 서버에서의 응답 처리

                // 색상 클래스를 토글
                heartIcon.classList.toggle('heart-filled');
            }
        };

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

    function toggleAnswer(index) {
        var answerContent = document.getElementById("answerHiddenContent_" + index);

        // 현재 상태를 확인하여 토글
        if (answerContent.style.display === "none" || answerContent.style.display === "") {
            answerContent.style.display = "block"; // 나타내기
        } else {
            answerContent.style.display = "none"; // 숨기기
        }
    }

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();
    var addressToCopy = '${spaceDetail.spaceLocation}'; // 원하는 주소 설정

    function copyAddress() {
        // Create a temporary input element
        var tempInput = document.createElement('input');
        tempInput.value = addressToCopy;
        document.body.appendChild(tempInput);

        // Select the text in the input element
        tempInput.select();
        tempInput.setSelectionRange(0, 99999); // For mobile devices

        // Copy the text to the clipboard
        document.execCommand('copy');

        // Remove the temporary input element
        document.body.removeChild(tempInput);

        // Optionally, provide some visual feedback
        alert('주소가 복사되었습니다: ' + addressToCopy);
    }

    // 주소로 좌표를 검색합니다



    geocoder.addressSearch('${spaceDetail.spaceLocation}', function (result, status) {
        console.log(result, status);

        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">우리공간</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
</script>

<%@ include file="../layout/footer.jsp" %>