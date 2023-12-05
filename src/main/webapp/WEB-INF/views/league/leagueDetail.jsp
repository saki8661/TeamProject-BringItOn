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
        <ul class="nav leagueMain--dropdown">
            <li class="leagueMain--sub--link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/soccerball.png" height="15px"> 축구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain--dropdown--content">
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>
        <ul class="nav leagueMain--dropdown">
            <li class="leagueMain--sub--link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/basketballball.png" height="15px"> 농구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain--dropdown--content">
                <div class="menu_bar">
                    <li class="leagueMain--sub--link2">
                        <a href="#">
                            리그 신청
                        </a>
                    </li>
                    <li class="leagueMain--sub--link2">
                        <a href="#">
                            일정 / 결과
                        </a>
                    </li>
                    <li class="leagueMain--sub--link2">
                        <a href="#">
                            기록 / 순위
                        </a>
                    </li>
                </div>
            </ul>
        </ul>
        <ul class="nav leagueMain--dropdown">
            <li class="leagueMain--sub--link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/Futsal.png" height="15px"> 풋살&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain--dropdown--content">
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain--sub--link2">
                    <a href="#">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>

    </div>
    <hr>

    <div class="container">
        <h1>My First Bootstrap Page</h1>
        <p>This part is inside a .container class.</p>
        <p>The .container class provides a responsive fixed width container.</p>
        <p>Resize the browser window to see that the container width will change at different breakpoints.</p>
    </div>



    <%@ include file="../layout/footer.jsp" %>

