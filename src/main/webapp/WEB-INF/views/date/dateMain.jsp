<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>
<div class="frame">
    <div class="slider_wrap">
        <div class="swiper mySwiper manual_tab">
            <div class="swiper-wrapper manual_category" id="date-list" aria-live="polite">
                <!-- 선택한 날짜가 동적으로 추가될 영역 -->
            </div>
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
</div>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var mySwiper = new Swiper('.mySwiper', {
            slidesPerView: 'auto',
            spaceBetween: 15,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        var initialDates = generateDateList(new Date(), 20);
        updateSelectedDates(initialDates);

        function generateDateList(startDate, days) {
            var dateList = [];
            for (var i = 0; i < days; i++) {
                var currentDate = new Date(startDate);
                currentDate.setDate(startDate.getDate() + i);
                dateList.push(currentDate);
            }
            return dateList;
        }

        function updateSelectedDates(selectedDates) {
            var dateList = $('#date-list');
            dateList.empty();

            for (var i = 0; i < selectedDates.length; i++) {
                var date = selectedDates[i];
                var dayOfWeek = getDayOfWeek(date.getDay());

                var isSelected = isToday(date) ? ' manual_active' : '';
                dateList.append('<div class="swiper-slide' + isSelected + '">' +
                    '<a href="#">' +
                    '<p>' + date.getDate() + '</p>' +
                    '<span>' + dayOfWeek + '</span>' +
                    '</a>' +
                    '</div>');
            }

            mySwiper.update();
        }

        function getDayOfWeek(day) {
            var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
            return daysOfWeek[day];
        }

        function isToday(date) {
            var today = new Date();
            return (
                date.getDate() === today.getDate() &&
                date.getMonth() === today.getMonth() &&
                date.getFullYear() === today.getFullYear()
            );
        }
    });
</script>

<%@ include file="../layout/footer.jsp" %>
