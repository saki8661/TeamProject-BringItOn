<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>


<div class="frame">
    <ul class="nav">
        <li class="main_link nav-item dropdown">
            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">
                공간 대여
            </a>
            <ul class="dropdown-menu sub_navbar_style">
                <li><a class="dropdown-item" href="/insideSpace">실내 스포츠</a></li>
                <li><a class="dropdown-item" href="/outsideSpace">야외 스포츠</a></li>
            </ul>
        </li>

        <li class="main_link">
            <a href="/team-main">팀</a>
        </li>
        <li class="main_link">
            <a href="/matching-main">매칭</a>
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

    team_filter_order
    $('#team_filter_location').on('change', function () {
        let selectedValue = $(this).val();

        $.ajax({
            url: '/api/team-location?keyword=' + selectedValue,
            type: 'GET',
            contentType: "application/json",
            success: function (response) {
                updateTeamList(response)
                console.log('Server response:', response);
            },
            error: function (error) {

            }
        });
    });

    $('#team_filter_order').on('change', function () {
        let selectedValue = $(this).val();
        console.log(selectedValue)
        $.ajax({
            url: '/api/team-filter?orderBy=' + selectedValue,
            type: 'GET',
            contentType: "application/json",
            success: function (response) {
                updateTeamList(response)
                console.log('Server response:', response);
            },
            error: function (error) {

            }
        });
    });

    function updateTeamList(data) {
        $(".team_list").empty();
        var htmlString = "";
        data.forEach(function (teamItem) {
            htmlString += '<button type="button" class="" data-bs-toggle="modal" data-bs-target="#teamDetail-' + teamItem.id + '">' +
                '<div class="team_list_item">' +
                '<div class="team_list_item_logo">' +
                '<img width="100" height="100" src="./images/' + teamItem.teamPicUrl + '" alt="duolingo-logo"/>' +
                '</div>' +
                '<div class="team_list_item_content">' +
                '<div class="team_list_item_firstLine">' +
                '<div class="team_list_item_name">' + teamItem.teamName + '</div>' +
                '<div class="team_list_item_capacity">' +
                '<img width="15" height="15" src="https://img.icons8.com/material-two-tone/15/user.png" alt="user"/>' +
                teamItem.teamCapacity +
                '</div>' +
                '</div>' +
                '<div class="team_list_item_location">' + teamItem.teamLocation + '</div>' +
                '<div class="team_list_item_tag">' +
                '<div>' + teamItem.gender + '</div>' +
                '<div>' + teamItem.sportName + '</div>' +
                '<div>' + teamItem.age + '</div>' +
                '<div>' + teamItem.position + '</div>' +
                '</div>' +
                '<div class="team_list_item_spacer"></div>' +
                '<div class="team_list_item_etc">조회 1</div>' +
                '</div>' +
                '</div>' +
                '</button>';
        });
        $(".team_list").append(htmlString);
    }

</script>
<%@ include file="../layout/footer.jsp" %>
<div>${teamItem.gender}</div>
<div>${teamItem.sportName}</div>
<div>${teamItem.age}</div>
<div>${teamItem.position}</div>