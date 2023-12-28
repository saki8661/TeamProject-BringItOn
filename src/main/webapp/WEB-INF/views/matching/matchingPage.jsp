<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>

<div class="frame">
    <ul class="nav">
        <li class="main_link nav-item dropdown">
            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                공간 대여
            </a>
            <ul class="dropdown-menu sub_navbar_style">
                <li><a class="dropdown-item" href="#">실내 스포츠</a></li>
                <li><a class="dropdown-item" href="#">야외 스포츠</a></li>
            </ul>
        </li>
        <li class="main_link">
            <a href="/team-main">팀</a>
        </li>
        <li class="main_link">
            <a href="/matching-main">매칭</a>
        </li>
        <li class="main_link">
            <a href="/board-main">게시판</a>
        </li>
        <li class="main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>
<div class="matchingPage_frame">
    <div class="frame">
        <div class="matchingPage_banner">
            <img src="/images/matching_banner.png" style="width: 100%">
        </div>
    </div>
</div>

<div class="frame">
    <div class="slider_wrap">
        <div class="swiper mySwiper manual_tab swiper-initialized swiper-horizontal swiper-backface-hidden">
            <ul class="swiper-wrapper manual_category" id="date-list" aria-live="polite">
                <!-- 선택한 날짜가 동적으로 추가될 영역 -->
                <li class="swiper-slide swiper-slide-active">
                </li>
            </ul>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>
        <div class="swiper-button-prev">
            <div class="slider_arrow"><img src="/images/left_button.png"></div>
        </div>
        <div class="swiper-button-next">
            <div class="slider_arrow">
                <img src="/images/right_button.png" alt="">
            </div>
        </div>
        <div class="selected-date"></div>
    </div>

    <div class="frame">
        <ul class="manual">
            <li class="manual_box manual_active">
                <div class="frame">
                    <ul class="nav">
                        <li class="main_link nav-item dropdown matching_sorting">
                            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                                <span id="selectedRegion">내 지역</span>
                            </a>
                            <ul class="dropdown-menu sub_navbar_style">
                                <c:forEach var="region" items="${regionList}">
                                    <li>
                                        <a class="dropdown-item region-option" href="#"
                                           data-region-name="${region.regionName}">
                                                ${region.regionName}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="manual_box" id="matchingListContainer">
                    <c:forEach var="matching" items="${matchings}">
                        <div class="manual_card region-${matching.teamLocation}"
                             data-region-name="${matching.teamLocation}">
                            <div class="matching_list">
                                <div class="matching_detail">
                                    <div class="manual_tit">
                                            ${matching.reservationDate} /
                                    </div>
                                    <div class="manual_tit">
                                            ${matching.startTime}~
                                            ${matching.endTime}
                                    </div>
                                    <div class="matchingPage_team_box">
                                        <div class="matchingPage_team">
                                            <div>
                                                <span class="manual_tit"> <${matching.teamName}> </span>
                                            </div>
                                            <div>
                                                <span class="manual_tit">${matching.personnel} vs ${matching.personnel} 경기</span>
                                            </div>
                                        </div>
                                        <div class="manual_num">${matching.spaceName}</div>
                                    </div>
                                </div>
                                <button class="matching_button matching_btn_style" type="button" data-bs-toggle="modal"
                                        data-bs-target="#matchingModal-${matching.id}"
                                    ${matching.matchingStatus == '매칭완료' ? 'disabled' : ''}>
                                        ${matching.matchingStatus}
                                </button>

                            </div>
                        </div>
                        <hr class="matchingPage_manual_box region-${matching.teamLocation}">
                    </c:forEach>
                </div>

                <%--======================================MODAL================================================================--%>
                <c:forEach var="matching" items="${matchings}">
                    <div class="modal" id="matchingModal-${matching.id}">
                        <div class="modal-dialog">
                            <div class="league_matching_modal modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h2>매칭 상세</h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="modal_body">
                                        <div class="userPayment_body_desc">
                                            <img src="images/${matching.spacePic}" alt="">
                                            <div class="userPayment_text">
                                                <div>
                                                        ${matching.teamName}
                                                </div>
                                                <div>
                                                        ${matching.spaceLocation}
                                                </div>
                                                <div>
                                                    시작: ${matching.startTime}
                                                </div>
                                                <div>
                                                    종료: ${matching.endTime}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="userPayment_table">
                                            <Table>
                                                <div class="userPayment_detail_style">
                                                    <tr class="userPayment_table_header">
                                                        <th>팀명</th>
                                                        <td>${matching.teamName}</td>
                                                        <br>
                                                        <th>진행상태</th>
                                                        <td>${matching.status}</td>
                                                    </tr>
                                                    <tr class="userPayment_table_header">
                                                        <th>인원수</th>
                                                        <td>${matching.personnel}</td>
                                                        <br>
                                                        <th>가격</th>
                                                        <td>1인 : ${matching.price} 원</td>
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
                                        <form action="/matching-apply/${matching.matchingId}" method="post">
                                            <input type="hidden" value="${matching.id}" name="reservationId">
                                            <button type="submit" class="inquireMain_delete_btn">매칭 신청</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--====================================MODAL==================================================================--%>
                    <hr class="matchingPage_manual_box">
                </c:forEach>
            </li>
        </ul>
    </div>
</div>


<script>

    // 변수 추가: 선택한 날짜를 저장할 변수
    var selectedDate = null;
    var selectedRegionName = null;
    var selectedTeamLocation = null;

    function getDayOfWeek(day) {
        var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
        return daysOfWeek[day];
    }

    $(document).ready(function () {
        // 날짜가 선택될 때마다 해당 날짜를 저장
        $(".swiper-wrapper").on("click", ".swiper-slide", function () {
            selectedDate = $(this).text();

            // 선택된 날짜에 대한 매칭 목록을 불러오고 화면에 업데이트
            loadMatchings(selectedDate);
        });

        // 버튼 클릭 시 Ajax 통신 수행
        $(".load-matching-btn").on("click", function () {
            // 선택된 날짜를 서버에 전달하고, 매칭 목록을 받아옴
            loadMatchings(selectedDate);
        });

        // 여기서 day 변수에 디코딩된 값을 할당
        day = decodeURIComponent(selectedDate);

    });


    function loadMatchings(day) {
        // 숫자만 추출
        var resvDate = day.match(/\d+/)[0];

        // 선택된 날짜를 서버에 전달하고, 매칭 목록을 받아옴
        $.ajax({
            type: "GET",
            url: "/api/matching-main/ " + resvDate,
            contentType: "json",
            success: function (response) {
                console.log(response)
                updateMatchingList(response);
            },
            error: function (error) {
            }
        });
    }



    function updateMatchingList(response) {
        // 매칭 목록을 받아와서 화면에 업데이트
        let matchingListContainer = document.getElementById('matchingListContainer');
        matchingListContainer.innerHTML = "";
        let htmlData = "";

        if (Array.isArray(response) && response.length > 0) {
            response.forEach(function (matching) {
                htmlData +=
                    '<div class="manual_card region-' + matching.teamLocation + '" data-region-name="' + matching.teamLocation + '">' +
                    '<div class="matching_list">' +
                    '<div class="matching_detail">' +
                    '<div class="manual_tit">' + matching.reservationDate + ' /</div>' +
                    '<div class="manual_tit">' + matching.startTime + '~' + matching.endTime + '</div>' +
                    '<div class="matchingPage_team_box">' +
                    '<div class="matchingPage_team">' +
                    '<div>' +
                    '<span class="manual_tit">' + matching.teamName + '</span>' +
                    '</div>' +
                    '<div>' +
                    '<span class="manual_tit">' + matching.personnel + ' vs ' + matching.personnel + ' 경기</span>' +
                    '</div>' +
                    '</div>' +
                    '<div class="manual_num">' + matching.spaceName + '</div>' +
                    '</div>' +
                    '</div>' +
                    '<button class="matching_button matching_btn_style" type="button" data-bs-toggle="modal" data-bs-target="#matchingModal-' + matching.id + '" ' + (matching.matchingStatus == '매칭완료' ? 'disabled' : '') + '>' +
                    matching.matchingStatus +
                    '</button>' +
                    '</div>' +
                    '</div>' +
                    '<hr class="matchingPage_manual_box region-' + matching.teamLocation + '">';
            });
        } else {
            // 매칭이 없는 경우 메시지를 표시
            htmlData = '<div class="matching_empty_box">' +
                '매칭할 팀이 없습니다.' +
                '</div>';
        }

        matchingListContainer.innerHTML = htmlData;

        console.log(matchingListContainer.innerHTML);
    }

    function showMatchings(selectedDate) {
        console.log('선택한 날짜:', selectedDate);

        // 이전에 선택한 날짜의 스타일 초기화
        $('.swiper-slide').removeClass('manual_active');

        // 선택한 날짜에 클래스 추가하여 스타일 변경
        $('[data-date="' + selectedDate + '"]').addClass('manual_active');

        // 선택한 날짜에 해당하는 탭에 스타일 적용
        const activeTabStyle = `
        background-color: #19B357;
        color: white;
        border: none;
    `;
        $('.manual_tab .manual_category a.manual_active').attr('style', activeTabStyle);

        // 선택한 날짜 업데이트
        selectedDate = day;
    }

    document.addEventListener('DOMContentLoaded', function () {
        // Swiper 초기화
        var mySwiper = new Swiper('#swiper-container, .mySwiper', {
            slidesPerView: 'auto',
            spaceBetween: 15,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });


        // 현재 날짜 정보 가져오기
        var today = new Date();

        // 초기 날짜 설정 및 업데이트
        var initialDates = generateDateList(new Date(), 20);
        updateSelectedDates(initialDates);

        function generateDateList(startDate, days) {
            var dateList = [];
            for (var i = 0; i < days; i++) {
                var currentDate = new Date(startDate);
                currentDate.setDate(startDate.getDate() + i);
                dateList.push(currentDate);
            }
            return dateList;
        }

        function updateSelectedDates(selectedDates) {
            var dateList = $('#date-list');
            dateList.empty();


            for (var i = 0; i < selectedDates.length; i++) {
                var date = selectedDates[i];
                var isSelected = isToday(date) ? ' manual_active' : '';
                var dayOfWeek = getDayOfWeek(date.getDay());
                dateList.append('<div class="swiper-slide' + isSelected + '" data-date="' + date.getDate() + '">' +
                    '<a href="#" onclick="showMatchings(' + date.getDate() + ')">' +
                    '<p>' + date.getDate() + '<br>' + dayOfWeek + '</p>' +
                    '</a>' +
                    '</div>');
            }

            mySwiper.update();
        }

        function isToday(date) {
            var today = new Date();
            return (
                date.getDate() === today.getDate() &&
                date.getMonth() === today.getMonth() &&
                date.getFullYear() === today.getFullYear()
            );
        }

        // 탭 및 슬라이더 초기화
        const manualCg = document.querySelectorAll(".manual_category > li > a");
        const manual = document.querySelectorAll(".manual > li");
        const regionOptions = document.querySelectorAll(".region-option"); // 이 위치로 이동
        const matchingCards = document.querySelectorAll(".manual_card"); // 이 위치로 이동
        const selectedRegionSpan = document.getElementById("selectedRegion"); // 이 위치로 이동

        manualCg.forEach((tab, idex) => {
            tab.addEventListener("click", function () {
                manual.forEach((inner) => {
                    inner.classList.remove("manual_active");
                });
                manualCg.forEach((item) => {
                    item.classList.remove("manual_active");
                });
                manualCg[idex].classList.add("manual_active");
                manual[idex].classList.add("manual_active");
            });
        });

        regionOptions.forEach(option => {
            option.addEventListener("click", function (e) {
                e.preventDefault();
                e.stopPropagation(); // 이벤트 전파 중지

                // 선택한 지역 정보 업데이트
                selectedRegionName = option.getAttribute("data-region-name");
                selectedTeamLocation = selectedRegionName;  // 선택한 지역을 저장

                // 매칭 카드 필터링
                matchingCards.forEach(card => {
                    const regionName = card.getAttribute("data-region-name");
                    if (regionName === selectedRegionName || selectedRegionName === "all") {
                        card.style.display = "block";
                    } else {
                        card.style.display = "none";
                    }
                });

                // 선택한 지역을 표시하는 엘리먼트 업데이트
                selectedRegionSpan.innerText = selectedTeamLocation;

                // 드롭다운 닫기 (Bootstrap 드롭다운 토글 메서드 사용)
                $(option).closest('.dropdown').find('.dropdown-toggle').dropdown('toggle');
            });
        });


        // 초기화면에 대한 매칭 목록 로드
        loadMatchings(selectedDate);
    });
</script>


<%@ include file="../layout/footer.jsp" %>
