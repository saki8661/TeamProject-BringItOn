<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="../layout/header.jsp" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/css/styles.css" rel="stylesheet">

<!-- 예약하기 화면과 레이아웃 같음 -->
<div class="reservation_background">

    <div class="reservation_container">

        <div class="re_acception">
            <div class="re_acception_letter">
                <h3>시설 등록</h3>
            </div>
            <div class="re_choice_place">
                <div class="re_choice_letter"><h3> 사업체명 </h3></div>
                <hr class="reservation_line">
                <div class="place_resistration_title">
                    <div class="place_resistration_letter">
                        <div class="re_choice_place_letter_name">
                            <h3>시설명은 변경 불가입니다.</h3>
                        </div>
                        <div class="place_resistration_name">
                            <textarea class="place_resistration_txt" style="resize: none"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="re_time_choice">
            <div class="re_choice_letter">
                <h3>간단한 소개</h3>
            </div>
            <hr class="reservation_line">
            <div class="">
                <div class="re_choice_place_letter_name">
                    <h2>욕설 및 연락처, SNS 링크를 포함한 경우, 반려될 수 있습니다.</h2>
                </div>
                <textarea class="place_resistration_txt" style="resize: none" placeholder="공간 전체를 아우르는 소개글을 작성해주세요. 예시]"
                          루프탑에서 서울의 전경을 즐길 수
                          있습니다."></textarea>
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
                <div class="place_resistration_thumbnail_caution_size">
                    <h2>- 375 x 324 이상의 정사각형 이미지 권장</h2>
                </div>
                <div class="place_resistration_thumbnail_caution_default">
                    <h2>- 등록하지 않을 경우, 디폴트 이미지가 제공됩니다.</h2>
                </div>
                <h2>- jpg,jpeg,png,bmp 이미지 파일만 등록 가능합니다.</h2>
            </div>
            <label class="place_resistration_thumbnail_label" for="customFile">이미지 등록</label>
            <div class="place_resistration_thumbnail_container">
                <input type="file" style="display: none" class="place_resistration_thumbnail_input" id="customFile"
                       name="files" multiple>
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
                 <textarea class="place_resistration_tel_number" style="resize: none"></textarea>
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
                <input type="text" class="form-control" id="placeAddress" placeholder="주소" name="placeAddress" required>
                <button type="button" class="join_address_button" id="addressSearch" onclick="findAddr()">주소 검색</button>
            </div>

        </div>
        <div class="place_resistration_rent_time_container">
            <div class="re_choice_letter">
                대관 운영 시간
            </div>
            <hr class="reservation_line">
            <div class="place_resistration_rent_time_check">
                <input type="checkbox" id="rent_time_checkBox1" name="time1">
                <label for="rent_time_checkBox1" style="padding-left: 10px">24시간 영업</label>
            </div>
            <div class="place_resistration_rent_time_menu">
                <select id="place_resistration_rent_time_dropdown1">
                    <!-- 옵션 요소로 드롭다운 항목을 추가 -->
                    <option value="option1">09:00</option>
                    <option value="option2">10:00</option>
                    <option value="option3">11:00</option>
                    <!-- 필요한 만큼 옵션을 추가할 수 있습니다. -->
                </select>
                <div class="place_resistration_rent_time_menu_letter">
                    부터
                </div>
                <select id="place_resistration_rent_time_dropdown2">
                    <!-- 옵션 요소로 드롭다운 항목을 추가 -->
                    <option value="option1">21:00</option>
                    <option value="option2">22:00</option>
                    <option value="option3">23:00</option>
                    <!-- 필요한 만큼 옵션을 추가할 수 있습니다. -->
                </select>
                <div class="place_resistration_rent_time_menu_letter">
                    까지
                </div>
            </div>
            <div class="place_resistration_rent_time_caution">
                운영시간을 변경하실 경우 상품의 시간대도 같이 변경하셔야 고객이 예약 가능합니다.
            </div>
        </div>


        <div class="re_matching_check">
            <input type="checkbox" id="matchingCheckboxTrue">
            <label for="matchingCheckboxTrue">실외 공간</label>
            <input type="checkbox" id="matchingCheckboxFalse">
            <label for="matchingCheckboxFalse">실내 공간</label>
        </div>
        <div class="reservation_button">
            <button class="reservation_button_detail">
                등록하기
            </button>
        </div>
    </div>

    <script>
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