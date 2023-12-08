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

    <%--    <div id="leaguePage-area-sorting"></div>--%>
    <%--    <div class="leaguePage-area-sorting">--%>
    <%--        <div id="buttonContainer">--%>
    <%--            <button type="button" class="btn btn-outline-success">전체</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">서울</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">경기</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">인천</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">충북</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">충남</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">전북</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">전남</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">경북</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">대구</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">울산</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">경남</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">부산</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">강원</button>--%>
    <%--            <button type="button" class="btn btn-outline-success">제주</button>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <div id="leaguePage-area-sorting">
        <div class="league_slider_wrap">
            <div class="swiper mySwiper manual_tab swiper-initialized swiper-horizontal swiper-backface-hidden">
                <ul class="swiper-wrapper manual_category" id="swiper-wrapper-b7279aaa4b19885b" aria-live="polite">
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

<div style="max-width: 700px; margin: 0 auto;">
    <div class="leagueRanking_region">
        서울 리그
    </div>
    <table class="table leagueRanking_table">
        <thead class="table-success">
        <tr>
            <th>순위</th>
            <th>팀</th>
            <th>경기수</th>
            <th>승점</th>
            <th>승</th>
            <th>무</th>
            <th>패</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>FC세환</td>
            <td>8</td>
            <td>20</td>
            <td>6</td>
            <td>2</td>
            <td>0</td>
        </tr>
        <tr>
            <td>2</td>
            <td>FC언약</td>
            <td>8</td>
            <td>18</td>
            <td>5</td>
            <td>3</td>
            <td>0</td>
        </tr>
        <tr>
            <td>3</td>
            <td>FC혜림</td>
            <td>8</td>
            <td>18</td>
            <td>5</td>
            <td>3</td>
            <td>0</td>
        </tr>
        <tr>
            <td>4</td>
            <td>FC대욱</td>
            <td>8</td>
            <td>16</td>
            <td>4</td>
            <td>4</td>
            <td>0</td>
        </tr>
        <tr>
            <td>5</td>
            <td>FC감자</td>
            <td>8</td>
            <td>16</td>
            <td>4</td>
            <td>4</td>
            <td>0</td>
        </tr>
        <tr>
            <td>6</td>
            <td>FC방탄조끼</td>
            <td>8</td>
            <td>14</td>
            <td>5</td>
            <td>1</td>
            <td>2</td>
        </tr>
        <tr>
            <td>7</td>
            <td>FC애플</td>
            <td>8</td>
            <td>12</td>
            <td>3</td>
            <td>3</td>
            <td>2</td>
        </tr>
        <tr>
            <td>8</td>
            <td>FC삼성</td>
            <td>8</td>
            <td>10</td>
            <td>3</td>
            <td>1</td>
            <td>4</td>
        </tr>
        <tr>
            <td>9</td>
            <td>FC그린</td>
            <td>8</td>
            <td>8</td>
            <td>1</td>
            <td>5</td>
            <td>2</td>
        </tr>
        <tr>
            <td>10</td>
            <td>FC자바</td>
            <td>8</td>
            <td>3</td>
            <td>1</td>
            <td>0</td>
            <td>7</td>
        </tr>
        </tbody>
    </table>
</div>
<hr>
</div>

<script>

    // 축구, 농구, 풋살 메뉴바
    const menuList = document.getElementById("menu__list");
    const leaguePageAreaSorting = document.getElementById("leaguePage-area-sorting");
    menuList.addEventListener("mouseover", function () {
        leaguePageAreaSorting.style.padding = "50px 0px 0px 0px";
    })
    menuList.addEventListener("mouseout", function () {
        leaguePageAreaSorting.style.padding = "";
    })


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
