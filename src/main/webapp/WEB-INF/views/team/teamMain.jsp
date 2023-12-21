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
            <a href="/team-main">팀</a>
        </li>

        <li class="main_link">
            <a href="/matching-main">매칭</a>
        </li>

        <li class="main_link">
            <a href="/league-main">리그</a>
        </li>

        <li class="main_link">
            <a href="/board-main">게시판</a>
        </li>

        <li class="main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<div class="frame">
    <div class="team_main_container">
        <div class="team_main_head">
            <div class="team_main_link">
                <ul class="team_main_link_category">
                    <li>
                        <a href="#" class="team_main_recruit">
                            <img width="100" height="100"
                                 src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/100/external-football-club-soccer-flaticons-lineal-color-flat-icons.png"
                                 alt="external-football-club-soccer-flaticons-lineal-color-flat-icons"/>
                            <div>팀 모집</div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="team_main_team_write">
                            <img width="100" height="100"
                                 src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/100/external-help-soccer-flaticons-lineal-color-flat-icons.png"
                                 alt="external-help-soccer-flaticons-lineal-color-flat-icons"/>
                            <div>팀 등록</div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="team_tab_content">
                <ul class="team_tab_items">
                    <li>
                        <%@ include file="../team/teamList.jsp" %>
                    </li>
                    <li>
                        <%@ include file="teamCreate.jsp" %>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        adminTabCg[0].classList.add("team_tab_active");
        adminTab[0].classList.add("team_tab_active");
    });

    const adminTabCg = document.querySelectorAll(".team_main_link_category > li > a");
    const adminTab = document.querySelectorAll(".team_tab_items > li");

    adminTabCg.forEach((tab, index) => {
        tab.addEventListener("click", function (event) {
            const activeTab = document.querySelector(".team_main_link_category a.team_tab_active");

            if (activeTab) {
                activeTab.classList.remove("team_tab_active");
            }

            // 클릭된 탭에 'admin_tab_active' 클래스 추가
            adminTab.forEach((inner) => {
                inner.classList.remove("team_tab_active");
            });

            adminTabCg.forEach((item) => {
                item.classList.remove("team_tab_active");
            });

            adminTab[index].classList.add("team_tab_active");
            tab.classList.add("team_tab_active");

            // 기본 동작인 링크 이동을 방지
            event.preventDefault();
        });
    });

</script>
<%@ include file="../layout/footer.jsp" %>
