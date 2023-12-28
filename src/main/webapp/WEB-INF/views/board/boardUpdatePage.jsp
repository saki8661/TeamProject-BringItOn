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
            <a href="/board-main">게시판</a>
        </li>
        <li class="main_link">
            <a href="/notice-main">고객센터</a>
        </li>
    </ul>
</div>
<hr class="nav_hr_below"/>

<div class="frame">
    <div class="container mt-3" style="padding-top: 50px;">
        <form action="/board-update/${boardDTO.id}" method="post">
            <div class="mb-5 mt-3">
                <input type="text" class="form-control form-control-lg mb-5" name="boardTitle" value="${boardDTO.boardTitle}">
                <!-- Summernote를 적용할 텍스트 영역 -->
                <textarea class="mt-3 form-control" rows="5" id="summernote" name="boardContent">
                    ${boardDTO.boardContent}
                </textarea>
            </div>
            <div class="mt-3" style="padding-bottom: 20px;">
                <button type="submit" class="btn btn-outline-success float-end">수정하기</button>
            </div>
        </form>
    </div>
</div>


<script>
    // Summernote를 적용할 텍스트 영역의 ID를 사용하여 Summernote를 초기화
    $(document).ready(function () {
        $('#summernote').summernote({
            height: 500, // 선택적으로 높이 설정 가능
            width: '100%'
        });
    });

</script>


<%@ include file="../layout/footer.jsp" %>

