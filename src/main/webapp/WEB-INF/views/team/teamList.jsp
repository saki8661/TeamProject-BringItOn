<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div>
    <div class="team_filter_area">
        <select name="location" id="team_filter_location">
            <option value="myLocation">내 지역</option>
            <c:forEach var="regionList" items="${regionList}">
                <option value="${regionList.regionName}">${regionList.regionName}</option>
            </c:forEach>
        </select>
        <label for="team_filter_order"></label>
        <select name="order" id="team_filter_order">
            <option value="latest">최신순</option>
            <option value="capacity">인원순</option>
        </select>
    </div>

    <div class="team_main_content">
        <div class="team_list">
            <c:forEach var="teamItem" items="${teamList}">
                <button type="button" class="" data-bs-toggle="modal" data-bs-target="#teamDetail-${teamItem.id}">
                    <div class="team_list_item">
                        <div class="team_list_item_logo">
                            <img width="100" height="100" src="./images/${teamItem.teamPicUrl}"
                                 alt="duolingo-logo"/>
                        </div>
                        <div class="team_list_item_content">
                            <div class="team_list_item_firstLine">
                                <div class="team_list_item_name">${teamItem.teamName}</div>
                                <div class="team_list_item_capacity">
                                    <img width="15" height="15"
                                         src="https://img.icons8.com/material-two-tone/15/user.png"
                                         alt="user"/>
                                        ${teamItem.teamCapacity}
                                </div>
                            </div>
                            <div class="team_list_item_location">${teamItem.teamLocation}</div>
                            <div class="team_list_item_tag">
                                <div>${teamItem.gender}</div>
                                <div>${teamItem.sportName}</div>
                                <div>${teamItem.age}</div>
                                <div>${teamItem.position}</div>
                            </div>
                            <div class="team_list_item_spacer"></div>
                            <div class="team_list_item_etc">조회 1</div>
                        </div>
                    </div>
                </button>
            </c:forEach>
            <c:forEach var="teamDetailItem" items="${teamDetail}">
                <div class="modal " id="teamDetail-${teamDetailItem.id}">
                    <div class="modal-dialog team_detail_container">
                        <div class="modal-content team_detail_content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <div class="modal-title modal_detail_title">${teamDetailItem.teamName}</div>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <!-- 모달 바디 -->
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="team_detail_modal_logo">
                                                <img src="/images/${teamDetailItem.teamPicUrl}">
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="team_detail_modal_introduce">
                                                    ${teamDetailItem.teamIntroduce}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="team_detail_modal_content">
                                    <div class="col-md-6">
                                        <div class="team_detail_modal_location">
                                            활동 지역 : ${teamDetailItem.teamLocation}
                                        </div>
                                        <div class="team_detail_modal_sportname">
                                            활동 스포츠 : ${teamDetailItem.sportName}
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="team_detail_modal_capacity">인원
                                            : ${teamDetailItem.teamCapacity}</div>
                                        <div class="team_detail_modal_age">연령대 : ${teamDetailItem.age}</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <form action="/team-apply/${teamDetailItem.id}" method="POST">
                                    <input type="hidden" value="${teamDetailItem.userId}" name="captainUserId">
                                    <button type="submit" class="team_detail_button">
                                        지원하기
                                    </button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>