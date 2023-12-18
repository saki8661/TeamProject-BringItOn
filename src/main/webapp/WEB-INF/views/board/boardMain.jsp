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
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>

<div class="frame">
    <div class="inquire_notice">
        게시판
    </div>

    <div class="inquire_notice_list">
        <button type="button" class="more_button">
            <div class="inquire_layout">
                <div class="inquire_notice_item">
                    <div>
                        여긴 작성자 이름
                    </div>
                    <div>
                       여긴 제목
                    </div>
                </div>
                <div class="d-flex">
                    <div class="inquire_notice_date">
                       등록일
                    </div>
                    <div>
                        <a href="/board-detail/{id}" class="more_button">
                        <img src="/images/more.png" class="inquire_toggle_image">
                        </a>
                    </div>
                </div>
            </div>
        </button>
    </div>

</div>

<script>

</script>


<%@ include file="../layout/footer.jsp" %>

