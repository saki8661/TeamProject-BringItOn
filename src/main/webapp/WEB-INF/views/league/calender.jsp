<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹 달력 표시 예제</title>
    <!-- FullCalendar Stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.css" />
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Moment.js (FullCalendar requires this) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <!-- FullCalendar Script -->
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.js"></script>
</head>
<body>

<div id="calendar-container" style="max-width: 600px; margin: 0 auto;">
    <!-- FullCalendar 컨테이너 -->
    <div id="calendar"></div>
</div>

<script>
    // 페이지 로드 후 실행할 스크립트
    document.addEventListener('DOMContentLoaded', function() {
        // FullCalendar 설정
        $('#calendar').fullCalendar({
            // 달력 이벤트 데이터 설정 (여기서는 더미 데이터를 사용하였습니다)
            events: [
                {
                    title: '이벤트 1',
                    start: '2023-12-10'
                },
                {
                    title: '이벤트 2',
                    start: '2023-12-15'
                },
                // 추가적인 이벤트들...
            ]
        });
    });
</script>

</body>
</html>
