<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>

<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    // 초기 날짜를 오늘 날짜로 설정
    Calendar initialCalendar = Calendar.getInstance();

    int year = initialCalendar.get(Calendar.YEAR);
    int month = initialCalendar.get(Calendar.MONTH) + 1;  // 월은 0부터 시작하므로 1을 더해줌
%>

<div class="frame">
    <ul class="nav">
        <!-- 이전 코드 부분 -->
    </ul>
</div>
<hr class="nav_hr_below"/>
<div class="matchingPage_frame">
    <div class="frame">
        <div class="matchingPage_banner">
            <img src="/images/matching_banner.png" style="width: 100%">
        </div>
    </div>
</div>

<div class="frame">
    <div class="date-header">
        <div class="year-month">
            <%= year %>년 <%= month %>월
        </div>
    </div>
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

<style>
    .date-header {
        text-align: center;
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .year-month {
        font-size: 24px;
    }
</style>


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

        // 초기화면에서 오늘 날짜를 선택한 상태로 설정
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
                var isWeekend = isWeekendDay(date.getDay()) ? ' weekend_day' : '';
                var isSunday = date.getDay() === 0 ? ' sunday' : '';

                dateList.append('<div class="swiper-slide' + isSelected + isWeekend + '">' +
                    '<a href="#" class="swiper-slide-content" onclick="selectDate(this)">' +
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

        function isWeekendDay(day) {
            return day === 0 || day === 6; // 0: 일요일, 6: 토요일
        }

        function selectDate(element) {
            $('.manual_active').removeClass('manual_active');
            $(element).parent().addClass('manual_active');

            // 클릭한 날짜의 년, 월, 일 정보 가져오기
            var selectedYear = new Date().getFullYear(); // 오늘 날짜의 년도로 초기화
            var selectedMonth = $(element).parent().index() + 1; // index는 0부터 시작하므로 1을 더해줌

            // 해당 날짜로 년월 업데이트
            updateYearMonth(selectedYear, selectedMonth);
        }

        function updateYearMonth(selectedYear, selectedMonth) {
            // 여기에 날짜를 업데이트하는 로직을 추가하세요.
            // 예를 들어, 새로운 날짜를 계산하고 그에 맞게 화면을 업데이트할 수 있습니다.
            // 아래는 예시 코드이며, 필요에 따라 수정해주세요.

            // 예시: 새로운 날짜 계산
            var newDate = new Date(selectedYear, selectedMonth - 1, 1); // 월은 0부터 시작하므로 1을 빼줌

            // 예시: 해당 날짜로 년월 업데이트
            var newYear = newDate.getFullYear();
            var newMonth = newDate.getMonth() + 1;

            // 예시: 업데이트된 년월을 화면에 출력
            $('.year-month').text(newYear + '년 ' + newMonth + '월');
        }
    });
</script>

<%@ include file="../layout/footer.jsp" %>
