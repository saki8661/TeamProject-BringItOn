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
            <a href="/matching-page">매칭</a>
        </li>

        <li class="main_link">
            <a href="/league-main">리그</a>
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
                <div>
                    <ul class="nav">
                        <li class="matching_sorting nav-item dropdown">
                            <a role="button" data-bs-toggle="dropdown" href="#">내 지역
                                <ul class="dropdown-menu sub_navbar_style">
                                    <li><a href="#">서울</a></li>
                                    <li><a href="#">경기</a></li>
                                    <li><a href="#">인천</a></li>
                                    <li><a href="#">강원</a></li>
                                    <li><a href="#">대전</a></li>
                                    <li><a href="#">충남/세종</a></li>
                                    <li><a href="#">충북</a></li>
                                    <li><a href="#">대구</a></li>
                                    <li><a href="#">경북</a></li>
                                    <li><a href="#">부산</a></li>
                                    <li><a href="#">울산</a></li>
                                    <li><a href="#">경남</a></li>
                                </ul>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="manual_card">
                    <div class="matching_list">
                        <c:forEach var="matching" items="${matchings}">
                        <div class="matching_detail">
                            <div class="manual_tit">
                                09:00
                            </div>
                            <div class="matchingPage_team_box">
                                <div class="matchingPage_team">
                                    <div>
                                        <span class="manual_tit"> < ${matching.teamName} > </span>
                                    </div>
                                    <div>
                                        <span class="manual_tit">6 vs 6 경기</span>
                                    </div>
                                </div>
                                <div class="manual_num">부산 준타스 풋살 아레나 화이트</div>
                            </div>
                        </div>
                        <button class="matching_button matching_btn_style" type="button" data-bs-toggle="modal"
                                data-bs-target="#myModal">매칭하기
                        </button>
                    </div>

                        <%--======================================MODAL================================================================--%>

                    <div class="modal" id="myModal">
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
                                                        <th>팀명</th>
                                                        <td>FC 대욱</td>
                                                        <th>진행상태</th>
                                                        <td>진행중</td>
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
                                        <a href="#">
                                            <button>매칭 신청</button>
                                        </a>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--====================================MODAL==================================================================--%>
                </div>
                <hr class="matchingPage_manual_box">
                </c:forEach>
            </li>
        </ul>
    </div>
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
</script>


<%@ include file="../layout/footer.jsp" %>

