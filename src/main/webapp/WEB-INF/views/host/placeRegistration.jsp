<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">

<!-- 예약하기 화면과 레이아웃 같음 -->
<div class="reservation_background">

    <div class="reservation_container">
        <form action="/space/space-save" method="post" enctype="multipart/form-data">
            <div class="form_container">
                <input type="hidden" name="userId" value="${user.id}">
                <div class="re_acception">
                    <div class="re_acception_letter">
                        <h3>시설 등록</h3>
                    </div>
                    <div class="re_choice_place">
                        <div class="re_choice_letter"><h3> 시설명 </h3></div>
                        <hr class="reservation_line">
                        <div class="place_resistration_title">
                            <div class="place_resistration_letter">
                                <div class="re_choice_place_letter_name">
                                    <h3>시설명은 변경 불가입니다.</h3>
                                </div>
                                <div class="place_resistration_name">
                                    <input class="place_resistration_txt" name="spaceName" style="resize: none"
                                           placeholder="시설명을 입력해주세요.">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="re_time_choice_two">
                    <div class="re_choice_letter">
                        <h3>간단한 소개</h3>
                    </div>
                    <hr class="reservation_line">
                    <div class="">
                        <div class="re_choice_place_letter_name">
                            <h2>욕설 및 연락처, SNS 링크를 포함한 경우, 반려될 수 있습니다.</h2>
                        </div>
                        <input name="description" class="place_resistration_txt" style="resize: none"
                               placeholder="공간을 소개하는 글을 작성해주세요!">
                    </div>
                </div>
                <div class="div_box"></div>
                <div class="re_person_choice">
                    <div class="re_choice_letter">
                        인원 선택
                    </div>
                    <hr class="reservation_line">
                    <div class="re_person_caution mt-3">
                        <h2>구장을 이용할 최대 인원을 설정해주세요</h2>
                    </div>
                    <input type="hidden" name="capacity" id="personnel">
                    <div class="re_person_count" id="personnelId">
                        <input type='button'
                               onclick='count("minus")'
                               value='-'/>
                        <div class="re_count_number" id='result'>0</div>
                        <input type='button'
                               onclick='count("plus")' value='+'/>
                    </div>

                </div>

                <div class="place_resistration_thumbnail">
                    <div class="re_choice_letter">
                        대표 사진
                    </div>
                    <hr class="reservation_line">
                    <div class="place_resistration_thumbnail_caution">
                        <div class="place_resistration_thumbnail_caution_logo">
                            <h2>- 로고 혹은 사업장의 외관 사진 추천</h2>
                        </div>
                        <div class="place_resistration_thumbnail_caution_default">
                            <h2>- 등록하지 않을 경우, 디폴트 이미지가 제공됩니다.</h2>
                        </div>
                    </div>
                    <label class="place_resistration_thumbnail_label" for="customFile">이미지 등록</label>
                    <div class="place_resistration_thumbnail_container">
                        <input type="file" style="display: none" class="place_resistration_thumbnail_input"
                               id="customFile"
                               name="file" multiple>
                        <div id="preview"></div>
                    </div>

                </div>
                <div class="place_resistration_tel_container">
                    <div class="re_choice_letter">
                        전화번호
                    </div>
                    <hr class="reservation_line">
                    <div class="re_choice_place_letter_name">
                        호스트의 대표 전화번호(대표자 또는 내선번호)를 적어주세요.
                    </div>
                    <div class="place_resistration_tel_number_container">
                        <input class="place_resistration_tel_number" name="spacePhoneNumber" placeholder="01000000000">
                    </div>

                </div>
                <div class="place_resistration_tel_container">
                    <div class="re_choice_letter">
                        대관 이용 금액
                    </div>
                    <hr class="reservation_line">
                    <div class="re_choice_place_letter_name">
                        시간별 대관 금액을 입력해주세요
                    </div>
                    <div class="place_resistration_tel_number_container">
                        <input class="place_resistration_tel_number" style="resize: none" name="price"
                               placeholder="10000">
                    </div>
                </div>
                <div class="place_resistration_tel_container">
                    <div class="re_choice_letter">
                        시설 별칭
                    </div>
                    <hr class="reservation_line">
                    <div class="re_choice_place_letter_name">
                        사용자에게 불리기 쉬운 별칭을 정해주세요.
                    </div>
                    <div class="place_resistration_tel_number_container">
                        <input class="place_resistration_tel_number" style="resize: none" name="sector"
                               placeholder="사하 풋살장 -> 사풋">
                    </div>
                </div>

                <div class="place_resistration_address_container">
                    <div class="re_choice_letter">
                        주소
                    </div>
                    <hr class="reservation_line">
                    <div class="re_choice_place_letter_name">
                        - 호스트 확인을 위한 주소입니다.
                    </div>
                    <div class="re_choice_place_letter_name">
                        - 호스트 주소를 변경해도 공간 주소는 변경되지 않습니다.
                    </div>
                    <div class="place_resistration_address_search">
                        <input type="text" class="form-control" id="placeAddress" placeholder="주소" name="spaceLocation"
                               onclick="findAddr()" required>
                    </div>
                </div>
                <div class="place_resistration_rent_time_container">
                    <div class="re_choice_letter">
                        대관 운영 시간 및 종목
                    </div>
                    <hr class="reservation_line">
                    <div class="place_resistration_rent_time_menu">
                        <div style="margin-right: 5px">
                            <label for="minTime">OPEN:</label>
                            <input name="bizStartTime" type="text" id="minTime" placeholder="최소 시간 입력">
                        </div>
                        <div style="margin-right: 5px">
                            <label for="maxTime">CLOSE:</label>
                            <input name="bizEndTime" type="text" id="maxTime" placeholder="최대 시간 입력">
                        </div>
                        <select id="place_resistration_rent_time_dropdown3" name="sportId">
                            <!-- 옵션 요소로 드롭다운 항목을 추가 -->
                            <option value="1">축구</option>
                            <option value="2">농구</option>
                            <option value="3">풋살</option>
                            <!-- 필요한 만큼 옵션을 추가할 수 있습니다. -->
                        </select>
                    </div>
                    <div class="place_resistration_rent_time_caution">
                        영업시작 ~ 영업마감 시간을 설정 후 어떤 종목을 하는 시설인지 선택해주세요.
                    </div>
                </div>

                <div class="re_matching_check">
                    <div>
                        <input class="form-check-input" type="radio" name="isInside" value="true" id="companyCheck"
                               required>
                        <label class="form-check-label" for="companyCheck">실외 공간</label>
                    </div>
                    <div>
                        <input class="form-check-input" type="radio" name="isInside" value="false" id="personalCheck"
                               required>
                        <label class="form-check-label" for="personalCheck">실내 공간</label>
                    </div>
                </div>
                <div class="reservation_button">
                    <button type="submit" class="reservation_button_detail">
                        등록하기
                    </button>
                </div>
            </div>
        </form>
    </div>

    <script>

        // 최소 시간을 입력할 input 요소
        let minTimeInput = document.querySelector("#minTime");
        // 최대 시간을 입력할 input 요소
        let maxTimeInput = document.querySelector("#maxTime");

        // 최소 시간 입력을 위한 Flatpickr 초기화
        flatpickr(minTimeInput, {
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: "08:00",
            minDate: "08:00",
            maxDate: "10:00",
        });

        // 최대 시간 입력을 위한 Flatpickr 초기화
        flatpickr(maxTimeInput, {
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: "21:00",
            minDate: "21:00",
            maxDate: "23:00",
        });

        // 인원수 체크
        function count(type) {
            // 결과를 표시할 element
            const resultElement = document.getElementById('result');


            // 현재 화면에 표시된 값
            let number = parseInt(resultElement.innerText);

            // 더하기/빼기
            if (type === 'plus' && number < 50) {
                number = number + 1;

            } else if (type === 'minus' && number > 0) {
                number = number - 1;

            }

            // 결과 출력
            resultElement.innerText = number;
            console.log("number:" + number);
            document.getElementById("personnel").value = number;
        }

        // 주소 받는거
        function findAddr() {
            new daum.Postcode({
                oncomplete: function (data) {
                    var addr = '';
                    if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                    } else {
                        addr = data.jibunAddress;
                    }

                    //부모창의 주소칸에 받아온 주소를 넣는다.
                    document.getElementById("placeAddress").value = addr;
                }
            }).open();
        }

        function previewImages() {
            var fileInput = document.getElementById('customFile');
            var preview = document.getElementById('preview');

            // 파일이 선택되었는지 확인
            if (fileInput.files && fileInput.files.length > 0) {
                preview.innerHTML = ''; // 이전 콘텐츠 지우기

                for (var i = 0; i < fileInput.files.length; i++) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        var img = new Image();
                        img.src = e.target.result;

                        // 이미지가 완전히 로드된 후에만 미리보기 div에 추가
                        img.onload = function () {
                            preview.appendChild(img);
                        };
                    };

                    reader.readAsDataURL(fileInput.files[i]);
                }
            } else {
                preview.innerHTML = '';
            }
        }

        // 파일이 선택될 때마다 미리보기 업데이트
        document.getElementById('customFile').addEventListener('change', previewImages);
    </script>
<%@ include file="../layout/footer.jsp" %>