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
                    <a class="nav-link" href="#">공지사항</a>
                </li>
                <li class="inquire_tab_item">
                    <a class="nav-link" href="#">문의하기</a>
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

    <div class="inquire_notice_list">
        <button type="button" class="more_button">
            <div class="inquire_layout">
                <div class="inquire_notice_item">
                    <div>
                        중요공지
                    </div>
                    <div>
                        서버 점검 안내 (12/05)
                    </div>
                </div>
                <div class="d-flex">
                    <div class="inquire_notice_date">
                        2023-12-01
                    </div>
                    <div>
                        <img src="/images/more.png" class="inquire_toggle_image">
                    </div>
                </div>
            </div>
            <div class="inquire_notice_content cs_detail" style="display: none">
                <div class="d-flex justify-content-between px-3 pt-3 m-3">
                    <div>안녕하세요, 브링잇온입니다.
                        서버 점검으로 인해 아래의 시간 동안 서비스가 일시중지 됩니다.
                        서버 점검 시간 : 2023년 12월 07일(월) 00:00 ~ 23:59
                        이용에 불편을 드려 죄송합니다. 더욱 신뢰받는 서비스로 보답하겠습니다.
                        감사합니다.
                    </div>
                </div>
            </div>
        </button>
    </div>
    <div class="inquire_notice_list">
        <button type="button" class="more_button">
            <div class="inquire_layout">
                <div class="inquire_notice_item">
                    <div>
                        중요공지
                    </div>
                    <div>
                        서버 점검 안내 (12/05)
                    </div>
                </div>
                <div class="d-flex">
                    <div class="inquire_notice_date">
                        2023-12-01
                    </div>
                    <div>
                        <img src="/images/more.png" class="inquire_toggle_image">
                    </div>
                </div>
            </div>
            <div class="inquire_notice_content cs_detail" style="display: none">
                <div class="d-flex justify-content-between px-3 pt-3 m-3">
                    <div>안녕하세요, 브링잇온입니다.
                        서버 점검으로 인해 아래의 시간 동안 서비스가 일시중지 됩니다.
                        서버 점검 시간 : 2023년 12월 07일(월) 00:00 ~ 23:59
                        이용에 불편을 드려 죄송합니다. 더욱 신뢰받는 서비스로 보답하겠습니다.
                        감사합니다.
                    </div>
                </div>
            </div>
        </button>
    </div>
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