<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>

<div class="frame">
    <%--    시맨틱태그--%>
    <main class="sub_page">
        <div class="slider_wrap">
            <div class="swiper mySwiper manual_tab swiper-initialized swiper-horizontal swiper-backface-hidden">
                <ul class="swiper-wrapper manual_category" id="swiper-wrapper-b7279aaa4b19885b" aria-live="polite">
                    <li class="swiper-slide swiper-slide-active">
                        <a href="#" class="">1</a>
                    </li>
                    <li class="swiper-slide swiper-slide-next">
                        <a href="#" class="manual_active">2</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">3</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">4</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">5</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">6</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">7</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">8</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">9</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">10</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">11</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">12</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">13</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="#">14</a>
                    </li>
                </ul>

                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
            <div class="swiper-button-prev">
                <div class="slider_arrow"><img src="/images/left_button.png"></div>
            </div>
            <div class="swiper-button-next">
                <div class="slider_arrow">
                    <img src="/images/right_button.png" alt="">
                </div>
            </div>
        </div>
        <ul class="manual">
            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_01.png" alt="로그인화면_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">아이디</p>
                        </div>
                        <div class="manual_txt">
                            <p>아이디는 전화번호입니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">비밀번호</p>
                        </div>
                        <div class="manual_txt">
                            <p>최초 비밀번호는 전화번호 뒤 다섯자리입니다. </p>
                            <p>ex) 010-1234-5678 ㅡ&gt; <strong>45678</strong></p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">비밀번호 찾기</p>
                        </div>
                        <div class="manual_txt">
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box manual_active">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_02.png" alt="메인화면_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">전체 메뉴 버튼</p>
                        </div>
                        <div class="manual_txt">
                            <p>버튼을 클릭하면 원하는 메뉴의 페이지로 이동이 가능합니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">점포명 (홈으로 이동)</p>
                        </div>
                        <div class="manual_txt">
                            <p>해당 점포의 이름이 보여집니다.</p>
                            <p>점포명을 클릭하면 처음 화면으로 이동합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_03.png" alt="메인화면_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">방문자/장바구니 확인</p>
                        </div>
                        <div class="manual_txt">
                            <p>최근 3개월 동안 이용한 방문자 수와 판매상품이 장바구니에 담긴 횟수가 보여집니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_23.png" alt="메인화면_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">4</span>
                            <p class="manual_tit">공지사항</p>
                        </div>
                        <div class="manual_txt">
                            <p>공지사항의 내용을 확인할 수 있습니다.</p>
                            <p><span class="manual_strong">+ 더보기</span>를 통해 공지사항의 자세한 내용을 확인할 수 있습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_04.png" alt="메인화면_03">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">5</span>
                            <p class="manual_tit">판매 상품</p>
                        </div>
                        <div class="manual_txt">
                            <p>등록한 메뉴를 확인 가능합니다.</p>
                            <p><span class="manual_strong">+ 더보기</span>를 통해 바로 메뉴 등록으로 이동합니다.</p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_05.png" alt="판매상품 관리_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">순서 변경</p>
                        </div>
                        <div class="manual_txt">
                            <p></p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">상품 등록</p>
                        </div>
                        <div class="manual_txt">
                            <p>상품 등록 버튼을 누르시면 상품을 등록하는 화면으로 이동합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_06.png" alt="판매상품 관리_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">판매 상품 수정</p>
                        </div>
                        <div class="manual_txt">
                            <p>이미 등록한 상품의 정보를 수정할 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">4</span>
                            <p class="manual_tit">품절 처리 여부</p>
                        </div>
                        <div class="manual_txt">
                            <p>품절된 상품의 품절 처리, 판매 상태 변경이 가능합니다. </p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">5</span>
                            <p class="manual_tit">원산지/가격 수정</p>
                        </div>
                        <div class="manual_txt">
                            <p>이미 등록한 상품의 원산지와 가격을 수정할 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">6</span>
                            <p class="manual_tit">세일가</p>
                        </div>
                        <div class="manual_txt">
                            <p>세일 적용 시 세일 적용가로 보여집니다. 세일가 수정, 세일의 중단을 원하시면 <span class="manual_strong">2 . 수정 버튼</span>을
                                눌러 수정페이지로 이동하시어 수정하시면 됩니다.</p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_07.png" alt="판매상품 등록_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">대표 상품 설정</p>
                        </div>
                        <div class="manual_txt">
                            <p>대표 상품 설정을 선택하시면 사진 등록이 가능해지며, 점포의 정보 제공 시 이미지와 함께 상단에 보여집니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">대표상품명 등록 <strong>(필수)</strong></p>
                        </div>
                        <div class="manual_txt">
                            <p>등록하려는 상품의 이름을 입력해주세요.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">원산지명 등록 <strong>(필수)</strong></p>
                        </div>
                        <div class="manual_txt">
                            <p>등록하려는 원산지의 이름을 입력해주세요.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">4</span>
                            <p class="manual_tit">상품의 단위와 가격 <strong>(필수)</strong></p>
                        </div>
                        <div class="manual_txt">
                            <p>판매할 상품의 기본단위와 가격을 차례대로 입력해주세요.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_08.png" alt="판매상품 등록_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">5</span>
                            <p class="manual_tit">세일 적용 (상시 세일)</p>
                        </div>
                        <div class="manual_txt">
                            <p>상품이 할인되어 판매할 가격을 입력해주세요.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">6</span>
                            <p class="manual_tit">세일 적용 (타임 세일)</p>
                        </div>
                        <div class="manual_txt">
                            <p>세일 적용 시간을 입력하여 상품이 할인되어 판매할 가격을 입력해 주세요.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_09.png" alt="판매상품 등록_03">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">7</span>
                            <p class="manual_tit">사진 등록</p>
                        </div>
                        <div class="manual_txt">
                            <p>대표 상품 설정 시 등록할 수 있도록 제공되며, 등록하시는 상품의 이미지를 선택해 주세요.</p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_17.png" alt="마이페이지_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">비밀번호 변경</p>
                        </div>
                        <div class="manual_txt">
                            <p>비밀번호를 변경할 수 있는 화면으로 이동합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_18.png" alt="마이페이지_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">가맹점 정보</p>
                        </div>
                        <div class="manual_txt">
                            <p>등록된 점포의 정보를 확인합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_19.png" alt="마이페이지_03">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">가맹점 상세 정보</p>
                        </div>
                        <div class="manual_txt">
                            <p>등록된 점포의 상세 정보를 확인합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_20.png" alt="마이페이지_04">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">4</span>
                            <p class="manual_tit">가맹점 상세 정보 수정</p>
                        </div>
                        <div class="manual_txt">
                            <p>등록된 점포의 택배, 배송, 영업 시간, 브레이크 타임 ,휴무일을 수정이 가능합니다.</p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_21.png" alt="문의하기_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">문의 등록</p>
                        </div>
                        <div class="manual_txt">
                            <p>문의 등록 버튼을 누르시면 문의 글을 등록하는 페이지로 연결됩니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_22.png" alt="문의하기_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">제목 <strong>(필수)</strong></p>
                        </div>
                        <div class="manual_txt">
                            <p>문의하실 내용의 제목을 적어주세요.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">3</span>
                            <p class="manual_tit">문의 내용</p>
                        </div>
                        <div class="manual_txt">
                            <p>문의하고 싶은 내용을 작성해주세요.</p>
                            <p>※ 자세하게 적어주시면 더 정확한 답변을 드릴 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">4</span>
                            <p class="manual_tit">사진 첨부</p>
                        </div>
                        <div class="manual_txt">
                            <p>첨부하실 사진이 있다면 파일 선택을 눌러 사진을 지정해주세요.</p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="manual_box">
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_24.png" alt="문의하기_01">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">1</span>
                            <p class="manual_tit">공지사항 제목</p>
                        </div>
                        <div class="manual_txt">
                            <p>공지사항의 제목을 누르시면 자세한 내용을 확인할 수 있습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="manual_card">
                    <div class="manual_img">
                        <img src="img/images/manual_img_25.png" alt="문의하기_02">
                    </div>
                    <div class="manual_cont">
                        <div class="manual_label">
                            <span class="manual_num">2</span>
                            <p class="manual_tit">확인 버튼</p>
                        </div>
                        <div class="manual_txt">
                            <p>확인 버튼을 누르시면 공지사항 목록으로 돌아갑니다.</p>
                        </div>
                    </div>
                </div>
            </li>


        </ul>
    </main>
</div>
<script>
    const manualCg = document.querySelectorAll(".manual_category > li > a");
    const manual = document.querySelectorAll(".manual > li");

    manualCg.forEach((tab, idex) => {
        tab.addEventListener("click", function () {
            manual.forEach((inner) => {
                inner.classList.remove("manual_active");
            })
            manualCg.forEach((item) => {
                item.classList.remove("manual_active");
            })
            manualCg[idex].classList.add("manual_active");
            manual[idex].classList.add("manual_active");

        })
    })

    const manualTab = document.querySelector(".manual_tab");
    if (manualTab) {
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 'auto', // 한 슬라이드에 보여줄 갯수
            freeMode: false,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev"
            },
        });
    }
</script>


<%@ include file="../layout/footer.jsp" %>

