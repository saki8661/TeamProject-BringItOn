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
            <a href="/matching-main">매칭</a>
        </li>
        <%--        <li class="main_link">--%>
        <%--            <a href="/league-main">리그</a>--%>
        <%--        </li>--%>
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


    function getDayOfWeek(day) {
        var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
        return daysOfWeek[day];
    }

    function showMatchings(day) {
        console.log('Selected Date:', day);

        // 선택한 날짜에 해당하는 스타일 적용
        if (selectedDate !== null) {
            // 이전에 선택한 날짜의 스타일 초기화
            $('[data-date="' + selectedDate + '"]').removeClass('manual_active');
        }

        // 선택한 날짜에 클래스 추가하여 스타일 변경
        $('[data-date="' + day + '"]').addClass('manual_active');

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

        manualCg.forEach((tab, idex) => {
            tab.addEventListener("click", function () {
                manual.forEach((inner) => {
                    inner.classList.remove("manual_active");
                })
                manualCg.forEach((item) => {
                    item.classList.remove("manual_active");
                })
                manualCg[idex].classList.add("manual_active");
                manual[idex].classList.add("manual_active");
            })
        });

        const regionOptions = document.querySelectorAll(".region-option");
        const matchingCards = document.querySelectorAll(".manual_card");
        const selectedRegionSpan = document.getElementById("selectedRegion");

        regionOptions.forEach(option => {
            option.addEventListener("click", function (e) {
                e.preventDefault();
                const selectedRegionName = this.getAttribute("data-region-name");
                const selectedTeamLocation = this.innerText;

                matchingCards.forEach(card => {
                    const regionName = card.getAttribute("data-region-name");
                    if (regionName === selectedRegionName || selectedRegionName === "all") {
                        card.style.display = "block";
                    } else {
                        card.style.display = "none";
                    }
                });

                selectedRegionSpan.innerText = selectedTeamLocation;
            });
        });
    });
</script>


<%@ include file="../layout/footer.jsp" %>
