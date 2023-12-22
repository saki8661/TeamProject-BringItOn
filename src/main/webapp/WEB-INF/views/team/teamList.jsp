<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div>
    <div class="team_filter_area">
        <select name="location" id="team_filter_location">
            <option value="myLocation">내 지역</option>
            <option value="Seoul">서울</option>
            <option value="Kyougki">경기</option>
            <option value="Pusan">부산</option>
        </select>
        <label for="team_filter_order"></label>
        <select name="order" id="team_filter_order">
            <option value="views">조회순</option>
            <option value="popularity">인기순</option>
            <option value="latest">최신순</option>
        </select>
        <label for="team_filter_category"></label>
        <select name="category" id="team_filter_category">
            <option value="soccer">축구</option>
            <option value="futsal">풋살</option>
            <option value="basketball">농구</option>
        </select>
        <label for="team_filter_position"></label>
        <select name="position" id="team_filter_position">
            <option value="fw">공격</option>
            <option value="df">수비</option>
        </select>
        <label for="team_filter_gender"></label>
        <select name="gender" id="team_filter_gender">
            <option value="all">남녀모두</option>
            <option value="man">남자</option>
            <option value="women">여자</option>
        </select>
        <label for="team_filter_age"></label>
        <select name="age" id="team_filter_age">
            <option value="teen">10대 ~ 20대</option>
            <option value="twenties">20대 ~ 30대</option>
            <option value="thirties">30대 ~ 40대</option>
            <option value="forties">40대 ~ 50대</option>
            <option value="others">50대 이상</option>
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
                                <div>남녀 모두</div>
                                <div>${teamItem.sportName}</div>
                                <div>20대~30대</div>
                                <div>올라운드</div>
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
                                        <!-- 왼쪽 컬럼 -->
                                        <div class="col-md-3">
                                                ${teamDetailItem.teamLocation}
                                        </div>
                                        <!-- 오른쪽 컬럼 -->
                                        <div class="col-md-9">
                                                ${teamDetailItem.teamIntroduce}
                                        </div>
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