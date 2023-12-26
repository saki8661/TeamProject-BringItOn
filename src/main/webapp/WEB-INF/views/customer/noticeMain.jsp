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
    <div class="inquire_notice">
        공지사항
    </div>
    <c:forEach var="notice" items="${notices}">
        <div class="inquire_notice_list">
            <button type="button" class="more_button">
                <div class="inquire_layout">
                    <div class="inquire_notice_item">
                        <div>
                                ${notice.noticeCategory}
                        </div>
                        <div>
                                ${notice.noticeTitle}
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="inquire_notice_date">
                                ${notice.createdAt}
                        </div>
                        <div>
                            <img src="/images/more.png" class="inquire_toggle_image">
                        </div>
                    </div>
                </div>
                <div class="inquire_notice_content cs_detail" style="display: none">
                    <div class="d-flex justify-content-between px-3 pt-3 m-3">
                        <div>
                                ${notice.noticeContent}
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
                var csDetail = this.closest(".inquire_notice_list").querySelector(".cs_detail");
                csDetail.style.display = (csDetail.style.display === "none") ? "block" : "none";

                var toggleImage = this.querySelector(".inquire_toggle_image");
                toggleImage.src = (csDetail.style.display === "none") ? "/images/more.png" : "/images/minus.png";
            });
        });
    });
</script>


<%@ include file="../layout/footer.jsp" %>