<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/material_green.css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">


<div class="reservation_background">

    <div class="reservation_container">

        <div class="re_acception">
            <div class="re_acception_letter">
                <h3>예약 접수</h3>
            </div>
            <div class="re_choice_place">
                <div class="re_choice_letter"><h3> 선택한 공간 </h3></div>
                <hr class="reservation_line">

                <div class="re_choice_place_detail">
                    <div class="re_place_image">
                        <img src="/images/reservation_place.png">
                    </div>
                    <div class="re_choice_place_letter">
                        <div class="re_choice_place_letter_name">
                            <h3>한성 대학교</h3>
                        </div>
                        <div class="re_choice_place_letter_field">
                            <h3>포인트, 숲길 2호점</h3>
                        </div>
                        <div class="re_choice_place_letter_time">
                            <h2>낮대관(12~17시)</h2>
                        </div>
                        <div class="re_choice_place_letter_cost">
                            <h2>120,000원~/패키지[5시간]</h2>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="re_calendar">
            <div class="re_calendar_letter">
                <h3>날짜 선택</h3>
            </div>
            <hr class="reservation_line">
            <div class="re_calendar_detail">
                <table class="re_calendar_real">
                    <thead>
                    <tr>
                        <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
                        <td colspan="5">
                            <span id="calYear"></span>년
                            <span id="calMonth"></span>월
                        </td>
                        <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
                    </tr>
                    <tr>
                        <td>일</td>
                        <td>월</td>
                        <td>화</td>
                        <td>수</td>
                        <td>목</td>
                        <td>금</td>
                        <td>토</td>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="re_time_choice">
            <div class="re_choice_letter">
                이용 시간 선택
            </div>
            <hr class="reservation_line">
            <div class="re_time_choice_caution">
                <h2>대관 운영 시간 </h2>
                <img width="18" height="18" src="https://img.icons8.com/color/48/spam.png" alt="spam"/>
                <div class="re_time_choice_caution_red">
                    <h2>00:00~23:59</h2>
                </div>
            </div>
            <form>
                <p><input type="time"></p>
                <p><input type="submit" value="Submit"></p>
            </form>

            <form class="re_time_choice_radio">
                <label>
                    <input type="radio" name="time" value="time" id="radioButton">
                </label>
                <h3>180,000 / 5시간</h3>
            </form>
        </div>
        <div class="re_person_choice">
            <div class="re_choice_letter">
                인원 선택
            </div>
            <hr class="reservation_line">
            <div class="re_person_caution">
                <h2>2명 초과부터 1명당 20,000원이 추가됩니다.</h2>
                <h2>공간의 최대 인원은 6명입니다.</h2>
            </div>
            <div class="re_person_count">
                <input type='button'
                       onclick='count("minus")'
                       value='-'/>
                <div class="re_count_number" id='result'>0</div>
                <input type='button'
                       onclick='count("plus")' value='+'/>
            </div>

        </div>
        <div class="re_host_send">
            <div class="re_host_title">
                <div class="re_choice_letter">
                    호스트 전달 내용
                </div>
                <div class="re_choice_letter_blue">
                    * 개인 연락저 전달 불가
                </div>
            </div>
            <hr class="reservation_line">
            <div class="re_host_send_container">
                <textarea class="re_host_send_container_txt" name="" id=""
                          placeholder="호스트에게 전달하고 싶은 내용을 적어주세요."></textarea>
            </div>
        </div>
        <div class="re_matching_check">
            <input type="checkbox" id="matchingCheckboxTrue">
            <label for="matchingCheckboxTrue">매칭 할래요.</label>
            <input type="checkbox" id="matchingCheckboxFalse">
            <label for="matchingCheckboxFalse">매칭 안할래요.</label>
        </div>
        <div class="reservation_button">
            <button class="reservation_button_detail">
                예약하기
            </button>
        </div>
    </div>

    <script>
        window.onload = function () {
            buildCalendar();
        }    // 웹 페이지가 로드되면 buildCalendar 실행

        let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
        let today = new Date();     // 페이지를 로드한 날짜를 저장
        today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

        // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
        function buildCalendar() {

            let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
            let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

            let tbody_Calendar = document.querySelector(".re_calendar_real > tbody");
            document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
            document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

            while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
            }

            let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가

            for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
                let nowColumn = nowRow.insertCell();        // 열 추가
            }

            for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복

                let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
                nowColumn.innerText = leftPad(nowDay.getDate());      // 추가한 열에 날짜 입력


                if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
                    nowColumn.style.color = "#DC143C";
                }
                if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
                    nowColumn.style.color = "#0000CD";
                    nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
                }


                if (nowDay < today) {                       // 지난날인 경우
                    nowColumn.className = "pastDay";
                } else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우
                    nowColumn.className = "today";
                    nowColumn.onclick = function () {
                        choiceDate(this);
                    }
                } else {                                      // 미래인 경우
                    nowColumn.className = "futureDay";
                    nowColumn.onclick = function () {
                        choiceDate(this);
                    }
                }
            }
        }

        // 날짜 선택
        function choiceDate(nowColumn) {
            if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
                document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
            }
            nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
        }

        // 이전달 버튼 클릭
        function prevCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
            buildCalendar();    // 달력 다시 생성
        }

        // 다음달 버튼 클릭
        function nextCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
            buildCalendar();    // 달력 다시 생성
        }

        // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
        function leftPad(value) {
            if (value < 10) {
                value = "0" + value;
                return value;
            }
            return value;
        }

        function count(type) {
            // 결과를 표시할 element
            const resultElement = document.getElementById('result');

            // 현재 화면에 표시된 값
            let number = resultElement.innerText;

            // 더하기/빼기
            if (type === 'plus') {
                number = parseInt(number) + 1;
            } else if (type === 'minus') {
                number = parseInt(number) - 1;
            }

            // 결과 출력
            resultElement.innerText = number;
        }

        // 라디오 버튼 언체크 함수
        function uncheckRadio() {
            document.getElementById('radioButton').checked = false;
        }
    </script>
<%@ include file="../layout/footer.jsp" %>