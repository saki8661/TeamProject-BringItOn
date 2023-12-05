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
        <ul class="nav leagueMain_
dropdown">
            <li class="leagueMain_
sub_
link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/soccerball.png" height="15px"> 축구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_
dropdown_
content">
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>
        <ul class="nav leagueMain_
dropdown">
            <li class="leagueMain_
sub_
link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/basketballball.png" height="15px"> 농구&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_
dropdown_
content">
                <div class="menu_bar">
                    <li class="leagueMain_
sub_
link2">
                        <a href="#">
                            리그 신청
                        </a>
                    </li>
                    <li class="leagueMain_
sub_
link2">
                        <a href="#">
                            일정 / 결과
                        </a>
                    </li>
                    <li class="leagueMain_
sub_
link2">
                        <a href="#">
                            기록 / 순위
                        </a>
                    </li>
                </div>
            </ul>
        </ul>
        <ul class="nav leagueMain_
dropdown">
            <li class="leagueMain_
sub_
link1">
                <a href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="/images/Futsal.png" height="15px"> 풋살&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <ul class="nav leagueMain_
dropdown_
content">
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        리그 신청
                    </a>
                </li>
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        일정 / 결과
                    </a>
                </li>
                <li class="leagueMain_
sub_
link2">
                    <a href="#">
                        기록 / 순위
                    </a>
                </li>
            </ul>
        </ul>


    </div>
    <hr>

    <div class="leagueMain_
body">
        <div class="leagueMain_league_content">
            <img src="/images/SoccerBanner1.png">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <div class="leagueMain_league_title m-2">
                        [서울리그]
                    </div>
                    <div class="leagueMain_
league_
region m-2">
                        서울 서초구
                    </div>
                    <div class="leagueMain_
league_
stadium m-2">
                        서초대형체육관
                    </div>
                    <div class="leagueMain_
league_
status1 m-2 mb-4">
                        신청 진행전
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                            data-bs-target="#leagueModal1">
                        상세보기
                    </button>
                </div>
                <!_
 The Modal _
>
                <div class="modal" id="leagueModal1">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <!_
 Modal Header _
>
                            <div class="modal-header">
                                <h4 class="modal-title">Modal Heading</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!_
 Modal body _
>
                            <div class="modal-body" >
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!_
 Modal footer _
>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="leagueMain_
body">
        <div class="leagueMain_
league_
content">
            <img src="/images/SoccerBanner2.png">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <div class="leagueMain_
league_
title m-2">
                        [경기리그]
                    </div>
                    <div class="leagueMain_
league_
region m-2">
                        경기 성남시 분당구
                    </div>
                    <div class="leagueMain_
league_
stadium m-2">
                        성남종합체육시설
                    </div>
                    <div class="leagueMain_
league_
status2 m-2 mb-4">
                        신청 진행중
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                            data-bs-target="#leagueModal2">
                        상세보기
                    </button>
                </div>
                <!_
 The Modal _
>
                <div class="modal" id="leagueModal2">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!_
 Modal Header _
>
                            <div class="modal-header">
                                <h4 class="modal-title">Modal Heading</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!_
 Modal body _
>
                            <div class="modal-body">
                                Modal body..
                            </div>

                            <!_
 Modal footer _
>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="leagueMain_
body">
        <div class="leagueMain_
league_
content">
            <img src="/images/SoccerBanner3.png">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <div class="leagueMain_
league_
title m-2">
                        [부산리그]
                    </div>
                    <div class="leagueMain_
league_
region m-2">
                        부산 사하구
                    </div>
                    <div class="leagueMain_
league_
stadium m-2">
                        태종대환경공원
                    </div>
                    <div class="leagueMain_
league_
status2 m-2 mb-4">
                        신청 진행중
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                            data-bs-target="#leagueModal3">
                        상세보기
                    </button>
                </div>
                <!_
 The Modal _
>
                <div class="modal" id="leagueModal3">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!_
 Modal Header _
>
                            <div class="modal-header">
                                <h4 class="modal-title">Modal Heading</h4>
                                <button type="button" class="btn-close"
                                        data-bs-dismiss="modal"></button>
                            </div>

                            <!_
 Modal body _
>
                            <div class="modal-body">
                                Modal body..
                            </div>

                            <!_
 Modal footer _
>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                                    Close
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="leagueMain_
body">
        <div class="leagueMain_
league_
content">
            <img src="/images/SoccerBanner4.png">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <div class="leagueMain_
league_
title m-2">
                        [대구리그]
                    </div>
                    <div class="leagueMain_
league_
region m-2">
                        대구 달서구
                    </div>
                    <div class="leagueMain_
league_
stadium m-2">
                        달서휘트니스종합체육관
                    </div>
                    <div class="leagueMain_
league_
status3 m-2 mb-4">
                        신청 마감
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                            data-bs-target="#leagueModal4">
                        상세보기
                    </button>
                </div>
                <!_
 The Modal _
>
                <div class="modal" id="leagueModal4">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!_
 Modal Header _
>
                            <div class="modal-header">
                                <h4 class="modal-title">Modal Heading</h4>
                                <button type="button" class="btn-close"
                                        data-bs-dismiss="modal"></button>
                            </div>

                            <!_
 Modal body _
>
                            <div class="modal-body">
                                Modal body..
                            </div>

                            <!_
 Modal footer _
>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger"
                                        data-bs-dismiss="modal">Close
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <ul class="pagination main_paging">
            <li class="page-item"><a class="page-link" href="#"><</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">></a></li>
        </ul>
    </div>


    <%@ include file="../layout/footer.jsp" %>

