<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
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
                <a href="#">매칭</a>
            </li>

            <li class="main_link">
                <a href="#">리그</a>
            </li>
            <li class="main_link">
                <a href="#">고객센터</a>
            </li>
        </ul>
    </div>
    <hr class="nav_hr_below"/>
    <div class="div_box"></div>
    <div class="frame">
        <div class="menu_nav_area">
            <nav class="menu_nav">
                <ul id="menu__list" class="menu__list">
                    <li class="menu__menu">축구
                        <div class="subwrapper">
                            <nav class="subnav">
                                <ul class="submenu__list">
                                    <li class="submenu__menu"><a href="/league-main">리그 신청</a></li>
                                    <li class="submenu__menu"><a href="/league-schedule">일정/결과</a></li>
                                    <li class="submenu__menu"><a href="/league-ranking">기록/순위</a></li>
                                </ul>
                            </nav>
                        </div>
                    </li>
                    <li class="menu__menu">농구
                        <div class="subwrapper">
                            <nav class="subnav">
                                <ul class="submenu__list">
                                    <li class="submenu__menu"><a href="/league-main">리그 신청</a></li>
                                    <li class="submenu__menu"><a href="/league-schedule">일정/결과</a></li>
                                    <li class="submenu__menu"><a href="/league-ranking">기록/순위</a></li>
                                </ul>
                            </nav>
                        </div>
                    </li>
                    <li class="menu__menu">풋살
                        <div class="subwrapper">
                            <nav class="subnav">
                                <ul class="submenu__list">
                                    <li class="submenu__menu"><a href="/league-main">리그 신청</a></li>
                                    <li class="submenu__menu"><a href="/league-schedule">일정/결과</a></li>
                                    <li class="submenu__menu"><a href="/league-ranking">기록/순위</a></li>
                                </ul>
                            </nav>
                        </div>
                    </li>

                </ul>
            </nav>
        </div>
        <div>
            <div id="leaguePage-area-sorting" class="leaguePage-area-sorting">
                <div class="league_slider_wrap">
                    <div class="swiper mySwiper manual_tab swiper-initialized swiper-horizontal swiper-backface-hidden">
                        <ul class="swiper-wrapper manual_category" id="swiper-wrapper-b7279aaa4b19885b"
                            aria-live="polite">
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#" class="manual_active"><span>전체</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>서울</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>경기</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>인천</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>충북</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>충남</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>전북</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>전남</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>경북</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>대구</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>울산</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>경남</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>부산</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>강원</span></a>
                            </li>
                            <li class="swiper-slide swiper-slide-active">
                                <a href="#"><span>제주</span></a>
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
            </div>
        </div>

        <div class="div_box"></div>

        <div id="calendar-container" style="max-width: 400px; margin: 0 auto;">
            <!-- FullCalendar 컨테이너 -->
            <div id="calendar"></div>
        </div>


        <div style="max-width: 800px; margin: 0 auto;">
            <div class="leagueSchedule_region">
                서울
            </div>
            <table class="table leagueSchedule_table">
                <thead class="table-success">
                <tr>
                    <th>경기 시간</th>
                    <th>경기장</th>
                    <th>Home_Team</th>
                    <th>match_status</th>
                    <th>Away_Team</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>10:00</td>
                    <td style="color: gray;">서울 스타디움</td>
                    <td>FC세환</td>
                    <td>진행</td>
                    <td>FC언약</td>
                </tr>
                <tr>
                    <td>14:00</td>
                    <td style="color: gray;">서울스타디움</td>
                    <td>FC그린</td>
                    <td>예정</td>
                    <td>FC자바</td>
                </tr>

                </tbody>
            </table>
        </div>

        <div style="max-width: 800px; margin: 0 auto;">
            <div class="leagueSchedule_region">
                경기
            </div>
            <table class="table leagueSchedule_table">
                <thead class="table-success">
                <tr>
                    <th>경기 시간</th>
                    <th>경기장</th>
                    <th>Home_Team</th>
                    <th>match_status</th>
                    <th>Away_Team</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>10:00</td>
                    <td style="color: gray;">경기종합체육시설</td>
                    <td>home_team</td>
                    <td>match_status</td>
                    <td>away_team</td>
                </tr>
                <tr>
                    <td>14:00</td>
                    <td style="color: gray;">경기종합체육시설</td>
                    <td>home_team</td>
                    <td>match_status</td>
                    <td>away_team</td>
                </tr>

                </tbody>
            </table>
        </div>

        <div style="max-width: 800px; margin: 0 auto;">
            <div class="leagueSchedule_region">
                인천
            </div>
            <table class="table leagueSchedule_table">
                <thead class="table-success">
                <tr>
                    <th>경기 시간</th>
                    <th>경기장</th>
                    <th>Home_Team</th>
                    <th>match_status</th>
                    <th>Away_Team</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>10:00</td>
                    <td style="color: gray;">송도휘트니스센터</td>
                    <td>home_team</td>
                    <td>match_status</td>
                    <td>away_team</td>
                </tr>
                <tr>
                    <td>14:00</td>
                    <td style="color: gray;">송도휘트니스센터</td>
                    <td>home_team</td>
                    <td>match_status</td>
                    <td>away_team</td>
                </tr>

                </tbody>
            </table>
        </div>


    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // 모든 버튼 요소 가져오기
            var buttons = document.querySelectorAll('#buttonContainer button');

            // 각 버튼에 클릭 이벤트 추가
            buttons.forEach(function (button) {
                button.addEventListener('click', function () {
                    // 모든 버튼에서 'btn-success' 클래스 제거
                    buttons.forEach(function (btn) {
                        btn.classList.remove('btn-success');
                        // 버튼 텍스트 색을 원래 색상으로 변경
                        btn.style.color = '';
                    });

                    // 클릭된 버튼에 'btn-success' 클래스 추가
                    button.classList.add('btn-success');
                    // 클릭된 버튼의 텍스트 색을 흰색으로 변경
                    button.style.color = '#ffffff';
                });
            });

            // 최초 진입 시 "전체" 버튼을 클릭된 상태로 설정
            var allButton = document.querySelector('#buttonContainer button:first-child');
            allButton.classList.add('btn-success');
            allButton.style.color = '#ffffff';
        });
        // 페이지 로드 후 실행할 스크립트
        document.addEventListener('DOMContentLoaded', function () {
            // FullCalendar 설정
            $('#calendar').fullCalendar({
                // 달력 이벤트 데이터 설정 (여기서는 더미 데이터를 사용하였습니다)
                events: [
                    {
                        title: '이벤트 1',
                        start: '2023-12-10'
                    },
                    {
                        title: '이벤트 2',
                        start: '2023-12-15'
                    },
                    // 추가적인 이벤트들...
                ]
            });
        });


        // 축구, 농구, 풋살 메뉴바
        const menuList = document.getElementById("menu__list");
        const leaguePageAreaSorting = document.getElementById("leaguePage-area-sorting");
        menuList.addEventListener("mouseover", function () {
            leaguePageAreaSorting.style.padding = "50px 0px 0px 0px";
        })
        menuList.addEventListener("mouseout", function () {
            leaguePageAreaSorting.style.padding = "";
        })

        // 지역 버튼 스크립트
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
