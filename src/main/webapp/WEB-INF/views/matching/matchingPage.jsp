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

        <li class="main_link">
            <a href="/league-main">리그</a>
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
            <ul class="swiper-wrapper manual_category" id="swiper-wrapper-b7279aaa4b19885b" aria-live="polite">
                <li class="swiper-slide swiper-slide-active">
                    <a href="#" class="manual_active">
                        <p>
                            1
                        </p>
                        <span>
                            일
                        </span>
                    </a>
                </li>
                <li class="swiper-slide swiper-slide-next">
                    <a href="#">
                        <p>
                            2
                        </p>
                        <span>
                            월
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            3
                        </p>
                        <span>
                            화
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            4
                        </p>
                        <span>
                            수
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            5
                        </p>
                        <span>
                            목
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            6
                        </p>
                        <span>
                            금
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            7
                        </p>
                        <span>
                            토
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            8
                        </p>
                        <span>
                            일
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            9
                        </p>
                        <span>
                            월
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            10
                        </p>
                        <span>
                            화
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            11
                        </p>
                        <span>
                            수
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            12
                        </p>
                        <span>
                            목
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            13
                        </p>
                        <span>
                            금
                        </span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="#">
                        <p>
                            14
                        </p>
                        <span>
                            토
                        </span>
                    </a>
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
                                        <a class="dropdown-item region-option" href="#" data-region-name="${region.regionName}">
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
                        <div class="manual_card region-${matching.teamLocation}" data-region-name="${matching.teamLocation}">
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
                                        data-bs-target="#matchingModal-${matching.id}">매칭하기
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
                                <div class="userReservation_modal_header">
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
                                                        <td>1인 : ${matching.pricePerHour} 원</td>
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
                                        <form action="/matching-apply", method="post">
                                            <input type="hidden" value="${matching.id}" name="reservationId">
                                            <button class="inquireMain_delete_btn">매칭 신청</button>
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
    })
    const manualTab = document.querySelector(".manual_tab");
    if (manualTab) {
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 'auto', // 한 슬라이드에 보여줄 갯수
            freeMode: false,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev"
            },
        });
    }

    document.addEventListener("DOMContentLoaded", function () {
        const regionOptions = document.querySelectorAll(".region-option");
        const matchingCards = document.querySelectorAll(".manual_card");
        const selectedRegionSpan = document.getElementById("selectedRegion");
        regionOptions.forEach(option => {
            option.addEventListener("click", function (e) {
                e.preventDefault();
                const selectedRegionName = this.getAttribute("data-region-name");
                const selectedTeamLocation = this.innerText;
                // 선택한 지역에 해당하는 매칭만 표시하기
                matchingCards.forEach(card => {
                    const regionName = card.getAttribute("data-region-name");
                    if (regionName === selectedRegionName || selectedRegionName === "all") {
                        card.style.display = "block";
                    } else {
                        card.style.display = "none";
                    }
                });
                // 선택한 지역명으로 드롭다운 버튼 내용 변경
                selectedRegionSpan.innerText = selectedTeamLocation;
            });
        });
    });

    // 매칭 여부에 따라 버튼 스타일 변경
    function updateButtonStyle(matchingStatus) {
        const button = document.getElementById('yourButtonId'); // 버튼의 ID를 지정해주세요.

        if (matchingStatus === '매칭완료') {
            button.classList.remove('matching_btn_style');
            button.classList.add('matched_btn_style');
            button.disabled = true; // 클릭 비활성화
        } else {
            button.classList.remove('matched_btn_style');
            button.classList.add('matching_btn_style');
            button.disabled = false; // 클릭 활성화
        }
    }

    // 매칭 상태를 가져와서 버튼 스타일 업데이트
    const matchingStatus = '매칭완료'; // 매칭 상태를 가져와야 합니다.
    updateButtonStyle(matchingStatus);



</script>


<%@ include file="../layout/footer.jsp" %>

