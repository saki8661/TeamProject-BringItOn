<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="admin_body_frame">
    <div class="admin_user_quickMenu">
        <div>회원 관리</div>
        <ul class="admin_user_title" id="members">회원 관리
            <li class="admin_user_link">
                <div class="admin_user_infoManger">회원 정보 관리</div>
            </li>
            <li class="admin_user_link">
                <div>회원 등록 하기</div>
            </li>
        </ul>
        <ul class="admin_user_title" id="statistics">가입 통계
            <li class="admin_user_link">월별 가입 통계</li>
            <li class="admin_user_link">일별 가입 통계</li>
        </ul>
    </div>
    <div class="admin_user_container">
        <div class="admin_user_info">회원 정보 관리</div>
        <div class="admin_user_search_container">
            <div class="admin_user_search">기본 검색</div>
            <form action="/admin/user-search">
                <div class="admin_user_search_form">
                    <div class="admin_user_search_item">
                        <div class="admin_user_search_title">검색어</div>
                        <div>
                            <select name="category" id="search_type">
                                <option value="아이디">아이디</option>
                                <option value="닉네임">유저명</option>
                                <option value="이메일">이메일</option>
                                <option value="전화번호">전화번호</option>
                            </select>
                            <input type="text" value="" name="keyword" id="search_keyword">
                        </div>
                    </div>
                    <div class="admin_user_search_item">
                        <div class="admin_user_search_title">유저 구분</div>
                        <div>
                            <input type="radio" name="division" value="general" checked="checked">일반 유저
                            <input type="radio" name="division" value="host">호스트 유저
                        </div>
                    </div>
                    <button type="button" class="admin_user_search_button">검색</button>
                </div>
            </form>
        </div>
        <div class="admin_user_list">
            <p>회원 목록 보기</p>
            <div class="admin_user_totalCount">총 회원 수: ${userCount}</div>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>회원명</th>
                    <th>아이디</th>
                    <th>이메일</th>
                    <th>주소</th>
                    <th>전화번호</th>
                    <th>가입일시</th>
                    <th>포인트</th>
                </tr>
                </thead>
                <tbody id="userList">

                </tbody>
            </table>
        </div>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        var linkElements = document.querySelectorAll('.admin_user_link');
        linkElements.forEach(function (link) {
            link.style.display = 'none';
        });

        var titleElements = document.querySelectorAll('.admin_user_title');
        titleElements.forEach(function (title) {
            title.addEventListener('click', function () {
                var links = title.querySelectorAll('.admin_user_link');
                links.forEach(function (link) {
                    link.style.display = (link.style.display === 'none' || link.style.display === '') ? 'block' : 'none';
                });
            });

            var linkElements = title.querySelectorAll('.admin_user_link');
            linkElements.forEach(function (link) {
                link.addEventListener('click', function (event) {
                    event.stopPropagation();
                });
            });
        });

        $('.admin_user_infoManger').on('click', function (e) {
            e.preventDefault();
            $.ajax({
                url: '/admin/user-all',
                type: 'GET',
                contentType: 'application/json',
                success: function (response) {
                    console.log(response);
                    updateUserList(response);
                },
                error: function (error) {
                    console.error(error);
                }
            });
        });

        let selectedCategory = '아이디'; // 상위 스코프에서 변수 선언
        let updatedKeyword;  // 상위 스코프에서 변수 선언
        let selectedDivision = 'general'; // 상위 스코프에서 변수 선언

        const searchTypeSelect = document.getElementById('search_type');
        searchTypeSelect.addEventListener('change', function () {
            selectedCategory = searchTypeSelect.value;
            console.log(searchTypeSelect)
            console.log(selectedCategory)
        });

        const searchKeywordInput = document.getElementById('search_keyword');
        searchKeywordInput.addEventListener('input', function () {
            updatedKeyword = searchKeywordInput.value;
            console.log(searchKeywordInput)
            console.log(updatedKeyword)
        });

        const generalUserRadio = document.querySelector('input[name="division"][value="general"]');
        const hostUserRadio = document.querySelector('input[name="division"][value="host"]');
        generalUserRadio.addEventListener('change', handleRadioChange);
        hostUserRadio.addEventListener('change', handleRadioChange);

        function handleRadioChange() {
            selectedDivision = document.querySelector('input[name="division"]:checked').value;
            console.log(selectedDivision)
        }

        document.querySelector('.admin_user_search_button').addEventListener('click', function (e) {
            e.preventDefault();
            updateRequestData(); // requestData 업데이트
            $.ajax({
                url: '/admin/user-search',
                type: 'GET',
                contentType: 'application/json',
                data: requestData,
                success: function (response) {
                    console.log(response);
                    updateUserList(response);
                },
                error: function (error) {
                    console.error(error);
                }
            });
        });

        // requestData 업데이트 로직 함수
        function updateRequestData() {
            requestData = {
                category: selectedCategory,
                keyword: updatedKeyword,
                division: selectedDivision
            };
        }

        // 사용자 리스트 업데이트 함수
        function updateUserList(response) {
            let tbody = document.querySelector('#userList');
            tbody.innerHTML = "";
            console.log(response)
            response.forEach(function (item) {
                tbody.innerHTML += '<tr>' +
                    '<td>' + item.id + '</td>' +
                    '<td>' + item.nickName + '</td>' +
                    '<td>' + item.username + '</td>' +
                    '<td>' + item.userEmail + '</td>' +
                    '<td>' + item.userAddress + '</td>' +
                    '<td>' + item.userPhoneNumber + '</td>' +
                    '<td>' + item.createdAt + '</td>' +
                    '<td>' + (item.myPoint !== null ? item.myPoint : 0) + '</td>' +
                    '</tr>';
            });
        }
    });
</script>

