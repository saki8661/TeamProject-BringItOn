<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div>
    <div class="frame">
        <ul class="nav">
            <li class="main_link nav-item dropdown">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                    실내 스포츠
                </a>
                <ul class="dropdown-menu sub_navbar_style">
                    <li><a class="dropdown-item" href="#">축구</a></li>
                    <li><a class="dropdown-item" href="#">농구</a></li>
                    <li><a class="dropdown-item" href="#">풋살</a></li>
                </ul>
            </li>

            <li class="main_link nav-item dropdown">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                    야외 스포츠
                </a>
                <ul class="dropdown-menu sub_navbar_style">
                    <li><a class="dropdown-item" href="#">축구</a></li>
                    <li><a class="dropdown-item" href="#">농구</a></li>
                    <li><a class="dropdown-item" href="#">풋살</a></li>
                </ul>
            </li>

            <li class="main_link nav-item dropdown">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">매칭</a>
                <ul class="dropdown-menu sub_navbar_style">
                    <li><a class="dropdown-item" href="#">축구</a></li>
                    <li><a class="dropdown-item" href="#">농구</a></li>
                    <li><a class="dropdown-item" href="#">풋살</a></li>
                </ul>
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
                    <a href="/league-main">
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
            </ul>
        </ul>
    </div>
    <hr>

    <div style="text-align: center;">
        <div id="buttonContainer">
            <button type="button" class="btn btn-outline-success">전체</button>
            <button type="button" class="btn btn-outline-success">서울</button>
            <button type="button" class="btn btn-outline-success">경기</button>
            <button type="button" class="btn btn-outline-success">인천</button>
            <button type="button" class="btn btn-outline-success">충북</button>
            <button type="button" class="btn btn-outline-success">충남</button>
            <button type="button" class="btn btn-outline-success">전북</button>
            <button type="button" class="btn btn-outline-success">전남</button>
            <button type="button" class="btn btn-outline-success">경북</button>
            <button type="button" class="btn btn-outline-success">대구</button>
            <button type="button" class="btn btn-outline-success">울산</button>
            <button type="button" class="btn btn-outline-success">경남</button>
            <button type="button" class="btn btn-outline-success">부산</button>
            <button type="button" class="btn btn-outline-success">강원</button>
            <button type="button" class="btn btn-outline-success">제주</button>
        </div>
    </div>
    <hr>

    <div style="max-width: 600px; margin: 0 auto;">
        <div style="max-width: 500px; margin: 20px auto; text-align: left; font-weight: bold; font-size: 1.5em;">
            서울 리그
        </div>
        <table class="table">
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
</script>


<%@ include file="../layout/footer.jsp" %>
