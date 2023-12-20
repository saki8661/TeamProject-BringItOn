<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="team_create_frame">
    <div class="team_create_container">
        <div class="team_create_title">
            팀 등록
        </div>
        <div class="team_create_main_form">
            <form action="/team-write">
                <div class="team_create_content">
                    <div class="team_create_input_box">
                        <div class="team_create_item_name">
                            팀 이름
                        </div>
                        <input type="text">
                        <div class="team_create_item_location">
                            연고지
                        </div>
                        <input type="text">
                    </div>
                    <div class="team_create_item_logo">
                        <div>엠블럼 등록</div>
                        <div class="team_logo_image">
                            <img src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/50/external-image-creativity-flaticons-lineal-color-flat-icons.png" id="teamLogoButton" class="team_create_item_logo_input" alt="">
                            <label for="teamLogoInput" >
                                <input type="file" style="display: none" id="teamLogoInput">
                            </label>
                        </div>
                    </div>
                </div>


                =====================================================================================================================================
                <div>팀 소개</div>
                <div>
                    <textarea name="" id="" cols="100" rows="10"></textarea>
                </div>
                <div>
                    여기는 체크박스
                    <input type="checkbox">
                </div>
                <div>
                    여기는 라디오(종목)
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                </div>
                <div>
                    여기는 라디오22(포지션)
                    <input type="radio">
                    <input type="radio">
                </div>
                <div>
                    여기는 라디오33(성별)
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                </div>
                <div>
                    여기는 라디오33(연령대)
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                    <input type="radio">
                </div>
                <button type="submit" style="background-color: palegreen; width: 100%; height: 50px">팀 등록 하기</button>
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
