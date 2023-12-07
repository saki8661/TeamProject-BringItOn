<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>


<div>
    <div class="frame">
        <ul class="nav ">
            <li class="main_link">
                <a href="#">
                    <img src="/images/basketball.png" height="32px"> 실내 스포츠
                </a>
            </li>
            <li class="main_link">
                <a href="#">
                    <img src="/images/soccer.png" height="32px"> 야외 스포츠
                </a>
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
    <hr>

    <div class="frame">
        <ul class="nav leagueMain_dropdown">
            <li class="leagueMain_sub_link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/soccerball.png" height="15px"> 축구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_dropdown_content">
                <li class="leagueMain_sub_link2">
                    <a href="#">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain_sub_link2">
                    <a href="/league-schedule">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain_sub_link2">
                    <a href="/league-ranking">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>
        <ul class="nav leagueMain_dropdown">
            <li class="leagueMain_sub_link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/basketballball.png" height="15px"> 농구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_dropdown_content">
                <div class="menu_bar">
                    <li class="leagueMain_sub_link2">
                        <a href="#">
                            리그 신청
                        </a>
                    </li>
                    <li class="leagueMain_sub_link2">
                        <a href="#">
                            일정 / 결과
                        </a>
                    </li>
                    <li class="leagueMain_sub_link2">
                        <a href="#">
                            기록 / 순위
                        </a>
                    </li>
                </div>
            </ul>
        </ul>
        <ul class="nav leagueMain_dropdown">
            <li class="leagueMain_sub_link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/Futsal.png" height="15px"> 풋살&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_dropdown_content">
                <li class="leagueMain_sub_link2">
                    <a href="/league-main">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain_sub_link2">
                    <a href="#">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain_sub_link2">
                    <a href="#">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>
    </div>
    <hr>


    <div id="calendar-container" style="max-width: 400px; margin: 0 auto;">
        <!-- FullCalendar 컨테이너 -->
        <div id="calendar"></div>
    </div>

    <script>
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
    </script>

    <%@ include file="../layout/footer.jsp" %>
