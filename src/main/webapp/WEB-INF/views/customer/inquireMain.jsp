<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>


<div class="inquire_frame">
    <div class="frame">
        <div>
            고객센터
        </div>
        <div>
            좀 더 편리게 사용하시도록 도움 드릴게요
        </div>
    </div>
</div>
<div class="inquire_tab_frame">
    <div class="frame">
        <div class="">
            <ul class="inquire_tab">
                <li class="inquire_tab_item">
                    <a class="nav-link" href="/notice-main">공지사항</a>
                </li>
                <li class="inquire_tab_item">
                    <a class="nav-link" href="/inquire-main">문의하기</a>
                </li>
                <li class="inquire_tab_item">
                    <a class="nav-link"
                       href="https://economic-asparagus-2ef.notion.site/Bring-It-On-FAQ-ed8867dc381145929c4840072b51e436?pvs=4"
                       target="_blank">자주하는 질문</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="frame">
    <div class="inquire_write">
        <div>문의하기</div>
        <div class="inquire_write_button">
            <button type="button" data-bs-toggle="modal"
                    data-bs-target="#myModal">
                문의등록
            </button>
        </div>
    </div>

    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="userReservation_modal_header">
                    <h2 style="width: 100%; text-align: center; font-weight: bold; font-size: x-large;">문의등록</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="inquire_write_form">
                        <form action="/inquire-write" method="post">
                            <div id="selectedItem">${selectedItem}</div>
                            <div class="dropdown">
                                <select class="inquireMain_dropdown_btn" name="inquireCategoryId" id="dropdown">
                                    <div class="inquireMain_dropdown_menu">
                                        <c:forEach var="category" items="${inquireCategories}">
                                            <option value="${category.id}">
                                                <div class="inquireMain_dropdown_item">
                                                        ${category.inquireCategory}
                                                </div>
                                            </option>
                                        </c:forEach>
                                    </div>
                                </select>
                                <input type="hidden" value="selectedValue">
                            </div>
                            <div>제목</div>
                            <input type="text" class="form-control" placeholder="제목을 입력하세요" name="inquireTitle">
                            <div>내용</div>
                            <textarea class="form-control" style="height: 300px" id="content"
                                      placeholder="문의 내용을 입력하세요" name="inquireContent"></textarea>

                            <div class="inquire_write_modal_footer">
                                <button type="submit">
                                    등록
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <c:forEach var="inquire" items="${inquires}">
        <div class="inquire_write_list">
            <button type="button" class="more_button">
                <div class="inquire_write_layout">
                    <div class="inquire_write_item">
                        <div>
                                ${inquire.inquireCategory}
                        </div>
                        <div>
                                ${inquire.inquireTitle}
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="inquire_write_date">
                                ${inquire.createdAt}
                        </div>
                        <div>
                            <img src="/images/more.png" class="inquire_write_toggle_image">
                        </div>
                    </div>
                </div>
                <div class="inquire_write_content write_detail" style="display: none">
                    <div class="d-flex justify-content-between px-3 pt-3 m-3">
                        <div>
                                ${inquire.inquireContent}
                        </div>
                    </div>
                </div>
            </button>


            <div class="inquire_write_list">
                <div class="inquireMain_update_delete_btn">
                    <c:choose>
                        <c:when test="${inquire.userId == sessionUser.id}">
                            <button type="button" class="inquireMain_update_btn" data-bs-toggle="modal"
                                    data-bs-target="#updateModal${inquire.id}">
                                수정하기
                            </button>
                        </c:when>
                        <c:otherwise>
                            <!-- 다른 사용자의 경우에는 다른 HTML을 넣을 수 있음 -->
                        </c:otherwise>
                    </c:choose>


                    <!-- 수정된 부분: 모달 ID를 고유하게 만들어 주세요 -->
                    <div class="modal" id="updateModal${inquire.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="userReservation_modal_header">
                                    <h2 style="width: 100%; text-align: center; font-weight: bold; font-size: x-large;">
                                        수정하기</h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="inquire_write_form">
                                        <form action="/inquire-update/${inquire.id}" method="post">
                                            <input type="hidden" name="inquireId" value="${inquire.id}">
                                            <div class="dropdown">
                                                <select class="inquireMain_dropdown_btn" name="inquireCategoryId"
                                                        id="dropdown">
                                                    <div class="inquireMain_dropdown_menu">
                                                        <c:forEach var="category" items="${inquireCategories}">
                                                            <option value="${category.id}">
                                                                <div class="inquireMain_dropdown_item">
                                                                        ${category.inquireCategory}
                                                                </div>
                                                            </option>
                                                        </c:forEach>
                                                    </div>
                                                </select>
                                                <input type="hidden" value="selectedValue">
                                            </div>
                                            <div>제목</div>
                                            <input type="text" class="form-control" placeholder="제목을 입력하세요"
                                                   name="inquireTitle" value="${inquire.inquireTitle}">
                                            <div>내용</div>
                                            <textarea class="form-control" style="height: 300px" id="content"
                                                      placeholder="문의 내용을 입력하세요"
                                                      name="inquireContent">${inquire.inquireContent}</textarea>
                                            <div class="inquire_write_modal_footer">
                                                <button type="submit">
                                                    수정
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <c:choose>
                        <c:when test="${inquire.userId == sessionUser.id}">
                            <form action="/inquire-delete/${inquire.id}" , method="get">
                                <button class="inquireMain_delete_btn">삭제하기</button>
                            </form>
                        </c:when>
                        <c:otherwise>
                            <!-- 다른 사용자의 경우에는 다른 HTML을 넣을 수 있음 -->
                        </c:otherwise>
                    </c:choose>

                </div>

            </div>


        </div>
    </c:forEach>

</div>

<script>

    document.addEventListener("DOMContentLoaded", function () {
        var moreButtons = document.querySelectorAll(".more_button");

        moreButtons.forEach(function (button) {
            button.addEventListener("click", function () {
                var csDetail = this.closest(".inquire_write_list").querySelector(".write_detail");
                csDetail.style.display = (csDetail.style.display === "none") ? "block" : "none";

                var toggleImage = this.querySelector(".inquire_write_toggle_image");
                toggleImage.src = (csDetail.style.display === "none") ? "/images/more.png" : "/images/minus.png";
            });
        });
    });

    $(document).ready(function () {
        // 드롭다운 메뉴에서 항목을 선택할 때의 이벤트 핸들러를 추가합니다.
        $('.dropdown-menu a').on('click', function () {
            // 선택한 항목의 텍스트를 가져와서 표시하는 부분을 업데이트합니다.
            $('#selectedItem').text($(this).text());
        });
    });

    document.addEventListener("DOMContentLoaded", function () {
        var dropdown = document.getElementById("dropdown");
        var selectedValueInput = document.getElementById("selectedValue");

        // 페이지 로드시 초기 선택값 설정
        selectedValueInput.value = dropdown.value;

        // 드롭다운 메뉴에서 항목을 선택할 때의 이벤트 핸들러를 추가합니다.
        dropdown.addEventListener("change", function () {
            // 선택한 항목의 값을 가져와서 input 태그의 value에 설정합니다.
            selectedValueInput.value = dropdown.value;
        });
    });

</script>

<%@ include file="../layout/footer.jsp" %>