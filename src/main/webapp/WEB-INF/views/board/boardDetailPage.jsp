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
    </div>
    <div class="d-flex justify-content-end">
        <div class="board_date">
            ${dto.createdAt}
        </div>
    </div>
    <div>
        <div class="mt-3 mb-5 board_writer">
            [${dto.nickName}]
        </div>
    </div>

    <div class="board_content_layout">
        <div class="mb-5 board_title">
            ${dto.boardTitle}
        </div>
        <hr>
        <div class="mt-5 mb-5 board_desc">
            ${dto.boardContent}
        </div>
    </div>

    <div class="d-flex justify-content-end">
        <a class="btn btn-warning me-1" href="/board-update/${dto.id}">수정</a>
        <form action="/board-delete/${dto.id}" method="get">
            <button type="submit" class="btn btn-danger">삭제</button>
        </form>
    </div>

    <div class="board_write_sub">
        <div>댓글목록</div>
    </div>

    <div class="frame_sub">
        <!-- 댓글 목록 표시 -->
        <c:if test="${not empty dto.replies}">
            <c:forEach var="reply" items="${dto.replies}">
                <div class="board_list">
                    <div class="board_layout">
                        <div class="board_commnet_item">
                            <div>
                                    ${reply.nickName}
                            </div>
                            <div>
                                    ${reply.comment}
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="board_date">
                                    ${reply.createdAt}
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${noReplies}">
            <div class="no-reply-message">댓글이 없습니다.</div>
        </c:if>

        <div class="mb-5 mt-3">
            <textarea class="mt-3 form-control" rows="2" name="text"
                      placeholder="댓글을 입력해 주세요"></textarea>
        </div>
        <div class="mt-3" style="padding-bottom: 20px;">
            <button type="button" class="btn btn-outline-success float-end">댓글쓰기</button>
        </div>
    </div>

</div>

<script>

</script>


<%@ include file="../layout/footer.jsp" %>

