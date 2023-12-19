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
            <a href="/board-main">게시판</a>
        </li>

        <li class="main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>

<div class="frame">
    <div class="board_write">
        <div>게시판</div>
        <div class="board_write_button">
            <button type="button">
                <a href="/board-write" class="more_button">
                    글쓰기
                </a>
            </button>
        </div>
    </div>
    <c:forEach var="board" items="${boards}">
        <div class="board_list">
            <button type="button" class="more_button">
                <div class="board_layout">
                    <div class="board_item">
                        <div>
                                ${board.nickName}
                        </div>
                        <div>
                                ${board.boardTitle}
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="board_date">
                                ${board.createdAt}
                        </div>
                        <div>
                            <a href="/board-detail/${board.id}" class="more_button">
                                <img src="/images/more.png" class="inquire_toggle_image">
                            </a>
                        </div>
                    </div>
                </div>
            </button>
        </div>
    </c:forEach>
</div>

<script>

</script>


<%@ include file="../layout/footer.jsp" %>

