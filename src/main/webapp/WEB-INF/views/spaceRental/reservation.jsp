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
    <form method="post" action="/reservation">
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
                            <img src="/images/${reservationName.spacePic}">
                        </div>
                        <div class="re_choice_place_letter">
                            <div class="re_choice_place_letter_name">
                                <h3>${reservationName.spaceName}</h3>
                            </div>
                            <div class="re_choice_place_letter_field">
                                <h3>${reservationName.spaceLocation}</h3>
                            </div>

                            <div class="re_choice_place_letter_cost">
                                <h2>시간당 : ${reservationName.price}원</h2>
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
                    <div style="width: 5px"></div>
                    <img width="18" height="18" src="https://img.icons8.com/color/48/spam.png" alt="spam"/>
                    <div class="re_time_choice_caution_red">
                        <h2>${reservationName.bizStartTime}~${reservationName.bizEndTime}</h2>
                    </div>
                </div>
                <select name="reservationTimeId" id="timeList">
                </select>


            </div>
            <div class="div_box"></div>
            <div class="re_person_choice">
                <div class="re_choice_letter">
                    인원 선택
                </div>
                <hr class="reservation_line">
                <div class="re_person_caution">
                    <h2>공간의 최대 인원은 ${reservationName.capacity}명입니다.</h2>
                </div>
                <input type="hidden" name="personnel" id="personnel">
                <div class="re_person_count" id="personnelId">
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
                    <textarea class="re_host_send_container_txt" name="toHost" id="to_host"
                              placeholder="호스트에게 전달하고 싶은 내용을 적어주세요." style="color: black"></textarea>
                </div>
            </div>
            <div class="re_matching_check">
                <input type="radio" name="matching" id="matchingCheckboxTrue" class="matchingCheckbox" value="true">
                <label for="matchingCheckboxTrue">매칭 할래요.</label>
                <input type="radio" name="matching" id="matchingCheckboxFalse" class="matchingCheckbox" value="false">
                <label for="matchingCheckboxFalse">매칭 안할래요.</label>
            </div>
            <input type="hidden" name="spaceId" value="${reservationName.spaceId}">
            <input type="hidden" name="userId" value="${sessionUser.id}">
            <input type="hidden" id="selectedDate" name="reservationDate">
            <div class="reservation_button">
                <button class="reservation_button_detail" onclick="submitReservation()" type="submit">
                    예약하기
                </button>
            </div>

        </div>
    </form>

    <script>


        // 여기에 스크립트 코드 작성
        window.onload = function () {
            console.log("자바스크립트 실행")
            buildCalendar();
        }    // 웹 페이지가 로드되면 buildCalendar 실행

        let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
        let today = new Date();     // 페이지를 로드한 날짜를 저장
        today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

        console.log("nowMonth" + nowMonth);
        console.log("today" + today);


        // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
        function buildCalendar() {

            let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
            let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날
            console.log("firstDate" + firstDate);
            console.log("lastDate" + lastDate);

            let tbody_Calendar = document.querySelector(".re_calendar_real > tbody");
            console.log("tbody_Calendar" + tbody_Calendar);
            document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
            document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

            while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
            }

            let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가
            console.log("nowRow" + nowRow);


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

            // 선택한 날짜를 변수에 저장
            var selectedDate = nowColumn.innerText;

            // form의 hidden input에 선택한 날짜 값을 할당
            document.getElementById("selectedDate").value = selectedDate;
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

        function choiceDate(nowColumn) {
            if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
                document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
            }
            nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가

            var spaceId = `${reservationName.spaceId}`; // 템플릿 리터럴로 감싸기
            var reservationDate = getSelectedDate();
            console.log(spaceId);
            console.log("showTimeChoice 호출")
            // 날짜를 선택하면 시간 선택 부분을 표시
            showTimeChoice(spaceId, reservationDate);
        }

        function showTimeChoice(spaceId, date) {

            $.ajax({
                url: '/time-list-find/' + spaceId + "/" + date,
                type: 'GET',
                success: function (response) {
                    console.log(response);
                    $(document).ready(function () {
                        updateTimeList(response);

                    });
                },
                error: function (error) {
                    console.error(error);
                }
            });

        }

        function updateTimeList(response) {
            var timeChoiceSection = document.querySelector('.re_time_choice');
            timeChoiceSection.style.display = 'block';
            console.log(response);
            let tbody = document.querySelector('.re_time_choice #timeList');
            console.log(tbody);
            tbody.innerHTML = "";
            console.log(tbody.innerHTML);
            response.forEach(function (item) {
                tbody.innerHTML += '<option value=' + item.id + '>' +
                    item.startTime + "~" + item.endTime + '</option>';
            });
        }

        function count(type) {
            // 결과를 표시할 element
            const resultElement = document.getElementById('result');

            // 현재 화면에 표시된 값
            let number = parseInt(resultElement.innerText);
            let capacity = `${reservationName.capacity}`

            // 더하기/빼기
            if (type === 'plus' && number < capacity) {
                number = number + 1;

            } else if (type === 'minus' && number > 0) {
                number = number - 1;

            }

            // 결과 출력
            resultElement.innerText = number;
            console.log("number:" + number);
            document.getElementById("personnel").value = number;
        }

        // 선택된 날짜를 가져오는 함수 (날짜 포맷: 'YYYY-MM-DD')
        function getSelectedDate() {
            const selectedDateElement = document.querySelector('.choiceDay');
            console.log("서브밋 이후 함수 : " + selectedDateElement);

            if (selectedDateElement) {
                const year = nowMonth.getFullYear();
                const month = leftPad(nowMonth.getMonth() + 1);
                const day = leftPad(selectedDateElement.innerText);

                return year + "-" + month + "-" + day;
            } else {
                return null; // 선택된 날짜가 없을 경우에 대한 처리를 추가할 수 있습니다.
            }
        }

        // submit
        function submitReservation() {
            console.log("서브밋 버튼 누름" + getSelectedDate())
            document.getElementById("selectedDate").value = getSelectedDate();// getSelectedDate는 실제로 선택된 날짜를 가져오는 함수로 변경 필요

            // form submit
            document.getElementById("reservationForm").submit();
        }

        // 라디오 버튼 언체크 함수
        function uncheckRadio() {
            document.getElementById('radioButton').checked = false;
        }

        function toggleCheckboxes(clickedCheckbox) {
            // 모든 체크박스 요소 가져오기
            const checkboxes = document.getElementsByClassName('matchingCheckbox');

            // 클릭된 체크박스의 상태 확인
            const isChecked = clickedCheckbox.checked;

            // 모든 체크박스 비활성화
            for (let i = 0; i < checkboxes.length; i++) {
                checkboxes[i].disabled = true;
            }

            // 클릭된 체크박스만 활성화
            clickedCheckbox.disabled = false;

            // 클릭된 체크박스가 체크되었을 때에만 모든 체크박스 활성화
            if (isChecked) {
                for (let i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].disabled = false;
                }
            }
        }

        // $(document).ready(function () {
        //
        //     var storeAddress = $("#store_address").data("address");
        //
        //     var storeName = $("#store_name").data("store_name");
        //
        //     var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        //
        //         mapOption = {
        //             center: new kakao.maps.LatLng(33.25110701, 126.570667), // 지도의 중심좌표
        //             level: 3 // 지도의 확대 레벨
        //         };
        //
        //     // 지도를 생성합니다
        //     var map = new kakao.maps.Map(mapContainer, mapOption);
        //
        //     // 주소-좌표 변환 객체를 생성합니다
        //     var geocoder = new kakao.maps.services.Geocoder();
        //
        //     // 주소로 좌표를 검색합니다
        //     geocoder.addressSearch(storeAddress, function (result, status) {
        //
        //         // 정상적으로 검색이 완료됐으면
        //         if (status === kakao.maps.services.Status.OK) {
        //
        //             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        //
        //             // 결과값으로 받은 위치를 마커로 표시합니다
        //             var marker = new kakao.maps.Marker({
        //                 map: map,
        //                 position: coords
        //             });
        //
        //             // 인포윈도우로 장소에 대한 설명을 표시합니다
        //             var infowindow = new kakao.maps.InfoWindow({
        //                 content: '<div style="width:150px;text-align:center;padding:3px 0;">' + storeName + '</div>'
        //             });
        //             infowindow.open(map, marker);
        //
        //             // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        //             map.setCenter(coords);
        //
        //
        //             $(".storePosition").click(function () {
        //                 map.panTo(coords);
        //             })
        //
        //
        //         }
        //
        //     });
        //
        //
        //     var userAddress = $("#delevery_address").val();
        //
        //     if (userAddress != "") {
        //         $(".userPosition").css("display", "inline");
        //
        //         // 주소로 좌표를 검색합니다
        //         geocoder.addressSearch(userAddress, function (result, status) {
        //
        //             // 정상적으로 검색이 완료됐으면
        //             if (status === kakao.maps.services.Status.OK) {
        //
        //                 coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        //
        //                 // 결과값으로 받은 위치를 마커로 표시합니다
        //                 var marker = new kakao.maps.Marker({
        //                     map: map,
        //                     position: coords
        //                 });
        //
        //                 // 인포윈도우로 장소에 대한 설명을 표시합니다
        //                 var infowindow = new kakao.maps.InfoWindow({
        //                     content: '<div style="width:150px;text-align:center;padding:3px 0;">' + "배달받을위치" + '</div>'
        //                 });
        //                 infowindow.open(map, marker);
        //
        //                 $(".userPosition").click(function () {
        //                     map.panTo(coords);
        //                 })
        //             }
        //         });
        //
        //     }
        //
        // })


    </script>
<%@ include file="../layout/footer.jsp" %>