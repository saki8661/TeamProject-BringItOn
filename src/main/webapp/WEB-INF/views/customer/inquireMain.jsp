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

    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="userReservation_modal_header">
                    <h2 style="width: 100%; text-align: center">문의등록</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="inquire_write_form">
                        <form action="/inquire-write">
                            <div>제목</div>
                            <input type="text" class="form-control" placeholder="제목을 입력하세요">
                            <div>내용</div>
                            <textarea class="form-control" style="height: 300px" id="content" placeholder="문의 내용을 입력하세요"
                                      name="content"></textarea>
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
</script>

<%@ include file="../layout/footer.jsp" %>