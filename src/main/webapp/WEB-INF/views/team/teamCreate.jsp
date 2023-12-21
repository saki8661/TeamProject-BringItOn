<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="team_create_frame">
    <div class="team_create_container">
        <div class="team_create_title">
            팀 등록
        </div>
        <div class="team_create_main_form">
            <form action="/team-write" method="POST">
                <div class="team_create_content">
                    <div class="team_create_input_box">
                        <div class="team_create_item_name">
                            팀 이름
                        </div>
                        <input type="text" value="" name="teamName">
                        <div class="team_create_item_location">
                            연고지
                        </div>
                        <input type="text" value="" name="teamLocation">
                    </div>
                    <div class="team_create_item_logo">
                        <div>엠블럼 등록</div>
                        <div class="team_logo_image">
                            <img src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/50/external-image-creativity-flaticons-lineal-color-flat-icons.png"
                                 id="teamLogoButton" class="team_create_item_logo_input" alt="">
                            <label for="teamLogoInput">
                                <input type="file" style="display: none" id="teamLogoInput">
                            </label>
                        </div>
                    </div>
                </div>
                <div class="team_create_item_desc">
                    <div>팀 소개</div>
                    <textarea name="teamDescription" id="" rows="10"></textarea>
                </div>
                <select name="sportId">
                    <option value="1">축구</option>
                    <option value="2">풋살</option>
                    <option value="3">농구</option>
                </select>
                <select name="positionId">
                    <option value="1">공격</option>
                    <option value="2">수비</option>
                    <option value="3">올라운드</option>
                </select>
                <select name="genderId">
                    <option value="1">남자</option>
                    <option value="2">여자</option>
                    <option value="3">남녀모두</option>
                </select>
                <select name="ageId">
                    <option value="1">10대</option>
                    <option value="2">20대</option>
                    <option value="3">30대</option>
                    <option value="4">40대</option>
                    <option value="5">50대</option>
                </select>
                <input type="hidden" name="teamCapacity" value="1">
                <button type="submit" class="team_create_button">팀 등록 하기</button>
            </form>
        </div>
    </div>
</div>

<script>
    let profileImage = document.querySelector("#teamLogoInput");
    let imagePreview = document.querySelector("#teamLogoButton");

    profileImage.addEventListener("change", (e) => {
        let file = e.target.files[0]; // 첫 번째 파일만 처리

        if (!file || !file.type.startsWith("image/")) {
            alert("이미지를 등록해주세요");
            return;
        }

        let reader = new FileReader();

        reader.onload = function (e2) {
            // 이미지 미리보기 업데이트
            imagePreview.src = e2.target.result;
        };

        reader.readAsDataURL(file);
    });

    // document.addEventListener("#teamLogoButton")
    // function selectedTeamLogoView() {
    //     document.getElementById('teamLogoInput').click();
    // }
    //
    // function displaySelectedTeamLogo(input) {
    //     // 선택한 이미지를 이미지 태그에 표시
    //     const img = document.getElementById('teamLogoButton');
    //     console.log(img)
    //     if (input.files && input.files[0]) {
    //         const reader = new FileReader();
    //         reader.onload = function (e) {
    //
    //
    //         };
    //         reader.readAsDataURL(input.files[0]);
    //     }
    // }
</script>