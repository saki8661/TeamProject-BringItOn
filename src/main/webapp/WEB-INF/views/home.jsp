<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="layout/header.jsp" %>

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
                <a href="/league-main">리그</a>
            </li>
            <li class="main_link">
                <a href="#">고객센터</a>
            </li>
        </ul>
    </div>

    <div class="main_banner">
        <img src="/images/banner.png" style="width: 100%">
    </div>

    <div class="frame">
        <div>
            <div class="main_search_filter">
                <div class="dropdown">
                    <button class="drop_btn">
                        인기순
                    </button>
                    <div class="dropdown-content">
                        <a href="#">인기순</a>
                        <a href="#">최신순</a>
                        <a href="#">관심순</a>
                    </div>
                </div>
                <div class="main_filter">
                    <button class="filter_button">
                        <img src="/images/filter.png" width="20px" height="20px">
                    </button>
                </div>
            </div>
            <div class="container-fluid">
                <div class="main_layout">
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside1.png">
                        </div>
                        <div class="main_content_title m-2">
                            토모짐 (TOMO GYM)
                        </div>
                        <div class="main_content_category m-2">
                            [배구/농구] 실내 체육관
                        </div>
                        <div class="main_content_location m-2">
                            서울 동대문구
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside2.png">
                        </div>
                        <div class="main_content_title m-2">
                            <div>빅토리스포츠아카데미</div>
                        </div>
                        <div class="main_content_category m-2">
                            [농구/배드민턴] 실내체육관
                        </div>
                        <div class="main_content_location m-2">
                            서울 영등포구
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside3.png">
                        </div>
                        <div class="main_content_title m-2">
                            아이스포츠상암
                        </div>
                        <div class="main_content_category m-2">
                            [농구/배구/배드민턴]
                        </div>
                        <div class="main_content_location m-2">
                            경기 고양시
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside4.png">
                        </div>
                        <div class="main_content_title m-2">
                            팀리얼 컴퍼니
                        </div>
                        <div class="main_content_category m-2">
                            [강동/하남]실내농구장
                        </div>
                        <div class="main_content_location m-2">
                            경기 남양주시
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside5.png">
                        </div>
                        <div class="main_content_title m-2">
                            플레이존 스포츠센터
                        </div>
                        <div class="main_content_category m-2">
                            [강남/농구] 하프코트 대관
                        </div>
                        <div class="main_content_location m-2">
                            서울 강남구
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside1.png">
                        </div>
                        <div class="main_content_title m-2">
                            코리아 바스켓볼 아카데미
                        </div>
                        <div class="main_content_category m-2">
                            [하남/농구] 실내체육관
                        </div>
                        <div class="main_content_location m-2">
                            경기 남양주시
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside1.png">
                        </div>
                        <div class="main_content_title m-2">
                            맥스체대입시
                        </div>
                        <div class="main_content_category m-2">
                            [서초/스포츠] 중대형체육관
                        </div>
                        <div class="main_content_location m-2">
                            서울 서초구
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
                        </div>
                    </div>
                    <div>
                        <div class="inside_content">
                            <img src="/images/inside1.png">
                        </div>
                        <div class="main_content_title m-2">
                            플레이존 스포츠센터
                        </div>
                        <div class="main_content_category m-2">
                            [강남/농구] 풀코트 대관
                        </div>
                        <div class="main_content_location m-2">
                            서울시 강남구
                        </div>
                        <div class="main_content_price m-2 mb-4">
                            68,000원 ~
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
        </div>
    </div>
</div>
    <%@ include file="layout/footer.jsp" %>

