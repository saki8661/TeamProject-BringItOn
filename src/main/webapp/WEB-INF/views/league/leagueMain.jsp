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

        <div id="leaguePage-area-sorting">
            <div class="leagueMain_body">
                <div class="leagueMain_league_content">
                    <img src="/images/SoccerBanner1.png">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div class="leagueMain_league_title m-2">
                                [서울리그]
                            </div>
                            <div class="leagueMain_league_region m-2">
                                서울 서초구
                            </div>
                            <div class="leagueMain_league_stadium m-2">
                                서초대형체육관
                            </div>
                            <div class="leagueMain_league_status1 m-2">
                                신청 진행전
                            </div>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                                    data-bs-target="#leagueModal1">
                                상세보기
                            </button>
                        </div>
                        <!-- The Modal -->
                        <div class="modal" id="leagueModal1">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="leagueMain_modal_header">
                                        <h2 style="width: 100%; text-align: center; font-weight: bold; font-size: x-large;">
                                            2024년 상반기 Bring It On리그</h2>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="leagueMain_table">
                                            <Table>
                                                <tr class="leagueMain_table_header">
                                                    <th>신청기간</th>
                                                    <td>2024-02-01<br>
                                                        ~ 2024-2-28
                                                    </td>
                                                    <th>대회기간</th>
                                                    <td>2024-03-01<br>
                                                        ~ 2024-06-30
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>모집상태</th>
                                                    <td>모집 진행전</td>
                                                    <th>리그, 지역</th>
                                                    <td>경기, 서울</td>

                                                </tr>
                                                <tr>
                                                    <th>모집현황</th>
                                                    <td>-팀/10팀</td>
                                                    <th>주최</th>
                                                    <td>Bring It On</td>
                                                </tr>
                                            </Table>
                                        </div>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="leagueMain_modal_footer">
                                        <div>
                                            <a href="#">
                                                <button>신청하기</button>
                                            </a>
                                            <a href="#">
                                                <button>취소하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="leagueMain_body">
                <div class="leagueMain_league_content">
                    <img src="/images/SoccerBanner2.png">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div class="leagueMain_league_title m-2">
                                [경기리그]
                            </div>
                            <div class="leagueMain_league_region m-2">
                                경기 성남시 분당구
                            </div>
                            <div class="leagueMain_league_stadium m-2">
                                성남종합체육시설
                            </div>
                            <div class="leagueMain_league_status2 m-2">
                                신청 진행중
                            </div>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                                    data-bs-target="#leagueModal2">
                                상세보기
                            </button>
                        </div>
                        <!--The Modal-->
                        <div class="modal" id="leagueModal2">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="leagueMain_modal_header">
                                        <h2 style="width: 100%; text-align: center; font-weight: bold; font-size: x-large;">
                                            2024년 상반기 그린정규리그</h2>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="modal_body">
                                            <div class="leagueMain_table">
                                                <Table>
                                                    <tr class="leagueMain_table_header">
                                                        <th>신청기간</th>
                                                        <td>2023-12-01<br>
                                                            ~ 2023-12-31
                                                        </td>
                                                        <th>대회기간</th>
                                                        <td>2024-01-02<br>
                                                            ~ 2024-05-31
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>모집상태</th>
                                                        <td>모집 진행중</td>
                                                        <th>리그, 지역</th>
                                                        <td>경기, 서울</td>

                                                    </tr>
                                                    <tr>
                                                        <th>모집현황</th>
                                                        <td>4팀/10팀</td>
                                                        <th>주최</th>
                                                        <td>Green</td>
                                                    </tr>
                                                </Table>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="leagueMain_modal_footer">
                                        <div>
                                            <a href="#">
                                                <button>신청하기</button>
                                            </a>
                                            <a href="#">
                                                <button>취소하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="leagueMain_body">
                <div class="leagueMain_league_content">
                    <img src="/images/SoccerBanner3.png">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div class="leagueMain_league_title m-2">
                                [부산리그]
                            </div>
                            <div class="leagueMain_league_region m-2">
                                부산 사하구
                            </div>
                            <div class="leagueMain_league_stadium m-2">
                                태종대환경공원
                            </div>
                            <div class="leagueMain_league_status2 m-2">
                                신청 진행중
                            </div>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                                    data-bs-target="#leagueModal3">
                                상세보기
                            </button>
                        </div>
                        <!--The Modal-->
                        <div class="modal" id="leagueModal3">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!--Modal Header-->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Modal Heading</h4>
                                        <button type="button" class="btn-close"
                                                data-bs-dismiss="modal"></button>
                                    </div>

                                    <!--Modal body-->
                                    <div class="modal-body">
                                        Modal body..
                                    </div>

                                    <!--Modal footer-->
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

            <div class="leagueMain_body">
                <div class="leagueMain_league_content">
                    <img src="/images/SoccerBanner4.png">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div class="leagueMain_league_title m-2">
                                [대구리그]
                            </div>
                            <div class="leagueMain_league_region m-2">
                                대구 달서구
                            </div>
                            <div class="leagueMain_league_stadium m-2">
                                달서휘트니스종합체육관
                            </div>
                            <div class="leagueMain_league_status3 m-2">
                                신청 마감
                            </div>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-success" data-bs-toggle="modal"
                                    data-bs-target="#leagueModal4">
                                상세보기
                            </button>
                        </div>
                        <!--The Modal-->
                        <div class="modal" id="leagueModal4">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header-->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Modal Heading</h4>
                                        <button type="button" class="btn-close"
                                                data-bs-dismiss="modal"></button>
                                    </div>

                                    <!--Modal body-->
                                    <div class="modal-body">
                                        Modal body..
                                    </div>

                                    <!--Modal footer-->
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
            </div>


            <ul class="pagination main_paging">
                <li class="page-item"><a class="page-link" href="#"><</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">></a></li>
            </ul>
        </div>

        <script>
            const menuList = document.getElementById("menu__list");
            const leaguePageAreaSorting = document.getElementById("leaguePage-area-sorting");
            menuList.addEventListener("mouseover", function () {
                leaguePageAreaSorting.style.padding = "50px 0px 0px 0px";
            })
            menuList.addEventListener("mouseout", function () {
                leaguePageAreaSorting.style.padding = "";
            })
        </script>


        <%@ include file="../layout/footer.jsp" %>

